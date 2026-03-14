import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../../domain/repositories/auth_repository.dart';
import 'profile_event.dart';
import 'profile_state.dart';

export 'profile_event.dart';
export 'profile_state.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final AuthRepository _repository;

  ProfileBloc(this._repository) : super(const ProfileState.initial()) {
    on<ProfileStarted>(_onStarted);
    on<ProfileUpdateRequested>(_onUpdate);
    on<ProfileLoadSecurityInfo>(_onLoadSecurity);
    on<ProfileChangePassword>(_onChangePassword);
    on<ProfileSetPassword>(_onSetPassword);
    on<ProfileUnlinkTelegram>(_onUnlinkTelegram);
    on<ProfileDeleteAccount>(_onDeleteAccount);
    on<ProfileLogout>(_onLogout);
  }

  Future<void> _onStarted(ProfileStarted event, Emitter<ProfileState> emit) async {
    emit(const ProfileState.loading());
    final result = await _repository.getMe();
    result.fold(
      onSuccess: (user) => emit(ProfileState.loaded(user: user)),
      onFailure: (f) => emit(ProfileState.failure(f)),
    );
  }

  Future<void> _onUpdate(ProfileUpdateRequested event, Emitter<ProfileState> emit) async {
    emit(const ProfileState.saving());
    final result = await _repository.updateProfile(
      displayName: event.displayName,
      locationId: event.locationId,
    );
    result.fold(
      onSuccess: (user) {
        emit(ProfileState.saved(user: user));
        emit(ProfileState.loaded(user: user));
      },
      onFailure: (f) => emit(ProfileState.failure(f)),
    );
  }

  Future<void> _onLoadSecurity(ProfileLoadSecurityInfo event, Emitter<ProfileState> emit) async {
    final currentState = state;
    if (currentState is! ProfileLoaded) return;

    final result = await _repository.getSecurityInfo();
    result.fold(
      onSuccess: (info) => emit(currentState.copyWith(securityInfo: info)),
      onFailure: (_) {},
    );
  }

  Future<void> _onChangePassword(ProfileChangePassword event, Emitter<ProfileState> emit) async {
    emit(const ProfileState.saving());
    final result = await _repository.changePassword(event.currentPassword, event.newPassword);
    result.fold(
      onSuccess: (_) {
        emit(const ProfileState.passwordChanged());
        add(const ProfileEvent.started());
      },
      onFailure: (f) => emit(ProfileState.failure(f)),
    );
  }

  Future<void> _onSetPassword(ProfileSetPassword event, Emitter<ProfileState> emit) async {
    emit(const ProfileState.saving());
    final result = await _repository.setPassword(event.newPassword);
    result.fold(
      onSuccess: (_) {
        emit(const ProfileState.passwordChanged());
        add(const ProfileEvent.started());
      },
      onFailure: (f) => emit(ProfileState.failure(f)),
    );
  }

  Future<void> _onUnlinkTelegram(ProfileUnlinkTelegram event, Emitter<ProfileState> emit) async {
    emit(const ProfileState.saving());
    final result = await _repository.unlinkTelegram();
    result.fold(
      onSuccess: (_) => add(const ProfileEvent.started()),
      onFailure: (f) => emit(ProfileState.failure(f)),
    );
  }

  Future<void> _onDeleteAccount(ProfileDeleteAccount event, Emitter<ProfileState> emit) async {
    emit(const ProfileState.saving());
    final result = await _repository.deleteAccount();
    result.fold(
      onSuccess: (_) => emit(const ProfileState.accountDeleted()),
      onFailure: (f) => emit(ProfileState.failure(f)),
    );
  }

  Future<void> _onLogout(ProfileLogout event, Emitter<ProfileState> emit) async {
    await _repository.logout();
    emit(const ProfileState.loggedOut());
  }
}
