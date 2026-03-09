/// Remote data source for search API calls.
library;
import 'package:injectable/injectable.dart';

import '../../../core/config/api_config.dart';
import '../../../core/network/api_client.dart';
import '../../models/search/search_dto.dart';

/// Interface for search remote data source.
abstract class SearchRemoteDataSource {
  Future<SearchResultDto> searchListings(Map<String, dynamic> queryParams);
}


/// Implementation of search remote data source.
@LazySingleton(as: SearchRemoteDataSource)
class SearchRemoteDataSourceImpl implements SearchRemoteDataSource {
  SearchRemoteDataSourceImpl({required ApiClient apiClient}) : _api = apiClient;
  
  final ApiClient _api;

  @override
  Future<SearchResultDto> searchListings(Map<String, dynamic> queryParams) async {
    final response = await _api.get<Map<String, dynamic>>(
      ApiConfig.searchListings,
      queryParameters: _api.buildQueryParams(queryParams),
    );
    return SearchResultDto.fromJson(response.data!);
  }
}
