import 'package:injectable/injectable.dart';

import '../../../core/utils/result.dart';
import '../../entities/user.dart';
import '../../repositories/auth_repository.dart';

@lazySingleton
class GetSecurityInfoUseCase {
  GetSecurityInfoUseCase(this._repository);
  final AuthRepository _repository;

  Future<Result<SecurityInfo>> call() => _repository.getSecurityInfo();
}
