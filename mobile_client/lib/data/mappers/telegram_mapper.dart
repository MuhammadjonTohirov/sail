import '../../domain/entities/telegram_chat.dart';
import '../models/telegram/telegram_dto.dart';

extension TelegramChatDtoMapper on TelegramChatDto {
  TelegramChat toEntity() {
    return TelegramChat(
      id: id,
      chatId: chatId,
      chatTitle: chatTitle,
      chatUsername: chatUsername,
      chatPhoto: chatPhoto,
      chatType: chatType,
      isActive: isActive,
    );
  }
}

extension VerifyChatsResponseDtoMapper on VerifyChatsResponseDto {
  VerifyChatsResult toEntity() {
    return VerifyChatsResult(
      verified: verified,
      removed: removed,
    );
  }
}
