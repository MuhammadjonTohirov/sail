import 'package:injectable/injectable.dart';

import '../../../core/utils/result.dart';
import '../../repositories/listing_repository.dart';

@lazySingleton
class ShareListingUseCase {
  ShareListingUseCase(this._repository);
  final ListingRepository _repository;

  Future<Result<void>> call(int listingId, List<int> chatIds) =>
      _repository.shareToTelegram(listingId, chatIds);
}
