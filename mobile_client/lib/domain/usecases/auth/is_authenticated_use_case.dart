import 'package:injectable/injectable.dart';

import '../../repositories/auth_repository.dart';

@lazySingleton
class IsAuthenticatedUseCase {
  IsAuthenticatedUseCase(this._repository);
  final AuthRepository _repository;

  Future<bool> call() => _repository.isAuthenticated();
}
