import 'package:injectable/injectable.dart';

import '../../../core/utils/result.dart';
import '../../repositories/listing_repository.dart';

@lazySingleton
class DeactivateListingUseCase {
  DeactivateListingUseCase(this._repository);
  final ListingRepository _repository;

  Future<Result<void>> call(int id) => _repository.deactivate(id);
}
