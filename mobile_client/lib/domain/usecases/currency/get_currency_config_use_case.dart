import 'package:injectable/injectable.dart';

import '../../../core/utils/result.dart';
import '../../entities/currency.dart';
import '../../repositories/currency_repository.dart';

@lazySingleton
class GetCurrencyConfigUseCase {
  GetCurrencyConfigUseCase(this._repository);
  final CurrencyRepository _repository;

  Future<Result<CurrencyConfig>> call() => _repository.getConfig();
}
