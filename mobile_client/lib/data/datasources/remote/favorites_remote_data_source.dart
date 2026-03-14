/// Remote data source for favorites API calls.
library;
import 'package:injectable/injectable.dart';

import '../../../core/config/api_config.dart';
import '../../../core/network/api_client.dart';
import '../../models/favorites/favorites_dto.dart';

/// Interface for favorites remote data source.
abstract class FavoritesRemoteDataSource {
  Future<List<FavoriteDto>> getFavorites();
  Future<FavoriteToggleResponseDto> toggleFavorite(int listingId);
  Future<void> removeFavorite(int listingId);
  
  // Recently viewed
  Future<List<RecentlyViewedDto>> getRecentlyViewed();
  Future<void> trackRecentlyViewed(int listingId);
  Future<void> clearRecentlyViewed();
}


/// Implementation of favorites remote data source.
@LazySingleton(as: FavoritesRemoteDataSource)
class FavoritesRemoteDataSourceImpl implements FavoritesRemoteDataSource {
  FavoritesRemoteDataSourceImpl({required ApiClient apiClient}) : _api = apiClient;
  
  final ApiClient _api;

  @override
  Future<List<FavoriteDto>> getFavorites() async {
    final response = await _api.get<Map<String, dynamic>>(ApiConfig.favorites);
    final results = response.data!['results'] as List<dynamic>? ?? [];
    return results
        .map((json) => FavoriteDto.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<FavoriteToggleResponseDto> toggleFavorite(int listingId) async {
    final response = await _api.post<Map<String, dynamic>>(
      ApiConfig.favoriteToggle(listingId),
    );
    return FavoriteToggleResponseDto.fromJson(response.data!);
  }

  @override
  Future<void> removeFavorite(int listingId) async {
    await _api.delete(ApiConfig.favoriteDelete(listingId));
  }

  @override
  Future<List<RecentlyViewedDto>> getRecentlyViewed() async {
    final response = await _api.get<Map<String, dynamic>>(ApiConfig.recentlyViewed);
    final results = response.data!['results'] as List<dynamic>? ?? [];
    return results
        .map((json) => RecentlyViewedDto.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<void> trackRecentlyViewed(int listingId) async {
    await _api.post(ApiConfig.recentlyViewedTrack(listingId));
  }

  @override
  Future<void> clearRecentlyViewed() async {
    await _api.delete(ApiConfig.recentlyViewedClear);
  }
}
