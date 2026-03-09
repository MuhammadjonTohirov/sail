// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moderation_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReportReasonDto _$ReportReasonDtoFromJson(Map<String, dynamic> json) =>
    _ReportReasonDto(
      code: json['code'] as String,
      label: json['label'] as String,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$ReportReasonDtoToJson(_ReportReasonDto instance) =>
    <String, dynamic>{
      'code': instance.code,
      'label': instance.label,
      'description': instance.description,
    };

_CreateReportRequestDto _$CreateReportRequestDtoFromJson(
  Map<String, dynamic> json,
) => _CreateReportRequestDto(
  listing: (json['listing'] as num).toInt(),
  reasonCode: json['reason_code'] as String,
  notes: json['notes'] as String?,
);

Map<String, dynamic> _$CreateReportRequestDtoToJson(
  _CreateReportRequestDto instance,
) => <String, dynamic>{
  'listing': instance.listing,
  'reason_code': instance.reasonCode,
  'notes': instance.notes,
};

_ReportResponseDto _$ReportResponseDtoFromJson(Map<String, dynamic> json) =>
    _ReportResponseDto(
      id: (json['id'] as num).toInt(),
      listing: (json['listing'] as num).toInt(),
      reasonCode: json['reason_code'] as String,
      notes: json['notes'] as String?,
      status: json['status'] as String,
      createdAt: json['created_at'] as String?,
    );

Map<String, dynamic> _$ReportResponseDtoToJson(_ReportResponseDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'listing': instance.listing,
      'reason_code': instance.reasonCode,
      'notes': instance.notes,
      'status': instance.status,
      'created_at': instance.createdAt,
    };
