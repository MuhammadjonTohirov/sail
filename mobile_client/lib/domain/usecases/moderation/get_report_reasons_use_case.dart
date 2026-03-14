import 'package:injectable/injectable.dart';

import '../../../core/utils/result.dart';
import '../../entities/report.dart';
import '../../repositories/moderation_repository.dart';

@lazySingleton
class GetReportReasonsUseCase {
  GetReportReasonsUseCase(this._repository);
  final ModerationRepository _repository;

  Future<Result<List<ReportReason>>> call({String? language}) =>
      _repository.getReportReasons(language: language);
}
