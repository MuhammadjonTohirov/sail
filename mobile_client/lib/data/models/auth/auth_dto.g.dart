// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LoginRequestDto _$LoginRequestDtoFromJson(Map<String, dynamic> json) =>
    _LoginRequestDto(
      login: json['login'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$LoginRequestDtoToJson(_LoginRequestDto instance) =>
    <String, dynamic>{'login': instance.login, 'password': instance.password};

_RegisterRequestDto _$RegisterRequestDtoFromJson(Map<String, dynamic> json) =>
    _RegisterRequestDto(
      login: json['login'] as String,
      password: json['password'] as String,
      displayName: json['display_name'] as String?,
    );

Map<String, dynamic> _$RegisterRequestDtoToJson(_RegisterRequestDto instance) =>
    <String, dynamic>{
      'login': instance.login,
      'password': instance.password,
      'display_name': instance.displayName,
    };

_RegisterVerifyRequestDto _$RegisterVerifyRequestDtoFromJson(
  Map<String, dynamic> json,
) => _RegisterVerifyRequestDto(
  login: json['login'] as String,
  code: json['code'] as String,
  password: json['password'] as String,
  displayName: json['display_name'] as String?,
);

Map<String, dynamic> _$RegisterVerifyRequestDtoToJson(
  _RegisterVerifyRequestDto instance,
) => <String, dynamic>{
  'login': instance.login,
  'code': instance.code,
  'password': instance.password,
  'display_name': instance.displayName,
};

_OtpRequestDto _$OtpRequestDtoFromJson(Map<String, dynamic> json) =>
    _OtpRequestDto(phone: json['phone'] as String);

Map<String, dynamic> _$OtpRequestDtoToJson(_OtpRequestDto instance) =>
    <String, dynamic>{'phone': instance.phone};

_OtpVerifyRequestDto _$OtpVerifyRequestDtoFromJson(Map<String, dynamic> json) =>
    _OtpVerifyRequestDto(
      phone: json['phone'] as String,
      code: json['code'] as String,
    );

Map<String, dynamic> _$OtpVerifyRequestDtoToJson(
  _OtpVerifyRequestDto instance,
) => <String, dynamic>{'phone': instance.phone, 'code': instance.code};

_ForgotPasswordRequestDto _$ForgotPasswordRequestDtoFromJson(
  Map<String, dynamic> json,
) => _ForgotPasswordRequestDto(login: json['login'] as String);

Map<String, dynamic> _$ForgotPasswordRequestDtoToJson(
  _ForgotPasswordRequestDto instance,
) => <String, dynamic>{'login': instance.login};

_ResetPasswordRequestDto _$ResetPasswordRequestDtoFromJson(
  Map<String, dynamic> json,
) => _ResetPasswordRequestDto(
  login: json['login'] as String,
  code: json['code'] as String,
  password: json['password'] as String,
);

Map<String, dynamic> _$ResetPasswordRequestDtoToJson(
  _ResetPasswordRequestDto instance,
) => <String, dynamic>{
  'login': instance.login,
  'code': instance.code,
  'password': instance.password,
};

_TokenRefreshRequestDto _$TokenRefreshRequestDtoFromJson(
  Map<String, dynamic> json,
) => _TokenRefreshRequestDto(refresh: json['refresh'] as String);

Map<String, dynamic> _$TokenRefreshRequestDtoToJson(
  _TokenRefreshRequestDto instance,
) => <String, dynamic>{'refresh': instance.refresh};

_AuthResponseDto _$AuthResponseDtoFromJson(Map<String, dynamic> json) =>
    _AuthResponseDto(
      access: json['access'] as String,
      refresh: json['refresh'] as String,
      profile: ProfileDto.fromJson(json['profile'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AuthResponseDtoToJson(_AuthResponseDto instance) =>
    <String, dynamic>{
      'access': instance.access,
      'refresh': instance.refresh,
      'profile': instance.profile,
    };

_TokenRefreshResponseDto _$TokenRefreshResponseDtoFromJson(
  Map<String, dynamic> json,
) => _TokenRefreshResponseDto(access: json['access'] as String);

Map<String, dynamic> _$TokenRefreshResponseDtoToJson(
  _TokenRefreshResponseDto instance,
) => <String, dynamic>{'access': instance.access};

_TelegramAuthDataDto _$TelegramAuthDataDtoFromJson(Map<String, dynamic> json) =>
    _TelegramAuthDataDto(
      id: (json['id'] as num).toInt(),
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      username: json['username'] as String?,
      photoUrl: json['photo_url'] as String?,
      authDate: (json['auth_date'] as num).toInt(),
      hash: json['hash'] as String,
    );

Map<String, dynamic> _$TelegramAuthDataDtoToJson(
  _TelegramAuthDataDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'first_name': instance.firstName,
  'last_name': instance.lastName,
  'username': instance.username,
  'photo_url': instance.photoUrl,
  'auth_date': instance.authDate,
  'hash': instance.hash,
};

_ProfileDto _$ProfileDtoFromJson(Map<String, dynamic> json) => _ProfileDto(
  userId: (json['user_id'] as num).toInt(),
  username: json['username'] as String,
  phoneE164: json['phone_e164'] as String,
  email: json['email'] as String,
  displayName: json['display_name'] as String,
  avatarUrl: json['avatar_url'] as String?,
  about: json['about'] as String?,
  locationId: (json['location_id'] as num?)?.toInt(),
  locationName: json['location_name'] as String?,
  logo: json['logo'] as String?,
  banner: json['banner'] as String?,
  telegramId: (json['telegram_id'] as num?)?.toInt(),
  telegramUsername: json['telegram_username'] as String?,
  telegramPhotoUrl: json['telegram_photo_url'] as String?,
  notifyNewMessages: json['notify_new_messages'] as bool? ?? true,
  notifySavedSearches: json['notify_saved_searches'] as bool? ?? true,
  notifyPromotions: json['notify_promotions'] as bool? ?? true,
  lastActiveAt: json['last_active_at'] as String?,
  createdAt: json['created_at'] as String,
);

Map<String, dynamic> _$ProfileDtoToJson(_ProfileDto instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'username': instance.username,
      'phone_e164': instance.phoneE164,
      'email': instance.email,
      'display_name': instance.displayName,
      'avatar_url': instance.avatarUrl,
      'about': instance.about,
      'location_id': instance.locationId,
      'location_name': instance.locationName,
      'logo': instance.logo,
      'banner': instance.banner,
      'telegram_id': instance.telegramId,
      'telegram_username': instance.telegramUsername,
      'telegram_photo_url': instance.telegramPhotoUrl,
      'notify_new_messages': instance.notifyNewMessages,
      'notify_saved_searches': instance.notifySavedSearches,
      'notify_promotions': instance.notifyPromotions,
      'last_active_at': instance.lastActiveAt,
      'created_at': instance.createdAt,
    };

_SecurityInfoDto _$SecurityInfoDtoFromJson(Map<String, dynamic> json) =>
    _SecurityInfoDto(
      hasPassword: json['has_password'] as bool? ?? false,
      hasTelegram: json['has_telegram'] as bool? ?? false,
      telegramId: (json['telegram_id'] as num?)?.toInt(),
      telegramUsername: json['telegram_username'] as String?,
    );

Map<String, dynamic> _$SecurityInfoDtoToJson(_SecurityInfoDto instance) =>
    <String, dynamic>{
      'has_password': instance.hasPassword,
      'has_telegram': instance.hasTelegram,
      'telegram_id': instance.telegramId,
      'telegram_username': instance.telegramUsername,
    };

_ChangePasswordRequestDto _$ChangePasswordRequestDtoFromJson(
  Map<String, dynamic> json,
) => _ChangePasswordRequestDto(
  currentPassword: json['current_password'] as String,
  newPassword: json['new_password'] as String,
);

Map<String, dynamic> _$ChangePasswordRequestDtoToJson(
  _ChangePasswordRequestDto instance,
) => <String, dynamic>{
  'current_password': instance.currentPassword,
  'new_password': instance.newPassword,
};

_SetPasswordRequestDto _$SetPasswordRequestDtoFromJson(
  Map<String, dynamic> json,
) => _SetPasswordRequestDto(newPassword: json['new_password'] as String);

Map<String, dynamic> _$SetPasswordRequestDtoToJson(
  _SetPasswordRequestDto instance,
) => <String, dynamic>{'new_password': instance.newPassword};

_DeleteAccountResponseDto _$DeleteAccountResponseDtoFromJson(
  Map<String, dynamic> json,
) => _DeleteAccountResponseDto(
  status: json['status'] as String,
  userId: (json['user_id'] as num).toInt(),
  message: json['message'] as String,
);

Map<String, dynamic> _$DeleteAccountResponseDtoToJson(
  _DeleteAccountResponseDto instance,
) => <String, dynamic>{
  'status': instance.status,
  'user_id': instance.userId,
  'message': instance.message,
};
