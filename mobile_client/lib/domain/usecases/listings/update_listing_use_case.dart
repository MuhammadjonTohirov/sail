import 'package:injectable/injectable.dart';

import '../../../core/utils/result.dart';
import '../../entities/listing.dart';
import '../../repositories/listing_repository.dart';

@lazySingleton
class UpdateListingUseCase {
  UpdateListingUseCase(this._repository);
  final ListingRepository _repository;

  Future<Result<Listing>> call(int id, ListingPayload payload) =>
      _repository.update(id, payload);
}
