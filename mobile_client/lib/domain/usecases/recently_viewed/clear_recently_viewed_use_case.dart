import 'package:injectable/injectable.dart';

import '../../../core/utils/result.dart';
import '../../repositories/favorites_repository.dart';

@lazySingleton
class ClearRecentlyViewedUseCase {
  ClearRecentlyViewedUseCase(this._repository);
  final FavoritesRepository _repository;

  Future<Result<void>> call() => _repository.clearRecentlyViewed();
}
