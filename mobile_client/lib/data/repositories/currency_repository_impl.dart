/// Repository implementation for currency.
library;
import 'package:injectable/injectable.dart';

import '../../../core/errors/exceptions.dart';
import '../../../core/errors/failures.dart';
import '../../../core/utils/result.dart';
import '../../domain/entities/currency.dart';
import '../../domain/repositories/currency_repository.dart';
import '../datasources/remote/currency_remote_data_source.dart';
import '../mappers/currency_mapper.dart';


/// Implementation of [CurrencyRepository].
@LazySingleton(as: CurrencyRepository)
class CurrencyRepositoryImpl implements CurrencyRepository {
  CurrencyRepositoryImpl({
    required CurrencyRemoteDataSource remoteDataSource,
  }) : _remote = remoteDataSource;

  final CurrencyRemoteDataSource _remote;

  @override
  Future<Result<CurrencyConfig>> getConfig() async {
    try {
      final dto = await _remote.getCurrencyConfig();
      return Success(dto.toEntity());
    } on AppException catch (e) {
      return e.toFailure().asFail();
    } catch (e) {
      return UnknownFailure(e.toString()).asFail();
    }
  }

  @override
  Future<Result<ConversionResult>> convert(double amount, String from, String to) async {
    try {
      final dto = await _remote.convert(amount: amount, from: from, to: to);
      return Success(dto.toEntity());
    } on AppException catch (e) {
      return e.toFailure().asFail();
    } catch (e) {
      return UnknownFailure(e.toString()).asFail();
    }
  }

  @override
  Future<CurrencyConfig?> getCachedConfig() async {
    // TODO: Implement caching
    return null;
  }

  @override
  Future<void> cacheConfig(CurrencyConfig config) async {
    // TODO: Implement caching
  }
}

extension on AppException {
  Failure toFailure() {
    if (this is NetworkException) return const NetworkFailure();
    if (this is ServerException) return const ServerFailure();
    return UnknownFailure(message);
  }
}
