import 'package:injectable/injectable.dart';

import '../../../core/utils/result.dart';
import '../../repositories/telegram_repository.dart';

@lazySingleton
class DisconnectTelegramChatUseCase {
  DisconnectTelegramChatUseCase(this._repository);
  final TelegramRepository _repository;

  Future<Result<void>> call(String chatId) =>
      _repository.disconnectChat(chatId);
}
