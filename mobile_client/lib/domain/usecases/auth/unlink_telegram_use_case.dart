import 'package:injectable/injectable.dart';

import '../../../core/utils/result.dart';
import '../../repositories/auth_repository.dart';

@lazySingleton
class UnlinkTelegramUseCase {
  UnlinkTelegramUseCase(this._repository);
  final AuthRepository _repository;

  Future<Result<void>> call() => _repository.unlinkTelegram();
}
