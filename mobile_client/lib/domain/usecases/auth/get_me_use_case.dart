import 'package:injectable/injectable.dart';

import '../../../core/utils/result.dart';
import '../../entities/user.dart';
import '../../repositories/auth_repository.dart';

@lazySingleton
class GetMeUseCase {
  GetMeUseCase(this._repository);
  final AuthRepository _repository;

  Future<Result<UserProfile>> call() => _repository.getMe();
}
