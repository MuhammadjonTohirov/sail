import 'package:injectable/injectable.dart';

import '../../../core/utils/result.dart';
import '../../entities/report.dart';
import '../../repositories/moderation_repository.dart';

@lazySingleton
class SubmitReportUseCase {
  SubmitReportUseCase(this._repository);
  final ModerationRepository _repository;

  Future<Result<void>> call(ReportPayload payload) =>
      _repository.submitReport(payload);
}
