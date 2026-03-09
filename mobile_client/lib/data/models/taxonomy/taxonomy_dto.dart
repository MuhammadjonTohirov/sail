import 'package:freezed_annotation/freezed_annotation.dart';

part 'taxonomy_dto.freezed.dart';
part 'taxonomy_dto.g.dart';

/// Category DTO matching server response.
/// 
/// Matches web_client/data/models/TaxonomyDTO.ts
@freezed
abstract class CategoryDto with _$CategoryDto {
  const factory CategoryDto({
    required int id,
    required String name,
    required String slug,
    String? icon,
    @JsonKey(name: 'icon_url') String? iconUrl,
    @JsonKey(name: 'is_leaf') @Default(false) bool isLeaf,
    @JsonKey(name: 'parent_id') int? parentId,
    List<CategoryDto>? children,
  }) = _CategoryDto;

  factory CategoryDto.fromJson(Map<String, dynamic> json) =>
      _$CategoryDtoFromJson(json);
}

/// Attribute DTO matching server response.
@freezed
abstract class AttributeDto with _$AttributeDto {
  const factory AttributeDto({
    required int id,
    required String key,
    required String label,
    required String type, // 'text', 'number', 'boolean', 'select', 'multiselect', 'range'
    List<String>? options,
    @Default(false) bool? required,
    int? order,
  }) = _AttributeDto;

  factory AttributeDto.fromJson(Map<String, dynamic> json) =>
      _$AttributeDtoFromJson(json);
}

/// Location DTO matching server response.
@freezed
abstract class LocationDto with _$LocationDto {
  const factory LocationDto({
    required int id,
    required String name,
    required String slug,
    @JsonKey(name: 'parent_id') int? parentId,
    int? level,
    List<LocationDto>? children,
  }) = _LocationDto;

  factory LocationDto.fromJson(Map<String, dynamic> json) =>
      _$LocationDtoFromJson(json);
}

/// Reverse geocode result DTO.
@freezed
abstract class ReverseGeocodeResultDto with _$ReverseGeocodeResultDto {
  const factory ReverseGeocodeResultDto({
    required int id,
    required String name,
    @JsonKey(name: 'name_ru') String? nameRu,
    @JsonKey(name: 'name_uz') String? nameUz,
    required String kind,
    required String path,
    required double distance,
  }) = _ReverseGeocodeResultDto;

  factory ReverseGeocodeResultDto.fromJson(Map<String, dynamic> json) =>
      _$ReverseGeocodeResultDtoFromJson(json);
}
