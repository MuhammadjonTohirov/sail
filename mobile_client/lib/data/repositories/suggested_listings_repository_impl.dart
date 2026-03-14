import 'package:injectable/injectable.dart';

import '../../core/errors/exceptions.dart';
import '../../core/errors/failures.dart';
import '../../core/utils/result.dart';
import '../../domain/entities/listing.dart';
import '../../domain/repositories/suggested_listings_repository.dart';
import '../datasources/remote/suggested_listings_remote_data_source.dart';
import '../mappers/listing_mapper.dart';

@LazySingleton(as: SuggestedListingsRepository)
class SuggestedListingsRepositoryImpl implements SuggestedListingsRepository {
  SuggestedListingsRepositoryImpl({required SuggestedListingsRemoteDataSource remoteDataSource})
      : _remote = remoteDataSource;

  final SuggestedListingsRemoteDataSource _remote;

  @override
  Future<Result<List<Listing>>> getSuggestedListings({int? limit}) async {
    try {
      final dtos = await _remote.getSuggestedListings(limit: limit);
      return dtos.map((d) => d.toEntity()).toList().asSuccess;
    } on AppException catch (e) {
      return _toFailure(e).asFail();
    } catch (e) {
      return UnknownFailure(e.toString()).asFail();
    }
  }

  Failure _toFailure(AppException e) {
    if (e is NetworkException) return const NetworkFailure();
    if (e is ServerException) return const ServerFailure();
    if (e is AuthException) return const AuthFailure();
    if (e is TimeoutException) return const TimeoutFailure();
    if (e is ValidationException) {
      return ValidationFailure(e.message, field: e.field);
    }
    return UnknownFailure(e.message);
  }
}
