/// Currency mappers for CurrencyDto ↔ Currency conversion.
library;

import '../../domain/entities/currency.dart';
import '../models/currency/currency_dto.dart';

/// Mapper for CurrencyDto → Currency.
extension CurrencyDtoMapper on CurrencyDto {
  Currency toEntity() {
    return Currency(
      code: code,
      name: name,
      symbol: symbol,
      isDefault: isDefault,
    );
  }
}

/// Mapper for CurrencyConfigDto → CurrencyConfig.
extension CurrencyConfigDtoMapper on CurrencyConfigDto {
  CurrencyConfig toEntity() {
    return CurrencyConfig(
      currencies: currencies.map((c) => c.toEntity()).toList(),
      exchangeRates: exchangeRates,
      defaultCurrency: defaultCurrency,
    );
  }
}

/// Mapper for ConversionResultDto → ConversionResult.
extension ConversionResultDtoMapper on ConversionResultDto {
  ConversionResult toEntity() {
    return ConversionResult(
      amount: amount,
      from: from,
      to: to,
      converted: converted,
      rate: rate,
    );
  }
}
