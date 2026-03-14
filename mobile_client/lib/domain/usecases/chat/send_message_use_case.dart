import 'package:injectable/injectable.dart';

import '../../../core/utils/result.dart';
import '../../entities/chat.dart';
import '../../repositories/chat_repository.dart';

@lazySingleton
class SendMessageUseCase {
  SendMessageUseCase(this._repository);
  final ChatRepository _repository;

  Future<Result<ChatMessage>> call(String threadId, SendMessageInput input) =>
      _repository.sendMessage(threadId, input);
}
