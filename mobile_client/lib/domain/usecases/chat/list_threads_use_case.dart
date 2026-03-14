import 'package:injectable/injectable.dart';

import '../../../core/utils/result.dart';
import '../../entities/chat.dart';
import '../../repositories/chat_repository.dart';

@lazySingleton
class ListThreadsUseCase {
  ListThreadsUseCase(this._repository);
  final ChatRepository _repository;

  Future<Result<List<ChatThread>>> call({
    bool? archived,
    bool? unread,
    bool? myAds,
    ChatParticipantRole? role,
  }) =>
      _repository.listThreads(
        archived: archived,
        unread: unread,
        myAds: myAds,
        role: role,
      );
}
