import 'package:freezed_annotation/freezed_annotation.dart';

part 'report.freezed.dart';

/// Report reason entity.
@freezed
abstract class ReportReason with _$ReportReason {
  const factory ReportReason({
    required String code,
    required String label,
    String? description,
  }) = _ReportReason;
}

/// Report payload for submitting a report.
@freezed
abstract class ReportPayload with _$ReportPayload {
  const factory ReportPayload({
    required int listingId,
    required String reasonCode,
    String? notes,
  }) = _ReportPayload;
}
