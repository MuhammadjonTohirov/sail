import 'package:injectable/injectable.dart';

import '../../core/errors/exceptions.dart';
import '../../core/errors/failures.dart';
import '../../core/utils/result.dart';
import '../../domain/entities/geo_location.dart';
import '../../domain/repositories/geocoding_repository.dart';
import '../datasources/remote/geocoding_remote_data_source.dart';
import '../mappers/geocoding_mapper.dart';

@LazySingleton(as: GeocodingRepository)
class GeocodingRepositoryImpl implements GeocodingRepository {
  GeocodingRepositoryImpl({required GeocodingRemoteDataSource remoteDataSource})
      : _remote = remoteDataSource;

  final GeocodingRemoteDataSource _remote;

  @override
  Future<Result<GeoLocation?>> geocode(String locationName) async {
    try {
      final dto = await _remote.geocode(locationName);
      return (dto?.toEntity()).asSuccess;
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
