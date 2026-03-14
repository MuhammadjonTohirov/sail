// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'telegram_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TelegramChatDto _$TelegramChatDtoFromJson(Map<String, dynamic> json) =>
    _TelegramChatDto(
      id: (json['id'] as num).toInt(),
      chatId: json['chat_id'] as String,
      chatTitle: json['chat_title'] as String?,
      chatUsername: json['chat_username'] as String?,
      chatPhoto: json['chat_photo'] as String?,
      chatType: json['chat_type'] as String?,
      isActive: json['is_active'] as bool? ?? true,
    );

Map<String, dynamic> _$TelegramChatDtoToJson(_TelegramChatDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'chat_id': instance.chatId,
      'chat_title': instance.chatTitle,
      'chat_username': instance.chatUsername,
      'chat_photo': instance.chatPhoto,
      'chat_type': instance.chatType,
      'is_active': instance.isActive,
    };

_VerifyChatsResponseDto _$VerifyChatsResponseDtoFromJson(
  Map<String, dynamic> json,
) => _VerifyChatsResponseDto(
  verified: (json['verified'] as num?)?.toInt() ?? 0,
  removed: (json['removed'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$VerifyChatsResponseDtoToJson(
  _VerifyChatsResponseDto instance,
) => <String, dynamic>{
  'verified': instance.verified,
  'removed': instance.removed,
};
