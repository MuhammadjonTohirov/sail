import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';

/// Attribute type enum.
enum AttributeType { text, number, boolean, select, multiselect, range }

/// Category domain entity.
/// 
/// Matches web_client/domain/models/Category.ts
@freezed
abstract class Category with _$Category {
  const factory Category({
    required int id,
    required String name,
    required String slug,
    String? icon,
    String? iconUrl,
    @Default(false) bool isLeaf,
    int? parentId,
    List<Category>? children,
  }) = _Category;
}

/// Attribute domain entity.
/// 
/// Matches web_client/domain/models/Attribute.ts
@freezed
abstract class Attribute with _$Attribute {
  const factory Attribute({
    required int id,
    required String key,
    required String label,
    required AttributeType type,
    List<String>? options,
    @Default(false) bool required,
    int? order,
  }) = _Attribute;
}
