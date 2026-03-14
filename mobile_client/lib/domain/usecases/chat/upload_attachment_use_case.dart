import 'package:injectable/injectable.dart';

import '../../../core/utils/result.dart';
import '../../entities/chat.dart';
import '../../repositories/chat_repository.dart';

@lazySingleton
class UploadAttachmentUseCase {
  UploadAttachmentUseCase(this._repository);
  final ChatRepository _repository;

  Future<Result<ChatAttachment>> call(String threadId, String filePath) =>
      _repository.uploadAttachment(threadId, filePath);
}
