/// Repository implementation for taxonomy (categories, locations).
library;
import 'package:injectable/injectable.dart';

import '../../../core/errors/exceptions.dart';
import '../../../core/errors/failures.dart';
import '../../../core/utils/result.dart';
import '../../domain/entities/category.dart';
import '../../domain/entities/location.dart';
import '../../domain/repositories/taxonomy_repository.dart';
import '../datasources/remote/taxonomy_remote_data_source.dart';
import '../mappers/taxonomy_mapper.dart';


/// Implementation of [TaxonomyRepository].
@LazySingleton(as: TaxonomyRepository)
class TaxonomyRepositoryImpl implements TaxonomyRepository {
  TaxonomyRepositoryImpl({
    required TaxonomyRemoteDataSource remoteDataSource,
  }) : _remote = remoteDataSource;

  final TaxonomyRemoteDataSource _remote;

  @override
  Future<Result<List<Category>>> getCategories({String? lang}) async {
    try {
      final dtos = await _remote.getCategories();
      return Success(dtos.map((d) => d.toEntity()).toList());
    } on AppException catch (e) {
      return e.toFailure().asFail();
    } catch (e) {
      return UnknownFailure(e.toString()).asFail();
    }
  }

  @override
  Future<Result<List<Attribute>>> getCategoryAttributes(int categoryId, {String? lang}) async {
    try {
      final dtos = await _remote.getCategoryAttributes(categoryId);
      return Success(dtos.map((d) => d.toEntity()).toList());
    } on AppException catch (e) {
      return e.toFailure().asFail();
    } catch (e) {
      return UnknownFailure(e.toString()).asFail();
    }
  }

  @override
  Future<Result<List<Location>>> getLocations({int? parentId, String? lang}) async {
    try {
      final dtos = await _remote.getLocations();
      // Filter locally if API doesn't support parentId yet, or pass to API if updated.
      // Assuming API returns flat list or hierarchical. DTO mapper handles structure.
      // If API doesn't filter, we return all. 
      // TODO: Pass parentId to API if supported.
      return Success(dtos.map((d) => d.toEntity()).toList());
    } on AppException catch (e) {
      return e.toFailure().asFail();
    } catch (e) {
      return UnknownFailure(e.toString()).asFail();
    }
  }

  @override
  Future<Result<ReverseGeocodeResult?>> reverseGeocode(double lat, double lon, {String? lang}) async {
    try {
      final dto = await _remote.reverseGeocode(lat, lon);
      return Success(dto.toEntity());
    } on AppException catch (e) {
      return e.toFailure().asFail();
    } catch (e) {
      return UnknownFailure(e.toString()).asFail();
    }
  }

  @override
  Future<List<Category>?> getCachedCategories() async {
    // TODO: Implement local caching
    return null;
  }

  @override
  Future<void> cacheCategories(List<Category> categories) async {
    // TODO: Implement local caching
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
