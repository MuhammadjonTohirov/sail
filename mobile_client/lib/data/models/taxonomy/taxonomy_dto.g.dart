// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'taxonomy_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CategoryDto _$CategoryDtoFromJson(Map<String, dynamic> json) => _CategoryDto(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  slug: json['slug'] as String,
  icon: json['icon'] as String?,
  iconUrl: json['icon_url'] as String?,
  isLeaf: json['is_leaf'] as bool? ?? false,
  parentId: (json['parent_id'] as num?)?.toInt(),
  children: (json['children'] as List<dynamic>?)
      ?.map((e) => CategoryDto.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$CategoryDtoToJson(_CategoryDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'icon': instance.icon,
      'icon_url': instance.iconUrl,
      'is_leaf': instance.isLeaf,
      'parent_id': instance.parentId,
      'children': instance.children,
    };

_AttributeDto _$AttributeDtoFromJson(Map<String, dynamic> json) =>
    _AttributeDto(
      id: (json['id'] as num).toInt(),
      key: json['key'] as String,
      label: json['label'] as String,
      type: json['type'] as String,
      options: (json['options'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      required: json['required'] as bool? ?? false,
      order: (json['order'] as num?)?.toInt(),
    );

Map<String, dynamic> _$AttributeDtoToJson(_AttributeDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'key': instance.key,
      'label': instance.label,
      'type': instance.type,
      'options': instance.options,
      'required': instance.required,
      'order': instance.order,
    };

_LocationDto _$LocationDtoFromJson(Map<String, dynamic> json) => _LocationDto(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  slug: json['slug'] as String,
  parentId: (json['parent_id'] as num?)?.toInt(),
  level: (json['level'] as num?)?.toInt(),
  children: (json['children'] as List<dynamic>?)
      ?.map((e) => LocationDto.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$LocationDtoToJson(_LocationDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'parent_id': instance.parentId,
      'level': instance.level,
      'children': instance.children,
    };

_ReverseGeocodeResultDto _$ReverseGeocodeResultDtoFromJson(
  Map<String, dynamic> json,
) => _ReverseGeocodeResultDto(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  nameRu: json['name_ru'] as String?,
  nameUz: json['name_uz'] as String?,
  kind: json['kind'] as String,
  path: json['path'] as String,
  distance: (json['distance'] as num).toDouble(),
);

Map<String, dynamic> _$ReverseGeocodeResultDtoToJson(
  _ReverseGeocodeResultDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'name_ru': instance.nameRu,
  'name_uz': instance.nameUz,
  'kind': instance.kind,
  'path': instance.path,
  'distance': instance.distance,
};
