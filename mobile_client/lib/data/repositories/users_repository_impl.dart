import 'package:injectable/injectable.dart';

import '../../core/errors/exceptions.dart';
import '../../core/errors/failures.dart';
import '../../core/utils/result.dart';
import '../../domain/entities/public_user.dart';
import '../../domain/repositories/users_repository.dart';
import '../datasources/remote/users_remote_data_source.dart';
import '../mappers/public_user_mapper.dart';

@LazySingleton(as: UsersRepository)
class UsersRepositoryImpl implements UsersRepository {
  UsersRepositoryImpl({required UsersRemoteDataSource remoteDataSource})
      : _remote = remoteDataSource;

  final UsersRemoteDataSource _remote;

  @override
  Future<Result<PublicUser>> getUserById(int userId) async {
    try {
      final dto = await _remote.getUserById(userId);
      return dto.toEntity().asSuccess;
    } on AppException catch (e) {
      return _toFailure(e).asFail();
    } catch (e) {
      return UnknownFailure(e.toString()).asFail();
    }
  }

  Failure _toFailure(AppException e) {
    if (e is NetworkException) return const NetworkFailure();
    if (e is ServerException) return const ServerFailure();
    if (e is AuthException) return const AuthFailure();
    if (e is TimeoutException) return const TimeoutFailure();
    if (e is ValidationException) {
      return ValidationFailure(e.message, field: e.field);
    }
    return UnknownFailure(e.message);
  }
}
