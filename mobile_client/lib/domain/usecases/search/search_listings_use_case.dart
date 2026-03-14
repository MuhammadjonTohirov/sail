import 'package:injectable/injectable.dart';

import '../../../core/utils/result.dart';
import '../../entities/search_result.dart';
import '../../repositories/search_repository.dart';

@lazySingleton
class SearchListingsUseCase {
  SearchListingsUseCase(this._repository);
  final SearchRepository _repository;

  Future<Result<SearchResult>> call({
    String? query,
    int? category,
    int? location,
    double? priceMin,
    double? priceMax,
    String? condition,
    String? sort,
    int page = 1,
    int perPage = 24,
    Map<String, dynamic>? attributes,
  }) =>
      _repository.searchListings(
        query: query,
        category: category,
        location: location,
        priceMin: priceMin,
        priceMax: priceMax,
        condition: condition,
        sort: sort,
        page: page,
        perPage: perPage,
        attributes: attributes,
      );
}
