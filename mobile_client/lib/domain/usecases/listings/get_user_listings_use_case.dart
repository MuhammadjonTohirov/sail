import 'package:injectable/injectable.dart';

import '../../../core/utils/result.dart';
import '../../entities/listing.dart';
import '../../repositories/listing_repository.dart';

@lazySingleton
class GetUserListingsUseCase {
  GetUserListingsUseCase(this._repository);
  final ListingRepository _repository;

  Future<Result<List<Listing>>> call(int userId) =>
      _repository.getUserListings(userId);
}
