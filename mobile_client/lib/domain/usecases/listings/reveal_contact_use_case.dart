import 'package:injectable/injectable.dart';

import '../../../core/utils/result.dart';
import '../../entities/listing.dart';
import '../../repositories/listing_repository.dart';

@lazySingleton
class RevealContactUseCase {
  RevealContactUseCase(this._repository);
  final ListingRepository _repository;

  Future<Result<RevealContactResult>> call(int listingId) =>
      _repository.revealContact(listingId);
}
