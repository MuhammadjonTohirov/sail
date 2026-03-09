// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saved_search_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SavedSearchDto _$SavedSearchDtoFromJson(Map<String, dynamic> json) =>
    _SavedSearchDto(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      query: json['query'] as Map<String, dynamic>,
      frequency: json['frequency'] as String?,
      isActive: json['is_active'] as bool? ?? true,
      newListingsCount: (json['new_listings_count'] as num?)?.toInt() ?? 0,
      lastNotifiedAt: json['last_notified_at'] as String?,
      lastViewedAt: json['last_viewed_at'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$SavedSearchDtoToJson(_SavedSearchDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'query': instance.query,
      'frequency': instance.frequency,
      'is_active': instance.isActive,
      'new_listings_count': instance.newListingsCount,
      'last_notified_at': instance.lastNotifiedAt,
      'last_viewed_at': instance.lastViewedAt,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

_CreateSavedSearchRequestDto _$CreateSavedSearchRequestDtoFromJson(
  Map<String, dynamic> json,
) => _CreateSavedSearchRequestDto(
  title: json['title'] as String,
  query: json['query'] as Map<String, dynamic>,
  frequency: json['frequency'] as String?,
);

Map<String, dynamic> _$CreateSavedSearchRequestDtoToJson(
  _CreateSavedSearchRequestDto instance,
) => <String, dynamic>{
  'title': instance.title,
  'query': instance.query,
  'frequency': instance.frequency,
};

_UpdateSavedSearchRequestDto _$UpdateSavedSearchRequestDtoFromJson(
  Map<String, dynamic> json,
) => _UpdateSavedSearchRequestDto(
  title: json['title'] as String?,
  query: json['query'] as Map<String, dynamic>?,
  frequency: json['frequency'] as String?,
  isActive: json['is_active'] as bool?,
);

Map<String, dynamic> _$UpdateSavedSearchRequestDtoToJson(
  _UpdateSavedSearchRequestDto instance,
) => <String, dynamic>{
  'title': instance.title,
  'query': instance.query,
  'frequency': instance.frequency,
  'is_active': instance.isActive,
};
