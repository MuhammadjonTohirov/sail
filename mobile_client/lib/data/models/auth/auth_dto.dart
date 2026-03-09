import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_dto.freezed.dart';
part 'auth_dto.g.dart';

/// Login request payload.
@freezed
abstract class LoginRequestDto with _$LoginRequestDto {
  const factory LoginRequestDto({
    required String login,
    required String password,
  }) = _LoginRequestDto;

  factory LoginRequestDto.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestDtoFromJson(json);
}

/// Register request payload.
@freezed
abstract class RegisterRequestDto with _$RegisterRequestDto {
  const factory RegisterRequestDto({
    required String login,
    required String password,
    @JsonKey(name: 'display_name') String? displayName,
  }) = _RegisterRequestDto;

  factory RegisterRequestDto.fromJson(Map<String, dynamic> json) =>
      _$RegisterRequestDtoFromJson(json);
}

/// Register verify request payload.
@freezed
abstract class RegisterVerifyRequestDto with _$RegisterVerifyRequestDto {
  const factory RegisterVerifyRequestDto({
    required String login,
    required String code,
    required String password,
    @JsonKey(name: 'display_name') String? displayName,
  }) = _RegisterVerifyRequestDto;

  factory RegisterVerifyRequestDto.fromJson(Map<String, dynamic> json) =>
      _$RegisterVerifyRequestDtoFromJson(json);
}

/// OTP request payload.
@freezed
abstract class OtpRequestDto with _$OtpRequestDto {
  const factory OtpRequestDto({
    required String phone,
  }) = _OtpRequestDto;

  factory OtpRequestDto.fromJson(Map<String, dynamic> json) =>
      _$OtpRequestDtoFromJson(json);
}

/// OTP verify request payload.
@freezed
abstract class OtpVerifyRequestDto with _$OtpVerifyRequestDto {
  const factory OtpVerifyRequestDto({
    required String phone,
    required String code,
  }) = _OtpVerifyRequestDto;

  factory OtpVerifyRequestDto.fromJson(Map<String, dynamic> json) =>
      _$OtpVerifyRequestDtoFromJson(json);
}

/// Forgot password request payload.
@freezed
abstract class ForgotPasswordRequestDto with _$ForgotPasswordRequestDto {
  const factory ForgotPasswordRequestDto({
    required String login,
  }) = _ForgotPasswordRequestDto;

  factory ForgotPasswordRequestDto.fromJson(Map<String, dynamic> json) =>
      _$ForgotPasswordRequestDtoFromJson(json);
}

/// Reset password request payload.
@freezed
abstract class ResetPasswordRequestDto with _$ResetPasswordRequestDto {
  const factory ResetPasswordRequestDto({
    required String login,
    required String code,
    required String password,
  }) = _ResetPasswordRequestDto;

  factory ResetPasswordRequestDto.fromJson(Map<String, dynamic> json) =>
      _$ResetPasswordRequestDtoFromJson(json);
}

/// Token refresh request payload.
@freezed
abstract class TokenRefreshRequestDto with _$TokenRefreshRequestDto {
  const factory TokenRefreshRequestDto({
    required String refresh,
  }) = _TokenRefreshRequestDto;

  factory TokenRefreshRequestDto.fromJson(Map<String, dynamic> json) =>
      _$TokenRefreshRequestDtoFromJson(json);
}

/// Auth response with tokens and profile.
/// 
/// Matches response from login/register/verify endpoints.
@freezed
abstract class AuthResponseDto with _$AuthResponseDto {
  const factory AuthResponseDto({
    required String access,
    required String refresh,
    required ProfileDto profile,
  }) = _AuthResponseDto;

  factory AuthResponseDto.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseDtoFromJson(json);
}

/// Token refresh response.
@freezed
abstract class TokenRefreshResponseDto with _$TokenRefreshResponseDto {
  const factory TokenRefreshResponseDto({
    required String access,
  }) = _TokenRefreshResponseDto;

  factory TokenRefreshResponseDto.fromJson(Map<String, dynamic> json) =>
      _$TokenRefreshResponseDtoFromJson(json);
}

/// Telegram auth data payload.
@freezed
abstract class TelegramAuthDataDto with _$TelegramAuthDataDto {
  const factory TelegramAuthDataDto({
    required int id,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    String? username,
    @JsonKey(name: 'photo_url') String? photoUrl,
    @JsonKey(name: 'auth_date') required int authDate,
    required String hash,
  }) = _TelegramAuthDataDto;

  factory TelegramAuthDataDto.fromJson(Map<String, dynamic> json) =>
      _$TelegramAuthDataDtoFromJson(json);
}

/// Profile DTO matching server ProfileDTO.
/// 
/// Matches web_client/data/models/ProfileDTO.ts
@freezed
abstract class ProfileDto with _$ProfileDto {
  const factory ProfileDto({
    @JsonKey(name: 'user_id') required int userId,
    required String username,
    @JsonKey(name: 'phone_e164') required String phoneE164,
    required String email,
    @JsonKey(name: 'display_name') required String displayName,
    @JsonKey(name: 'avatar_url') String? avatarUrl,
    String? about,
    @JsonKey(name: 'location_id') int? locationId,
    @JsonKey(name: 'location_name') String? locationName,
    String? logo,
    String? banner,
    @JsonKey(name: 'telegram_id') int? telegramId,
    @JsonKey(name: 'telegram_username') String? telegramUsername,
    @JsonKey(name: 'telegram_photo_url') String? telegramPhotoUrl,
    @JsonKey(name: 'notify_new_messages') @Default(true) bool notifyNewMessages,
    @JsonKey(name: 'notify_saved_searches') @Default(true) bool notifySavedSearches,
    @JsonKey(name: 'notify_promotions') @Default(true) bool notifyPromotions,
    @JsonKey(name: 'last_active_at') String? lastActiveAt,
    @JsonKey(name: 'created_at') required String createdAt,
  }) = _ProfileDto;

  factory ProfileDto.fromJson(Map<String, dynamic> json) =>
      _$ProfileDtoFromJson(json);
}

/// Security info response.
@freezed
abstract class SecurityInfoDto with _$SecurityInfoDto {
  const factory SecurityInfoDto({
    @JsonKey(name: 'has_password') @Default(false) bool hasPassword,
    @JsonKey(name: 'has_telegram') @Default(false) bool hasTelegram,
    @JsonKey(name: 'telegram_id') int? telegramId,
    @JsonKey(name: 'telegram_username') String? telegramUsername,
  }) = _SecurityInfoDto;

  factory SecurityInfoDto.fromJson(Map<String, dynamic> json) =>
      _$SecurityInfoDtoFromJson(json);
}

/// Change password request payload.
@freezed
abstract class ChangePasswordRequestDto with _$ChangePasswordRequestDto {
  const factory ChangePasswordRequestDto({
    @JsonKey(name: 'current_password') required String currentPassword,
    @JsonKey(name: 'new_password') required String newPassword,
  }) = _ChangePasswordRequestDto;

  factory ChangePasswordRequestDto.fromJson(Map<String, dynamic> json) =>
      _$ChangePasswordRequestDtoFromJson(json);
}

/// Set password request payload (for OTP-only users).
@freezed
abstract class SetPasswordRequestDto with _$SetPasswordRequestDto {
  const factory SetPasswordRequestDto({
    @JsonKey(name: 'new_password') required String newPassword,
  }) = _SetPasswordRequestDto;

  factory SetPasswordRequestDto.fromJson(Map<String, dynamic> json) =>
      _$SetPasswordRequestDtoFromJson(json);
}

/// Delete account response.
@freezed
abstract class DeleteAccountResponseDto with _$DeleteAccountResponseDto {
  const factory DeleteAccountResponseDto({
    required String status,
    @JsonKey(name: 'user_id') required int userId,
    required String message,
  }) = _DeleteAccountResponseDto;

  factory DeleteAccountResponseDto.fromJson(Map<String, dynamic> json) =>
      _$DeleteAccountResponseDtoFromJson(json);
}
