// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CurrencyDto _$CurrencyDtoFromJson(Map<String, dynamic> json) => _CurrencyDto(
  code: json['code'] as String,
  name: json['name'] as String,
  symbol: json['symbol'] as String,
  isDefault: json['is_default'] as bool? ?? false,
);

Map<String, dynamic> _$CurrencyDtoToJson(_CurrencyDto instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'symbol': instance.symbol,
      'is_default': instance.isDefault,
    };

_CurrencyConfigDto _$CurrencyConfigDtoFromJson(Map<String, dynamic> json) =>
    _CurrencyConfigDto(
      currencies:
          (json['currencies'] as List<dynamic>?)
              ?.map((e) => CurrencyDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      exchangeRates:
          (json['exchange_rates'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
              k,
              (e as Map<String, dynamic>).map(
                (k, e) => MapEntry(k, (e as num).toDouble()),
              ),
            ),
          ) ??
          const {},
      defaultCurrency: json['default_currency'] as String,
    );

Map<String, dynamic> _$CurrencyConfigDtoToJson(_CurrencyConfigDto instance) =>
    <String, dynamic>{
      'currencies': instance.currencies,
      'exchange_rates': instance.exchangeRates,
      'default_currency': instance.defaultCurrency,
    };

_ConversionResultDto _$ConversionResultDtoFromJson(Map<String, dynamic> json) =>
    _ConversionResultDto(
      amount: (json['amount'] as num).toDouble(),
      from: json['from'] as String,
      to: json['to'] as String,
      converted: (json['converted'] as num).toDouble(),
      rate: (json['rate'] as num).toDouble(),
    );

Map<String, dynamic> _$ConversionResultDtoToJson(
  _ConversionResultDto instance,
) => <String, dynamic>{
  'amount': instance.amount,
  'from': instance.from,
  'to': instance.to,
  'converted': instance.converted,
  'rate': instance.rate,
};
