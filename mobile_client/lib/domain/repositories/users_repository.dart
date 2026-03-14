import '../entities/public_user.dart';
import '../../core/utils/result.dart';

/// Users repository interface.
///
/// Defines public user profile operations.
abstract class UsersRepository {
  Future<Result<PublicUser>> getUserById(int userId);
}
