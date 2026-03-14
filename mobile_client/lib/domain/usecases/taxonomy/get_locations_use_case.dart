import 'package:injectable/injectable.dart';

import '../../../core/utils/result.dart';
import '../../entities/location.dart';
import '../../repositories/taxonomy_repository.dart';

@lazySingleton
class GetLocationsUseCase {
  GetLocationsUseCase(this._repository);
  final TaxonomyRepository _repository;

  Future<Result<List<Location>>> call({int? parentId, String? lang}) =>
      _repository.getLocations(parentId: parentId, lang: lang);
}
