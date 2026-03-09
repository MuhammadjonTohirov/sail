/// Repository implementation for favorites and recently viewed.
library;
import 'package:injectable/injectable.dart';

import '../../../core/errors/exceptions.dart';
import '../../../core/errors/failures.dart';
import '../../../core/utils/result.dart';
import '../../domain/entities/favorite.dart';
import '../../domain/repositories/favorites_repository.dart';
import '../datasources/remote/favorites_remote_data_source.dart';
import '../mappers/favorite_mapper.dart';


/// Implementation of [FavoritesRepository].
@LazySingleton(as: FavoritesRepository)
class FavoritesRepositoryImpl implements FavoritesRepository {
  FavoritesRepositoryImpl({
    required FavoritesRemoteDataSource remoteDataSource,
  }) : _remote = remoteDataSource;

  final FavoritesRemoteDataSource _remote;

  @override
  Future<Result<List<Favorite>>> listFavorites() async {
    try {
      final dtos = await _remote.getFavorites();
      return Success(dtos.map((d) => d.toEntity()).toList());
    } on AppException catch (e) {
      return e.toFailure().asFail();
    } catch (e) {
      return UnknownFailure(e.toString()).asFail();
    }
  }

  @override
  Future<Result<bool>> toggleFavorite(int listingId) async {
    try {
      final dto = await _remote.toggleFavorite(listingId);
      return dto.isFavorite.asSuccess;
    } on AppException catch (e) {
      return e.toFailure().asFail();
    } catch (e) {
      return UnknownFailure(e.toString()).asFail();
    }
  }

  @override
  Future<Result<void>> removeFavorite(int listingId) async {
    try {
      await _remote.removeFavorite(listingId);
      return const Success(null);
    } on AppException catch (e) {
      return e.toFailure().asFail();
    } catch (e) {
      return UnknownFailure(e.toString()).asFail();
    }
  }

  @override
  Future<Result<List<RecentlyViewedListing>>> listRecentlyViewed() async {
    try {
      final dtos = await _remote.getRecentlyViewed();
      return Success(dtos.map((d) => d.toEntity()).toList());
    } on AppException catch (e) {
      return e.toFailure().asFail();
    } catch (e) {
      return UnknownFailure(e.toString()).asFail();
    }
  }

  @override
  Future<Result<void>> trackView(int listingId) async {
    try {
      await _remote.trackRecentlyViewed(listingId);
      return const Success(null);
    } on AppException catch (e) {
      return e.toFailure().asFail();
    } catch (e) {
      return UnknownFailure(e.toString()).asFail();
    }
  }

  @override
  Future<Result<void>> clearRecentlyViewed() async {
    try {
      await _remote.clearRecentlyViewed();
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
