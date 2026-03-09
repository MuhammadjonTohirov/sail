import '../entities/saved_search.dart';
import '../../core/utils/result.dart';

/// Saved search repository interface.
abstract class SavedSearchRepository {
  Future<Result<List<SavedSearch>>> list();
  Future<Result<SavedSearch>> create(SavedSearchPayload payload);
  Future<Result<SavedSearch>> update(int id, SavedSearchPayload payload);
  Future<Result<void>> delete(int id);
  Future<Result<void>> markViewed(int id);
}
