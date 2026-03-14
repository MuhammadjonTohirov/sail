import 'package:injectable/injectable.dart';

import '../../../core/utils/result.dart';
import '../../repositories/auth_repository.dart';

@lazySingleton
class ResetPasswordUseCase {
  ResetPasswordUseCase(this._repository);
  final AuthRepository _repository;

  Future<Result<void>> call({
    required String login,
    required String code,
    required String password,
  }) =>
      _repository.resetPassword(login, code, password);
}
