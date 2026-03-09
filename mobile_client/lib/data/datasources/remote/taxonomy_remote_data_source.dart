/// Remote data source for taxonomy (categories, locations) API calls.
library;
import 'package:injectable/injectable.dart';

import '../../../core/config/api_config.dart';
import '../../../core/network/api_client.dart';
import '../../models/taxonomy/taxonomy_dto.dart';

/// Interface for taxonomy remote data source.
abstract class TaxonomyRemoteDataSource {
  // Categories
  Future<List<CategoryDto>> getCategories();
  Future<List<AttributeDto>> getCategoryAttributes(int categoryId);
  
  // Locations
  Future<List<LocationDto>> getLocations();
  Future<ReverseGeocodeResultDto> reverseGeocode(double lat, double lon);
}


/// Implementation of taxonomy remote data source.
@LazySingleton(as: TaxonomyRemoteDataSource)
class TaxonomyRemoteDataSourceImpl implements TaxonomyRemoteDataSource {
  TaxonomyRemoteDataSourceImpl({required ApiClient apiClient}) : _api = apiClient;
  
  final ApiClient _api;

  @override
  Future<List<CategoryDto>> getCategories() async {
    final response = await _api.get<List<dynamic>>(ApiConfig.categories);
    return (response.data!)
        .map((json) => CategoryDto.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<List<AttributeDto>> getCategoryAttributes(int categoryId) async {
    final response = await _api.get<List<dynamic>>(
      ApiConfig.categoryAttributes(categoryId),
    );
    return (response.data!)
        .map((json) => AttributeDto.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<List<LocationDto>> getLocations() async {
    final response = await _api.get<List<dynamic>>(ApiConfig.locations);
    return (response.data!)
        .map((json) => LocationDto.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<ReverseGeocodeResultDto> reverseGeocode(double lat, double lon) async {
    final response = await _api.get<Map<String, dynamic>>(
      ApiConfig.reverseGeocode,
      queryParameters: {'lat': lat.toString(), 'lon': lon.toString()},
    );
    return ReverseGeocodeResultDto.fromJson(response.data!);
  }
}
