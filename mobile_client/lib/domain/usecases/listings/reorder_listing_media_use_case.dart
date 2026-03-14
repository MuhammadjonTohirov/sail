import 'package:injectable/injectable.dart';

import '../../../core/utils/result.dart';
import '../../repositories/listing_repository.dart';

@lazySingleton
class ReorderListingMediaUseCase {
  ReorderListingMediaUseCase(this._repository);
  final ListingRepository _repository;

  Future<Result<void>> call(int listingId, List<int> mediaIds) =>
      _repository.reorderMedia(listingId, mediaIds);
}
