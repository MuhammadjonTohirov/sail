/// Remote data source for saved searches API calls.
library;
import 'package:injectable/injectable.dart';

import '../../../core/config/api_config.dart';
import '../../../core/network/api_client.dart';
import '../../models/saved_search/saved_search_dto.dart';

/// Interface for saved searches remote data source.
abstract class SavedSearchRemoteDataSource {
  Future<List<SavedSearchDto>> getSavedSearches();
  Future<SavedSearchDto> createSavedSearch(CreateSavedSearchRequestDto request);
  Future<SavedSearchDto> updateSavedSearch(int id, UpdateSavedSearchRequestDto request);
  Future<void> deleteSavedSearch(int id);
  Future<void> markViewed(int id);
}


/// Implementation of saved searches remote data source.
@LazySingleton(as: SavedSearchRemoteDataSource)
class SavedSearchRemoteDataSourceImpl implements SavedSearchRemoteDataSource {
  SavedSearchRemoteDataSourceImpl({required ApiClient apiClient}) : _api = apiClient;
  
  final ApiClient _api;

  @override
  Future<List<SavedSearchDto>> getSavedSearches() async {
    final response = await _api.get<Map<String, dynamic>>(ApiConfig.savedSearches);
    final results = response.data!['results'] as List<dynamic>? ?? [];
    return results
        .map((json) => SavedSearchDto.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<SavedSearchDto> createSavedSearch(CreateSavedSearchRequestDto request) async {
    final response = await _api.post<Map<String, dynamic>>(
      ApiConfig.savedSearches,
      data: request.toJson(),
    );
    return SavedSearchDto.fromJson(response.data!);
  }

  @override
  Future<SavedSearchDto> updateSavedSearch(int id, UpdateSavedSearchRequestDto request) async {
    final response = await _api.patch<Map<String, dynamic>>(
      ApiConfig.savedSearch(id),
      data: request.toJson(),
    );
    return SavedSearchDto.fromJson(response.data!);
  }

  @override
  Future<void> deleteSavedSearch(int id) async {
    await _api.delete(ApiConfig.savedSearch(id));
  }

  @override
  Future<void> markViewed(int id) async {
    await _api.post(ApiConfig.savedSearchMarkViewed(id));
  }
}
