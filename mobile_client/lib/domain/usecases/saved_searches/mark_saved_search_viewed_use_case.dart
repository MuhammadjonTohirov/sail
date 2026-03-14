import 'package:injectable/injectable.dart';

import '../../../core/utils/result.dart';
import '../../repositories/saved_search_repository.dart';

@lazySingleton
class MarkSavedSearchViewedUseCase {
  MarkSavedSearchViewedUseCase(this._repository);
  final SavedSearchRepository _repository;

  Future<Result<void>> call(int id) => _repository.markViewed(id);
}
