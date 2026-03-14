import 'package:injectable/injectable.dart';

import '../../../core/utils/result.dart';
import '../../entities/saved_search.dart';
import '../../repositories/saved_search_repository.dart';

@lazySingleton
class GetSavedSearchesUseCase {
  GetSavedSearchesUseCase(this._repository);
  final SavedSearchRepository _repository;

  Future<Result<List<SavedSearch>>> call() => _repository.list();
}
