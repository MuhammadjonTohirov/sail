import 'package:injectable/injectable.dart';

import '../../../core/utils/result.dart';
import '../../repositories/auth_repository.dart';

@lazySingleton
class SetPasswordUseCase {
  SetPasswordUseCase(this._repository);
  final AuthRepository _repository;

  Future<Result<void>> call(String newPassword) =>
      _repository.setPassword(newPassword);
}
