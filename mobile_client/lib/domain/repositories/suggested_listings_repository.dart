import '../entities/listing.dart';
import '../../core/utils/result.dart';

/// Suggested listings repository interface.
///
/// Defines suggested/recommended listings operations.
abstract class SuggestedListingsRepository {
  Future<Result<List<Listing>>> getSuggestedListings({int? limit});
}
