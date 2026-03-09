import '../entities/search_result.dart';
import '../../core/utils/result.dart';

/// Search repository interface.
/// 
/// Defines listing search operations.
abstract class SearchRepository {
  /// Search listings with the given parameters.
  /// 
  /// Mirrors web_client's Search.listings behavior.
  Future<Result<SearchResult>> searchListings({
    String? query,
    int? category,
    int? location,
    double? priceMin,
    double? priceMax,
    String? condition,
    String? sort,
    int page = 1,
    int perPage = 24,
    Map<String, dynamic>? attributes,
  });
}
