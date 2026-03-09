import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency.freezed.dart';

/// Currency entity.
/// 
/// Matches web_client/lib/currencyApi.ts Currency
@freezed
abstract class Currency with _$Currency {
  const factory Currency({
    required String code,
    required String name,
    required String symbol,
    @Default(false) bool isDefault,
  }) = _Currency;
}

/// Currency config entity with exchange rates.
@freezed
abstract class CurrencyConfig with _$CurrencyConfig {
  const factory CurrencyConfig({
    @Default([]) List<Currency> currencies,
    @Default({}) Map<String, Map<String, double>> exchangeRates,
    required String defaultCurrency,
  }) = _CurrencyConfig;
}

/// Conversion result entity.
@freezed
abstract class ConversionResult with _$ConversionResult {
  const factory ConversionResult({
    required double amount,
    required String from,
    required String to,
    required double converted,
    required double rate,
  }) = _ConversionResult;
}
