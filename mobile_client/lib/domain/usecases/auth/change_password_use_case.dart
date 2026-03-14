import 'package:injectable/injectable.dart';

import '../../../core/utils/result.dart';
import '../../repositories/auth_repository.dart';

@lazySingleton
class ChangePasswordUseCase {
  ChangePasswordUseCase(this._repository);
  final AuthRepository _repository;

  Future<Result<void>> call({
    required String currentPassword,
    required String newPassword,
  }) =>
      _repository.changePassword(currentPassword, newPassword);
}
