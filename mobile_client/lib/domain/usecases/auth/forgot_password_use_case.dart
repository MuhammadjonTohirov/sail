import 'package:injectable/injectable.dart';

import '../../../core/utils/result.dart';
import '../../repositories/auth_repository.dart';

@lazySingleton
class ForgotPasswordUseCase {
  ForgotPasswordUseCase(this._repository);
  final AuthRepository _repository;

  Future<Result<void>> call(String login) => _repository.forgotPassword(login);
}
