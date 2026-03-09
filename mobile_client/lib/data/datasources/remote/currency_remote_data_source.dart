/// Remote data source for currency API calls.
library;
import 'package:injectable/injectable.dart';

import '../../../core/config/api_config.dart';
import '../../../core/network/api_client.dart';
import '../../models/currency/currency_dto.dart';

/// Interface for currency remote data source.
abstract class CurrencyRemoteDataSource {
  Future<CurrencyConfigDto> getCurrencyConfig();
  Future<ConversionResultDto> convert({
    required double amount,
    required String from,
    required String to,
  });
}


/// Implementation of currency remote data source.
@LazySingleton(as: CurrencyRemoteDataSource)
class CurrencyRemoteDataSourceImpl implements CurrencyRemoteDataSource {
  CurrencyRemoteDataSourceImpl({required ApiClient apiClient}) : _api = apiClient;
  
  final ApiClient _api;

  @override
  Future<CurrencyConfigDto> getCurrencyConfig() async {
    final response = await _api.get<Map<String, dynamic>>(ApiConfig.currencyConfig);
    return CurrencyConfigDto.fromJson(response.data!);
  }

  @override
  Future<ConversionResultDto> convert({
    required double amount,
    required String from,
    required String to,
  }) async {
    final response = await _api.get<Map<String, dynamic>>(
      ApiConfig.currencyConvert,
      queryParameters: {
        'amount': amount.toString(),
        'from': from,
        'to': to,
      },
    );
    return ConversionResultDto.fromJson(response.data!);
  }
}
