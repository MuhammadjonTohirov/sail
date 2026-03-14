import 'package:injectable/injectable.dart';

import '../../../core/utils/result.dart';
import '../../entities/chat.dart';
import '../../repositories/chat_repository.dart';

@lazySingleton
class GetThreadUseCase {
  GetThreadUseCase(this._repository);
  final ChatRepository _repository;

  Future<Result<ChatThread>> call(String threadId) =>
      _repository.getThread(threadId);
}
