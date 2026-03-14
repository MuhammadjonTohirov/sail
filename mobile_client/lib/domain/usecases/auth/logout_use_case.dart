import 'package:injectable/injectable.dart';

import '../../repositories/auth_repository.dart';

@lazySingleton
class LogoutUseCase {
  LogoutUseCase(this._repository);
  final AuthRepository _repository;

  Future<void> call() => _repository.logout();
}
