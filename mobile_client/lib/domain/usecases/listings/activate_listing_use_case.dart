import 'package:injectable/injectable.dart';

import '../../../core/utils/result.dart';
import '../../repositories/listing_repository.dart';

@lazySingleton
class ActivateListingUseCase {
  ActivateListingUseCase(this._repository);
  final ListingRepository _repository;

  Future<Result<void>> call(int id) => _repository.activate(id);
}
