import 'package:injectable/injectable.dart';

import '../../../core/config/api_config.dart';
import '../../../core/network/api_client.dart';
import '../../models/listing/listing_dto.dart';

/// Interface for suggested listings remote data source.
abstract class SuggestedListingsRemoteDataSource {
  Future<List<ListingDto>> getSuggestedListings({int? limit});
}

/// Implementation of suggested listings remote data source.
@LazySingleton(as: SuggestedListingsRemoteDataSource)
class SuggestedListingsRemoteDataSourceImpl implements SuggestedListingsRemoteDataSource {
  SuggestedListingsRemoteDataSourceImpl({required ApiClient apiClient}) : _api = apiClient;

  final ApiClient _api;

  @override
  Future<List<ListingDto>> getSuggestedListings({int? limit}) async {
    final queryParams = <String, dynamic>{};
    if (limit != null) queryParams['limit'] = limit;
    final response = await _api.get<Map<String, dynamic>>(
      ApiConfig.suggestedListings,
      queryParameters: queryParams,
    );
    final results = response.data!['results'] as List<dynamic>? ?? [];
    return results
        .map((json) => ListingDto.fromJson(json as Map<String, dynamic>))
        .toList();
  }
}
