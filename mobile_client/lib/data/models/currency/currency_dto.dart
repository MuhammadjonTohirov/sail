import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency_dto.freezed.dart';
part 'currency_dto.g.dart';

/// Currency DTO matching server response.
/// 
/// Matches web_client/lib/currencyApi.ts Currency interface
@freezed
abstract class CurrencyDto with _$CurrencyDto {
  const factory CurrencyDto({
    required String code,
    required String name,
    required String symbol,
    @JsonKey(name: 'is_default') @Default(false) bool isDefault,
  }) = _CurrencyDto;

  factory CurrencyDto.fromJson(Map<String, dynamic> json) =>
      _$CurrencyDtoFromJson(json);
}

/// Currency config DTO (currencies + exchange rates).
/// 
/// Matches web_client/lib/currencyApi.ts CurrencyConfig interface
@freezed
abstract class CurrencyConfigDto with _$CurrencyConfigDto {
  const factory CurrencyConfigDto({
    @Default([]) List<CurrencyDto> currencies,
    @JsonKey(name: 'exchange_rates') @Default({}) Map<String, Map<String, double>> exchangeRates,
    @JsonKey(name: 'default_currency') required String defaultCurrency,
  }) = _CurrencyConfigDto;

  factory CurrencyConfigDto.fromJson(Map<String, dynamic> json) =>
      _$CurrencyConfigDtoFromJson(json);
}

/// Conversion result DTO.
@freezed
abstract class ConversionResultDto with _$ConversionResultDto {
  const factory ConversionResultDto({
    required double amount,
    required String from,
    required String to,
    required double converted,
    required double rate,
  }) = _ConversionResultDto;

  factory ConversionResultDto.fromJson(Map<String, dynamic> json) =>
      _$ConversionResultDtoFromJson(json);
}
