import '../entities/favorite.dart';
import '../../core/utils/result.dart';

/// Favorites repository interface.
/// 
/// Defines favorites and recently viewed operations.
abstract class FavoritesRepository {
  // Favorites
  Future<Result<List<Favorite>>> listFavorites();
  Future<Result<bool>> toggleFavorite(int listingId);
  Future<Result<void>> removeFavorite(int listingId);

  // Recently viewed
  Future<Result<List<RecentlyViewedListing>>> listRecentlyViewed();
  Future<Result<void>> trackView(int listingId);
  Future<Result<void>> clearRecentlyViewed();
}
