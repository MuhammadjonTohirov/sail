import 'package:injectable/injectable.dart';

import '../../../core/utils/result.dart';
import '../../entities/listing.dart';
import '../../repositories/listing_repository.dart';

@lazySingleton
class UploadListingMediaUseCase {
  UploadListingMediaUseCase(this._repository);
  final ListingRepository _repository;

  Future<Result<ListingMedia>> call(int listingId, String filePath) =>
      _repository.uploadMedia(listingId, filePath);
}
