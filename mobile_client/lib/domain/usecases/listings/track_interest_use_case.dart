import 'package:injectable/injectable.dart';

import '../../../core/utils/result.dart';
import '../../repositories/listing_repository.dart';

@lazySingleton
class TrackInterestUseCase {
  TrackInterestUseCase(this._repository);
  final ListingRepository _repository;

  Future<Result<void>> call(int listingId) =>
      _repository.trackInterest(listingId);
}
