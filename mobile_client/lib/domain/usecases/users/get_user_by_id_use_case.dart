import 'package:injectable/injectable.dart';

import '../../../core/utils/result.dart';
import '../../entities/public_user.dart';
import '../../repositories/users_repository.dart';

@lazySingleton
class GetUserByIdUseCase {
  GetUserByIdUseCase(this._repository);
  final UsersRepository _repository;

  Future<Result<PublicUser>> call(int userId) =>
      _repository.getUserById(userId);
}
