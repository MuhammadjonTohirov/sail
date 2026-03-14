import 'package:injectable/injectable.dart';

import '../../../core/utils/result.dart';
import '../../entities/chat.dart';
import '../../repositories/chat_repository.dart';

@lazySingleton
class MarkReadUseCase {
  MarkReadUseCase(this._repository);
  final ChatRepository _repository;

  Future<Result<ChatThread>> call(String threadId, {String? messageId}) =>
      _repository.markAsRead(threadId, messageId: messageId);
}
