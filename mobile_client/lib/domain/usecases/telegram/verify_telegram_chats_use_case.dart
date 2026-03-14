import 'package:injectable/injectable.dart';

import '../../../core/utils/result.dart';
import '../../entities/telegram_chat.dart';
import '../../repositories/telegram_repository.dart';

@lazySingleton
class VerifyTelegramChatsUseCase {
  VerifyTelegramChatsUseCase(this._repository);
  final TelegramRepository _repository;

  Future<Result<VerifyChatsResult>> call() => _repository.verifyChats();
}
