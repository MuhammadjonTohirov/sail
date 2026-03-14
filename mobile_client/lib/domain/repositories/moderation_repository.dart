import '../entities/report.dart';
import '../../core/utils/result.dart';

/// Moderation repository interface.
///
/// Defines report operations.
abstract class ModerationRepository {
  Future<Result<List<ReportReason>>> getReportReasons({String? language});
  Future<Result<void>> submitReport(ReportPayload payload);
}
