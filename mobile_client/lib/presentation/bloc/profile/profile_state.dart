import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../domain/entities/user.dart';
import '../../../../core/errors/failures.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = ProfileInitial;
  const factory ProfileState.loading() = ProfileLoading;
  const factory ProfileState.loaded({
    required UserProfile user,
    SecurityInfo? securityInfo,
  }) = ProfileLoaded;
  const factory ProfileState.saving() = ProfileSaving;
  const factory ProfileState.saved({required UserProfile user}) = ProfileSaved;
  const factory ProfileState.passwordChanged() = ProfilePasswordChanged;
  const factory ProfileState.accountDeleted() = ProfileAccountDeleted;
  const factory ProfileState.loggedOut() = ProfileLoggedOut;
  const factory ProfileState.failure(Failure failure) = ProfileFailureState;
}
