import 'package:injectable/injectable.dart';

import '../../../core/utils/result.dart';
import '../../entities/saved_search.dart';
import '../../repositories/saved_search_repository.dart';

@lazySingleton
class UpdateSavedSearchUseCase {
  UpdateSavedSearchUseCase(this._repository);
  final SavedSearchRepository _repository;

  Future<Result<SavedSearch>> call(int id, SavedSearchPayload payload) =>
      _repository.update(id, payload);
}
