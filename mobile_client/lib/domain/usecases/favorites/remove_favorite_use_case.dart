import 'package:injectable/injectable.dart';

import '../../../core/utils/result.dart';
import '../../repositories/favorites_repository.dart';

@lazySingleton
class RemoveFavoriteUseCase {
  RemoveFavoriteUseCase(this._repository);
  final FavoritesRepository _repository;

  Future<Result<void>> call(int listingId) =>
      _repository.removeFavorite(listingId);
}
