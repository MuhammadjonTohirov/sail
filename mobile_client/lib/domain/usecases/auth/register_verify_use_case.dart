import 'package:injectable/injectable.dart';

import '../../../core/utils/result.dart';
import '../../entities/user.dart';
import '../../repositories/auth_repository.dart';

@lazySingleton
class RegisterVerifyUseCase {
  RegisterVerifyUseCase(this._repository);
  final AuthRepository _repository;

  Future<Result<UserProfile>> call({
    required String login,
    required String code,
    required String password,
    String? displayName,
  }) =>
      _repository.registerVerify(login, code, password, displayName: displayName);
}
