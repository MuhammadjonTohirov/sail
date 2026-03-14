import 'package:injectable/injectable.dart';

import '../../../core/utils/result.dart';
import '../../entities/chat.dart';
import '../../repositories/chat_repository.dart';

@lazySingleton
class ListMessagesUseCase {
  ListMessagesUseCase(this._repository);
  final ChatRepository _repository;

  Future<Result<ChatMessagePage>> call(
    String threadId, {
    String? before,
    String? after,
    int? limit,
  }) =>
      _repository.listMessages(
        threadId,
        before: before,
        after: after,
        limit: limit,
      );
}
