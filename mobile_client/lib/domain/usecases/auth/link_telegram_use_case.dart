import 'package:injectable/injectable.dart';

import '../../../core/utils/result.dart';
import '../../entities/user.dart';
import '../../repositories/auth_repository.dart';

@lazySingleton
class LinkTelegramUseCase {
  LinkTelegramUseCase(this._repository);
  final AuthRepository _repository;

  Future<Result<UserProfile>> call(Map<String, dynamic> telegramData) =>
      _repository.linkTelegram(telegramData);
}
