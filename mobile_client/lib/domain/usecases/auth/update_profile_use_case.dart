import 'package:injectable/injectable.dart';

import '../../../core/utils/result.dart';
import '../../entities/user.dart';
import '../../repositories/auth_repository.dart';

@lazySingleton
class UpdateProfileUseCase {
  UpdateProfileUseCase(this._repository);
  final AuthRepository _repository;

  Future<Result<UserProfile>> call({
    String? displayName,
    int? locationId,
  }) =>
      _repository.updateProfile(
        displayName: displayName,
        locationId: locationId,
      );
}
