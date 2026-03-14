import 'package:injectable/injectable.dart';

import '../../../core/utils/result.dart';
import '../../repositories/listing_repository.dart';

@lazySingleton
class DeleteListingMediaUseCase {
  DeleteListingMediaUseCase(this._repository);
  final ListingRepository _repository;

  Future<Result<void>> call(int listingId, int mediaId) =>
      _repository.deleteMedia(listingId, mediaId);
}
