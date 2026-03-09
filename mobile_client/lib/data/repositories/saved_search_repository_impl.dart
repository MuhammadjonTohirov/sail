/// Repository implementation for saved searches.
library;
import 'package:injectable/injectable.dart';

import '../../../core/errors/exceptions.dart';
import '../../../core/errors/failures.dart';
import '../../../core/utils/result.dart';
import '../../domain/entities/saved_search.dart';
import '../../domain/repositories/saved_search_repository.dart';
import '../datasources/remote/saved_search_remote_data_source.dart';
import '../mappers/saved_search_mapper.dart';


/// Implementation of [SavedSearchRepository].
@LazySingleton(as: SavedSearchRepository)
class SavedSearchRepositoryImpl implements SavedSearchRepository {
  SavedSearchRepositoryImpl({
    required SavedSearchRemoteDataSource remoteDataSource,
  }) : _remote = remoteDataSource;

  final SavedSearchRemoteDataSource _remote;

  @override
  Future<Result<List<SavedSearch>>> list() async {
    try {
      final dtos = await _remote.getSavedSearches();
      return Success(dtos.map((d) => d.toEntity()).toList());
    } on AppException catch (e) {
      return e.toFailure().asFail();
    } catch (e) {
      return UnknownFailure(e.toString()).asFail();
    }
  }

  @override
  Future<Result<SavedSearch>> create(SavedSearchPayload payload) async {
    try {
      final dto = await _remote.createSavedSearch(payload.toCreateDto());
      return Success(dto.toEntity());
    } on AppException catch (e) {
      return e.toFailure().asFail();
    } catch (e) {
      return UnknownFailure(e.toString()).asFail();
    }
  }

  @override
  Future<Result<SavedSearch>> update(int id, SavedSearchPayload payload) async {
    try {
      final dto = await _remote.updateSavedSearch(id, payload.toUpdateDto());
      return Success(dto.toEntity());
    } on AppException catch (e) {
      return e.toFailure().asFail();
    } catch (e) {
      return UnknownFailure(e.toString()).asFail();
    }
  }

  @override
  Future<Result<void>> delete(int id) async {
    try {
      await _remote.deleteSavedSearch(id);
      return const Success(null);
    } on AppException catch (e) {
      return e.toFailure().asFail();
    } catch (e) {
      return UnknownFailure(e.toString()).asFail();
    }
  }

  @override
  Future<Result<void>> markViewed(int id) async {
    try {
      await _remote.markViewed(id);
      return const Success(null);
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
    if (this is AuthException) return const AuthFailure();
    return UnknownFailure(message);
  }
}
