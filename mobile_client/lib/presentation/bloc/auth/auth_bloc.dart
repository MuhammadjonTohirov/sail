import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import '../../../../domain/repositories/auth_repository.dart';
import 'auth_event.dart';
import 'auth_state.dart';

export 'auth_event.dart';
export 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _repository;
  final Logger _logger;

  AuthBloc(this._repository, this._logger) : super(const AuthState.initial()) {
    on<CheckRequested>(_onCheckRequested);
    on<LoginRequested>(_onLoginRequested);
    on<RegisterRequested>(_onRegisterRequested);
    on<RegisterVerifyRequested>(_onRegisterVerifyRequested);
    on<LogoutRequested>(_onLogoutRequested);
    on<TelegramAuthRequested>(_onTelegramAuthRequested);
  }

  Future<void> _onCheckRequested(
    CheckRequested event,
    Emitter<AuthState> emit,
  ) async {
    try {
      final isAuthenticated = await _repository.isAuthenticated();
      if (isAuthenticated) {
        final result = await _repository.getMe();
        result.fold(
          onSuccess: (user) => emit(AuthState.authenticated(user)),
          onFailure: (_) => emit(const AuthState.unauthenticated()),
        );
      } else {
        emit(const AuthState.unauthenticated());
      }
    } catch (e) {
      _logger.e('Auth check failed', error: e);
      emit(const AuthState.unauthenticated());
    }
  }

  Future<void> _onLoginRequested(
    LoginRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.loading());
    final result = await _repository.login(event.email, event.password);
    result.fold(
      onSuccess: (user) => emit(AuthState.authenticated(user)),
      onFailure: (failure) => emit(AuthState.failure(failure)),
    );
  }

  Future<void> _onRegisterRequested(
    RegisterRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.loading());
    final result = await _repository.register(
      event.email,
      event.password,
      displayName: event.displayName,
    );
    result.fold(
      onSuccess: (_) {
         emit(AuthState.codeSent(
           email: event.email,
           password: event.password,
           displayName: event.displayName,
         ));
      },
      onFailure: (failure) => emit(AuthState.failure(failure)),
    );
  }

  Future<void> _onRegisterVerifyRequested(
    RegisterVerifyRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.loading());
    final result = await _repository.registerVerify(
      event.email,
      event.code,
      event.password,
      displayName: event.displayName,
    );
    result.fold(
      onSuccess: (user) => emit(AuthState.authenticated(user)),
      onFailure: (failure) => emit(AuthState.failure(failure)),
    );
  }

  Future<void> _onTelegramAuthRequested(
    TelegramAuthRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.loading());
    final result = await _repository.telegramAuth(event.data);
    result.fold(
      onSuccess: (user) => emit(AuthState.authenticated(user)),
      onFailure: (failure) => emit(AuthState.failure(failure)),
    );
  }

  Future<void> _onLogoutRequested(
    LogoutRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.loading());
    await _repository.logout();
    emit(const AuthState.unauthenticated());
  }
}
