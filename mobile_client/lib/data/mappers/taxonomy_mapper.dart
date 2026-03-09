/// Taxonomy mappers for Category and Location DTO ↔ Entity conversion.
library;

import '../../domain/entities/category.dart';
import '../../domain/entities/location.dart';
import '../models/taxonomy/taxonomy_dto.dart';

/// Mapper for CategoryDto → Category.
extension CategoryDtoMapper on CategoryDto {
  Category toEntity() {
    return Category(
      id: id,
      name: name,
      slug: slug,
      icon: icon,
      iconUrl: iconUrl,
      isLeaf: isLeaf,
      parentId: parentId,
      children: children?.map((c) => c.toEntity()).toList(),
    );
  }
}

/// Mapper for AttributeDto → Attribute.
extension AttributeDtoMapper on AttributeDto {
  Attribute toEntity() {
    return Attribute(
      id: id,
      key: key,
      label: label,
      type: _parseAttributeType(type),
      options: options,
      required: required ?? false,
      order: order,
    );
  }

  static AttributeType _parseAttributeType(String type) {
    return switch (type.toLowerCase()) {
      'text' => AttributeType.text,
      'number' => AttributeType.number,
      'boolean' => AttributeType.boolean,
      'select' => AttributeType.select,
      'multiselect' => AttributeType.multiselect,
      'range' => AttributeType.range,
      _ => AttributeType.text,
    };
  }
}

/// Mapper for LocationDto → Location.
extension LocationDtoMapper on LocationDto {
  Location toEntity() {
    return Location(
      id: id,
      name: name,
      slug: slug,
      parentId: parentId,
      level: level,
      children: children?.map((l) => l.toEntity()).toList(),
    );
  }
}

/// Mapper for ReverseGeocodeResultDto → ReverseGeocodeResult.
extension ReverseGeocodeResultDtoMapper on ReverseGeocodeResultDto {
  ReverseGeocodeResult toEntity() {
    return ReverseGeocodeResult(
      id: id,
      name: name,
      nameRu: nameRu,
      nameUz: nameUz,
      kind: kind,
      path: path,
      distance: distance,
    );
  }
}
