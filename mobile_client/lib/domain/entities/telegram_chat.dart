import 'package:freezed_annotation/freezed_annotation.dart';

part 'telegram_chat.freezed.dart';

/// Telegram chat connection entity.
@freezed
abstract class TelegramChat with _$TelegramChat {
  const factory TelegramChat({
    required int id,
    required String chatId,
    String? chatTitle,
    String? chatUsername,
    String? chatPhoto,
    String? chatType,
    @Default(true) bool isActive,
  }) = _TelegramChat;
}

/// Result of verifying telegram chats.
@freezed
abstract class VerifyChatsResult with _$VerifyChatsResult {
  const factory VerifyChatsResult({
    @Default(0) int verified,
    @Default(0) int removed,
  }) = _VerifyChatsResult;
}
