import 'package:injectable/injectable.dart';

import '../../../core/utils/result.dart';
import '../../repositories/favorites_repository.dart';

@lazySingleton
class ToggleFavoriteUseCase {
  ToggleFavoriteUseCase(this._repository);
  final FavoritesRepository _repository;

  Future<Result<bool>> call(int listingId) =>
      _repository.toggleFavorite(listingId);
}
