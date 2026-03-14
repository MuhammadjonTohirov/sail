import '../entities/telegram_chat.dart';
import '../../core/utils/result.dart';

/// Telegram repository interface.
///
/// Defines Telegram chat management operations.
abstract class TelegramRepository {
  Future<Result<List<TelegramChat>>> getTelegramChats();
  Future<Result<void>> disconnectChat(String chatId);
  Future<Result<VerifyChatsResult>> verifyChats();
}
