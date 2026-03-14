import 'package:injectable/injectable.dart';

import '../../../core/utils/result.dart';
import '../../entities/chat.dart';
import '../../repositories/chat_repository.dart';

@lazySingleton
class CreateThreadUseCase {
  CreateThreadUseCase(this._repository);
  final ChatRepository _repository;

  Future<Result<ChatThread>> call(CreateThreadInput input) =>
      _repository.createThread(input);
}
