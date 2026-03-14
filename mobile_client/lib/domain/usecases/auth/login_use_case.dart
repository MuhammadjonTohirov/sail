import 'package:injectable/injectable.dart';

import '../../../core/utils/result.dart';
import '../../entities/user.dart';
import '../../repositories/auth_repository.dart';

@lazySingleton
class LoginUseCase {
  LoginUseCase(this._repository);
  final AuthRepository _repository;

  Future<Result<UserProfile>> call({
    required String login,
    required String password,
  }) =>
      _repository.login(login, password);
}
