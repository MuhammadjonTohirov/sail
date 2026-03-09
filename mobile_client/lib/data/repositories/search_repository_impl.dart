/// Repository implementation for search.
library;
import 'package:injectable/injectable.dart';

import '../../../core/errors/exceptions.dart';
import '../../../core/errors/failures.dart';
import '../../../core/utils/result.dart';
import '../../domain/entities/search_result.dart';
import '../../domain/repositories/search_repository.dart';
import '../datasources/remote/search_remote_data_source.dart';
import '../mappers/search_mapper.dart';


/// Implementation of [SearchRepository].
@LazySingleton(as: SearchRepository)
class SearchRepositoryImpl implements SearchRepository {
  SearchRepositoryImpl({
    required SearchRemoteDataSource remoteDataSource,
  }) : _remote = remoteDataSource;

  final SearchRemoteDataSource _remote;

  @override
  Future<Result<SearchResult>> searchListings({
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
  }) async {
    try {
      final queryParams = <String, dynamic>{
        if (query != null) 'q': query,
        if (category != null) 'category': category.toString(),
        if (location != null) 'location': location.toString(),
        if (priceMin != null) 'price_min': priceMin.toString(),
        if (priceMax != null) 'price_max': priceMax.toString(),
        if (condition != null) 'condition': condition,
        if (sort != null) 'sort': sort,
        'page': page.toString(),
        'per_page': perPage.toString(),
      };

      if (attributes != null) {
        attributes.forEach((key, value) {
          queryParams['attr_$key'] = value.toString();
        });
      }

      final dto = await _remote.searchListings(queryParams);
      return Success(dto.toEntity());
    } on AppException catch (e) {
      return e.toFailure().asFail();
    } catch (e) {
      return UnknownFailure(e.toString()).asFail();
    }
  }
}

extension on AppException {
  Failure toFailure() {
    if (this is NetworkException) return const NetworkFailure();
    if (this is ServerException) return const ServerFailure();
    if (this is TimeoutException) return const TimeoutFailure();
    return UnknownFailure(message);
  }
}
