import 'package:injectable/injectable.dart';

import '../../../core/utils/result.dart';
import '../../repositories/auth_repository.dart';

@lazySingleton
class RegisterUseCase {
  RegisterUseCase(this._repository);
  final AuthRepository _repository;

  Future<Result<void>> call({
    required String login,
    required String password,
    String? displayName,
  }) =>
      _repository.register(login, password, displayName: displayName);
}
