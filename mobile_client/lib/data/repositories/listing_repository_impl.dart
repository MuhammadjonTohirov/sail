/// Repository implementation for listings.
library;
import 'package:injectable/injectable.dart';

import '../../../core/errors/exceptions.dart';
import '../../../core/errors/failures.dart';
import '../../../core/utils/result.dart';
import '../../domain/entities/listing.dart';
import '../../domain/repositories/listing_repository.dart';
import '../datasources/remote/listing_remote_data_source.dart';
import '../mappers/listing_mapper.dart';


/// Implementation of [ListingRepository].
@LazySingleton(as: ListingRepository)
class ListingRepositoryImpl implements ListingRepository {
  ListingRepositoryImpl({
    required ListingRemoteDataSource remoteDataSource,
  }) : _remote = remoteDataSource;

  final ListingRemoteDataSource _remote;

  @override
  Future<Result<Listing>> create(ListingPayload payload) async {
    try {
      final dto = await _remote.create(payload.toDto());
      return dto.toEntity().asSuccess;
    } on AppException catch (e) {
      return e.toFailure().asFail();
    } catch (e) {
      return UnknownFailure(e.toString()).asFail();
    }
  }

  @override
  Future<Result<Listing>> getById(int id) async {
    try {
      final dto = await _remote.getById(id);
      return dto.toEntity().asSuccess;
    } on AppException catch (e) {
      return e.toFailure().asFail();
    } catch (e) {
      return UnknownFailure(e.toString()).asFail();
    }
  }

  @override
  Future<Result<Listing>> update(int id, ListingPayload payload) async {
    try {
      final dto = await _remote.update(id, payload.toDto());
      return dto.toEntity().asSuccess;
    } on AppException catch (e) {
      return e.toFailure().asFail();
    } catch (e) {
      return UnknownFailure(e.toString()).asFail();
    }
  }

  @override
  Future<Result<void>> delete(int id) async {
    try {
      await _remote.delete(id);
      return const Success(null);
    } on AppException catch (e) {
      return e.toFailure().asFail();
    } catch (e) {
      return UnknownFailure(e.toString()).asFail();
    }
  }

  @override
  Future<Result<Listing>> refresh(int id) async {
    try {
      final dto = await _remote.refresh(id);
      return dto.toEntity().asSuccess;
    } on AppException catch (e) {
      return e.toFailure().asFail();
    } catch (e) {
      return UnknownFailure(e.toString()).asFail();
    }
  }

  @override
  Future<Result<void>> activate(int id) async {
    try {
      await _remote.activate(id);
      return const Success(null);
    } on AppException catch (e) {
      return e.toFailure().asFail();
    } catch (e) {
      return UnknownFailure(e.toString()).asFail();
    }
  }

  @override
  Future<Result<void>> deactivate(int id) async {
    try {
      await _remote.deactivate(id);
      return const Success(null);
    } on AppException catch (e) {
      return e.toFailure().asFail();
    } catch (e) {
      return UnknownFailure(e.toString()).asFail();
    }
  }

  @override
  Future<Result<ListingMedia>> uploadMedia(int listingId, String filePath) async {
    try {
      final dto = await _remote.uploadMedia(listingId, filePath);
      return dto.toEntity().asSuccess;
    } on AppException catch (e) {
      return e.toFailure().asFail();
    } catch (e) {
      return UnknownFailure(e.toString()).asFail();
    }
  }

  @override
  Future<Result<void>> deleteMedia(int listingId, int mediaId) async {
    try {
      await _remote.deleteMedia(listingId, mediaId);
      return const Success(null);
    } on AppException catch (e) {
      return e.toFailure().asFail();
    } catch (e) {
      return UnknownFailure(e.toString()).asFail();
    }
  }

  @override
  Future<Result<void>> reorderMedia(int listingId, List<int> mediaIds) async {
    try {
      await _remote.reorderMedia(listingId, mediaIds);
      return const Success(null);
    } on AppException catch (e) {
      return e.toFailure().asFail();
    } catch (e) {
      return UnknownFailure(e.toString()).asFail();
    }
  }

  @override
  Future<Result<List<Listing>>> getMyListings() async {
    try {
      final dtos = await _remote.getMyListings();
      return dtos.map((d) => d.toEntity()).toList().asSuccess;
    } on AppException catch (e) {
      return e.toFailure().asFail();
    } catch (e) {
      return UnknownFailure(e.toString()).asFail();
    }
  }

  @override
  Future<Result<List<Listing>>> getUserListings(int userId) async {
    try {
      final dtos = await _remote.getUserListings(userId);
      return dtos.map((d) => d.toEntity()).toList().asSuccess;
    } on AppException catch (e) {
      return e.toFailure().asFail();
    } catch (e) {
      return UnknownFailure(e.toString()).asFail();
    }
  }

  @override
  Future<Result<void>> shareToTelegram(int listingId, List<int> chatIds) async {
    try {
      await _remote.shareToTelegram(listingId, chatIds);
      return const Success(null);
    } on AppException catch (e) {
      return e.toFailure().asFail();
    } catch (e) {
      return UnknownFailure(e.toString()).asFail();
    }
  }

  @override
  Future<Result<void>> trackInterest(int listingId) async {
    try {
      await _remote.trackInterest(listingId);
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
    if (this is TimeoutException) return const TimeoutFailure();
    if (this is ValidationException) {
      final e = this as ValidationException;
      return ValidationFailure(e.message, field: e.field);
    }
    return UnknownFailure(message);
  }
}
