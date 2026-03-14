import 'package:injectable/injectable.dart';

import '../../../core/utils/result.dart';
import '../../entities/favorite.dart';
import '../../repositories/favorites_repository.dart';

@lazySingleton
class GetRecentlyViewedUseCase {
  GetRecentlyViewedUseCase(this._repository);
  final FavoritesRepository _repository;

  Future<Result<List<RecentlyViewedListing>>> call() =>
      _repository.listRecentlyViewed();
}
