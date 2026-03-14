import 'package:injectable/injectable.dart';

import '../../../core/utils/result.dart';
import '../../repositories/auth_repository.dart';

@lazySingleton
class DeleteAccountUseCase {
  DeleteAccountUseCase(this._repository);
  final AuthRepository _repository;

  Future<Result<void>> call() => _repository.deleteAccount();
}
