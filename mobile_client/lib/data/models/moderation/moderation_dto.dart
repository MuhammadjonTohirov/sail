import 'package:freezed_annotation/freezed_annotation.dart';

part 'moderation_dto.freezed.dart';
part 'moderation_dto.g.dart';

/// Report reason DTO.
/// 
/// Matches web_client/data/models/ModerationDTO.ts
@freezed
abstract class ReportReasonDto with _$ReportReasonDto {
  const factory ReportReasonDto({
    required String code,
    required String label,
    String? description,
  }) = _ReportReasonDto;

  factory ReportReasonDto.fromJson(Map<String, dynamic> json) =>
      _$ReportReasonDtoFromJson(json);
}

/// Create report request payload.
@freezed
abstract class CreateReportRequestDto with _$CreateReportRequestDto {
  const factory CreateReportRequestDto({
    required int listing,
    @JsonKey(name: 'reason_code') required String reasonCode,
    String? notes,
  }) = _CreateReportRequestDto;

  factory CreateReportRequestDto.fromJson(Map<String, dynamic> json) =>
      _$CreateReportRequestDtoFromJson(json);
}

/// Report response DTO.
@freezed
abstract class ReportResponseDto with _$ReportResponseDto {
  const factory ReportResponseDto({
    required int id,
    required int listing,
    @JsonKey(name: 'reason_code') required String reasonCode,
    String? notes,
    required String status,
    @JsonKey(name: 'created_at') String? createdAt,
  }) = _ReportResponseDto;

  factory ReportResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ReportResponseDtoFromJson(json);
}
