import 'package:freezed_annotation/freezed_annotation.dart';

part 'telegram_dto.freezed.dart';
part 'telegram_dto.g.dart';

/// Telegram chat DTO.
@freezed
abstract class TelegramChatDto with _$TelegramChatDto {
  const factory TelegramChatDto({
    required int id,
    @JsonKey(name: 'chat_id') required String chatId,
    @JsonKey(name: 'chat_title') String? chatTitle,
    @JsonKey(name: 'chat_username') String? chatUsername,
    @JsonKey(name: 'chat_photo') String? chatPhoto,
    @JsonKey(name: 'chat_type') String? chatType,
    @JsonKey(name: 'is_active') @Default(true) bool isActive,
  }) = _TelegramChatDto;

  factory TelegramChatDto.fromJson(Map<String, dynamic> json) =>
      _$TelegramChatDtoFromJson(json);
}

/// Verify chats response DTO.
@freezed
abstract class VerifyChatsResponseDto with _$VerifyChatsResponseDto {
  const factory VerifyChatsResponseDto({
    @Default(0) int verified,
    @Default(0) int removed,
  }) = _VerifyChatsResponseDto;

  factory VerifyChatsResponseDto.fromJson(Map<String, dynamic> json) =>
      _$VerifyChatsResponseDtoFromJson(json);
}
