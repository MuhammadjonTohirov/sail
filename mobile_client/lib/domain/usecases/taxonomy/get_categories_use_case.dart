import 'package:injectable/injectable.dart';

import '../../../core/utils/result.dart';
import '../../entities/category.dart';
import '../../repositories/taxonomy_repository.dart';

@lazySingleton
class GetCategoriesUseCase {
  GetCategoriesUseCase(this._repository);
  final TaxonomyRepository _repository;

  Future<Result<List<Category>>> call({String? lang}) =>
      _repository.getCategories(lang: lang);
}
