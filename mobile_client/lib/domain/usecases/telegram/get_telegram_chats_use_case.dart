import 'package:injectable/injectable.dart';

import '../../../core/utils/result.dart';
import '../../entities/telegram_chat.dart';
import '../../repositories/telegram_repository.dart';

@lazySingleton
class GetTelegramChatsUseCase {
  GetTelegramChatsUseCase(this._repository);
  final TelegramRepository _repository;

  Future<Result<List<TelegramChat>>> call() => _repository.getTelegramChats();
}
