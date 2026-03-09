import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.freezed.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.checkRequested() = CheckRequested;
  const factory AuthEvent.loginRequested(String email, String password) = LoginRequested;
  const factory AuthEvent.registerRequested({
    required String email,
    required String password,
    String? displayName,
  }) = RegisterRequested;
  const factory AuthEvent.registerVerifyRequested({
    required String email,
    required String password,
    required String code,
    String? displayName,
  }) = RegisterVerifyRequested;

  const factory AuthEvent.logoutRequested() = LogoutRequested;
  const factory AuthEvent.telegramAuthRequested(Map<String, dynamic> data) = TelegramAuthRequested;
}
