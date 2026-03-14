import 'package:injectable/injectable.dart';

import '../../../core/utils/result.dart';
import '../../entities/currency.dart';
import '../../repositories/currency_repository.dart';

@lazySingleton
class ConvertCurrencyUseCase {
  ConvertCurrencyUseCase(this._repository);
  final CurrencyRepository _repository;

  Future<Result<ConversionResult>> call({
    required double amount,
    required String from,
    required String to,
  }) =>
      _repository.convert(amount, from, to);
}
