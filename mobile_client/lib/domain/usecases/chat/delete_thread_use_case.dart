import 'package:injectable/injectable.dart';

import '../../../core/utils/result.dart';
import '../../repositories/chat_repository.dart';

@lazySingleton
class DeleteThreadUseCase {
  DeleteThreadUseCase(this._repository);
  final ChatRepository _repository;

  Future<Result<void>> call(String threadId) =>
      _repository.deleteThread(threadId);
}
