import 'package:injectable/injectable.dart';

import '../../../core/utils/result.dart';
import '../../repositories/auth_repository.dart';

@lazySingleton
class RequestOtpUseCase {
  RequestOtpUseCase(this._repository);
  final AuthRepository _repository;

  Future<Result<void>> call(String phone) => _repository.requestOtp(phone);
}
