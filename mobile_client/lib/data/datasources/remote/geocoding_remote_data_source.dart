import 'package:injectable/injectable.dart';

import '../../../core/network/api_client.dart';
import '../../models/geocoding/geocoding_dto.dart';

/// Interface for geocoding remote data source.
abstract class GeocodingRemoteDataSource {
  Future<GeoLocationDto?> geocode(String locationName);
}

/// Implementation of geocoding remote data source.
///
/// Uses Nominatim OpenStreetMap API for geocoding.
@LazySingleton(as: GeocodingRemoteDataSource)
class GeocodingRemoteDataSourceImpl implements GeocodingRemoteDataSource {
  GeocodingRemoteDataSourceImpl({required ApiClient apiClient}) : _api = apiClient;

  final ApiClient _api;

  @override
  Future<GeoLocationDto?> geocode(String locationName) async {
    final response = await _api.get<List<dynamic>>(
      'https://nominatim.openstreetmap.org/search',
      queryParameters: {
        'q': locationName,
        'format': 'json',
        'limit': 1,
      },
    );
    final results = response.data;
    if (results == null || results.isEmpty) return null;
    final result = results.first as Map<String, dynamic>;
    return GeoLocationDto(
      lat: double.parse(result['lat'] as String),
      lon: double.parse(result['lon'] as String),
      displayName: result['display_name'] as String?,
      type: result['type'] as String?,
    );
  }
}
