import 'package:injectable/injectable.dart';

import '../../../core/utils/result.dart';
import '../../entities/listing.dart';
import '../../repositories/listing_repository.dart';

@lazySingleton
class CreateListingUseCase {
  CreateListingUseCase(this._repository);
  final ListingRepository _repository;

  Future<Result<Listing>> call(ListingPayload payload) =>
      _repository.create(payload);
}
