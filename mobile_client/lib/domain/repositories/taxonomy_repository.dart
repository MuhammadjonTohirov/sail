import '../entities/category.dart';
import '../entities/location.dart';
import '../../core/utils/result.dart';

/// Taxonomy repository interface.
/// 
/// Defines operations for categories, attributes, and locations.
abstract class TaxonomyRepository {
  // Categories
  Future<Result<List<Category>>> getCategories({String? lang});
  Future<Result<List<Attribute>>> getCategoryAttributes(int categoryId, {String? lang});

  // Locations
  Future<Result<List<Location>>> getLocations({int? parentId, String? lang});
  Future<Result<ReverseGeocodeResult?>> reverseGeocode(double lat, double lon, {String? lang});

  // Local caching (optional)
  Future<List<Category>?> getCachedCategories();
  Future<void> cacheCategories(List<Category> categories);
}
