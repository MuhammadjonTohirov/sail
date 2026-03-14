import '../entities/listing.dart';
import '../../core/utils/result.dart';

/// Listing repository interface.
/// 
/// Defines all listing operations.
abstract class ListingRepository {
  // CRUD
  Future<Result<Listing>> create(ListingPayload payload);
  Future<Result<Listing>> getById(int id);
  Future<Result<Listing>> update(int id, ListingPayload payload);
  Future<Result<void>> delete(int id);

  // Status management
  Future<Result<Listing>> refresh(int id);
  Future<Result<void>> activate(int id);
  Future<Result<void>> deactivate(int id);

  // Media management
  Future<Result<ListingMedia>> uploadMedia(int listingId, String filePath);
  Future<Result<void>> deleteMedia(int listingId, int mediaId);
  Future<Result<void>> reorderMedia(int listingId, List<int> mediaIds);

  // User listings
  Future<Result<List<Listing>>> getMyListings();
  Future<Result<List<Listing>>> getUserListings(int userId);

  // Social
  Future<Result<void>> shareToTelegram(int listingId, List<int> chatIds);
  Future<Result<void>> trackInterest(int listingId);

  // Contact
  Future<Result<RevealContactResult>> revealContact(int listingId);
}
