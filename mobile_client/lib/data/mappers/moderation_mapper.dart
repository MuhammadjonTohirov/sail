import '../../domain/entities/report.dart';
import '../models/moderation/moderation_dto.dart';

extension ReportReasonDtoMapper on ReportReasonDto {
  ReportReason toEntity() {
    return ReportReason(
      code: code,
      label: label,
      description: description,
    );
  }
}

extension ReportPayloadMapper on ReportPayload {
  CreateReportRequestDto toDto() {
    return CreateReportRequestDto(
      listing: listingId,
      reasonCode: reasonCode,
      notes: notes,
    );
  }
}
