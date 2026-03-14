import 'package:injectable/injectable.dart';

import '../../../core/utils/result.dart';
import '../../repositories/favorites_repository.dart';

@lazySingleton
class TrackRecentlyViewedUseCase {
  TrackRecentlyViewedUseCase(this._repository);
  final FavoritesRepository _repository;

  Future<Result<void>> call(int listingId) =>
      _repository.trackView(listingId);
}
