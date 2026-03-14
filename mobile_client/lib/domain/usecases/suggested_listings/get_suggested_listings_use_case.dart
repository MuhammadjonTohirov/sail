import 'package:injectable/injectable.dart';

import '../../../core/utils/result.dart';
import '../../entities/listing.dart';
import '../../repositories/suggested_listings_repository.dart';

@lazySingleton
class GetSuggestedListingsUseCase {
  GetSuggestedListingsUseCase(this._repository);
  final SuggestedListingsRepository _repository;

  Future<Result<List<Listing>>> call({int? limit}) =>
      _repository.getSuggestedListings(limit: limit);
}
