import 'package:injectable/injectable.dart';

import '../../../core/utils/result.dart';
import '../../entities/user.dart';
import '../../repositories/auth_repository.dart';

@lazySingleton
class VerifyOtpUseCase {
  VerifyOtpUseCase(this._repository);
  final AuthRepository _repository;

  Future<Result<UserProfile>> call({
    required String phone,
    required String code,
  }) =>
      _repository.verifyOtp(phone, code);
}
