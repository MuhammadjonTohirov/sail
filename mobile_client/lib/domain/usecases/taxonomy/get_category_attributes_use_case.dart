import 'package:injectable/injectable.dart';

import '../../../core/utils/result.dart';
import '../../entities/category.dart';
import '../../repositories/taxonomy_repository.dart';

@lazySingleton
class GetCategoryAttributesUseCase {
  GetCategoryAttributesUseCase(this._repository);
  final TaxonomyRepository _repository;

  Future<Result<List<Attribute>>> call(int categoryId, {String? lang}) =>
      _repository.getCategoryAttributes(categoryId, lang: lang);
}
