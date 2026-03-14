import 'package:injectable/injectable.dart';

import '../../core/errors/exceptions.dart';
import '../../core/errors/failures.dart';
import '../../core/utils/result.dart';
import '../../domain/entities/report.dart';
import '../../domain/repositories/moderation_repository.dart';
import '../datasources/remote/moderation_remote_data_source.dart';
import '../mappers/moderation_mapper.dart';

@LazySingleton(as: ModerationRepository)
class ModerationRepositoryImpl implements ModerationRepository {
  ModerationRepositoryImpl({required ModerationRemoteDataSource remoteDataSource})
      : _remote = remoteDataSource;

  final ModerationRemoteDataSource _remote;

  @override
  Future<Result<List<ReportReason>>> getReportReasons({String? language}) async {
    try {
      final dtos = await _remote.getReportReasons(language: language);
      return dtos.map((d) => d.toEntity()).toList().asSuccess;
    } on AppException catch (e) {
      return _toFailure(e).asFail();
    } catch (e) {
      return UnknownFailure(e.toString()).asFail();
    }
  }

  @override
  Future<Result<void>> submitReport(ReportPayload payload) async {
    try {
      await _remote.submitReport(payload.toDto());
      return const Success(null);
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
