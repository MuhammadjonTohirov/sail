// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'taxonomy_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CategoryDto {

 int get id; String get name; String get slug; String? get icon;@JsonKey(name: 'icon_url') String? get iconUrl;@JsonKey(name: 'is_leaf') bool get isLeaf;@JsonKey(name: 'parent_id') int? get parentId; List<CategoryDto>? get children;
/// Create a copy of CategoryDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryDtoCopyWith<CategoryDto> get copyWith => _$CategoryDtoCopyWithImpl<CategoryDto>(this as CategoryDto, _$identity);

  /// Serializes this CategoryDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl)&&(identical(other.isLeaf, isLeaf) || other.isLeaf == isLeaf)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&const DeepCollectionEquality().equals(other.children, children));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,slug,icon,iconUrl,isLeaf,parentId,const DeepCollectionEquality().hash(children));

@override
String toString() {
  return 'CategoryDto(id: $id, name: $name, slug: $slug, icon: $icon, iconUrl: $iconUrl, isLeaf: $isLeaf, parentId: $parentId, children: $children)';
}


}

/// @nodoc
abstract mixin class $CategoryDtoCopyWith<$Res>  {
  factory $CategoryDtoCopyWith(CategoryDto value, $Res Function(CategoryDto) _then) = _$CategoryDtoCopyWithImpl;
@useResult
$Res call({
 int id, String name, String slug, String? icon,@JsonKey(name: 'icon_url') String? iconUrl,@JsonKey(name: 'is_leaf') bool isLeaf,@JsonKey(name: 'parent_id') int? parentId, List<CategoryDto>? children
});




}
/// @nodoc
class _$CategoryDtoCopyWithImpl<$Res>
    implements $CategoryDtoCopyWith<$Res> {
  _$CategoryDtoCopyWithImpl(this._self, this._then);

  final CategoryDto _self;
  final $Res Function(CategoryDto) _then;

/// Create a copy of CategoryDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? slug = null,Object? icon = freezed,Object? iconUrl = freezed,Object? isLeaf = null,Object? parentId = freezed,Object? children = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,iconUrl: freezed == iconUrl ? _self.iconUrl : iconUrl // ignore: cast_nullable_to_non_nullable
as String?,isLeaf: null == isLeaf ? _self.isLeaf : isLeaf // ignore: cast_nullable_to_non_nullable
as bool,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as int?,children: freezed == children ? _self.children : children // ignore: cast_nullable_to_non_nullable
as List<CategoryDto>?,
  ));
}

}


/// Adds pattern-matching-related methods to [CategoryDto].
extension CategoryDtoPatterns on CategoryDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryDto value)  $default,){
final _that = this;
switch (_that) {
case _CategoryDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryDto value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String slug,  String? icon, @JsonKey(name: 'icon_url')  String? iconUrl, @JsonKey(name: 'is_leaf')  bool isLeaf, @JsonKey(name: 'parent_id')  int? parentId,  List<CategoryDto>? children)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryDto() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.icon,_that.iconUrl,_that.isLeaf,_that.parentId,_that.children);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String slug,  String? icon, @JsonKey(name: 'icon_url')  String? iconUrl, @JsonKey(name: 'is_leaf')  bool isLeaf, @JsonKey(name: 'parent_id')  int? parentId,  List<CategoryDto>? children)  $default,) {final _that = this;
switch (_that) {
case _CategoryDto():
return $default(_that.id,_that.name,_that.slug,_that.icon,_that.iconUrl,_that.isLeaf,_that.parentId,_that.children);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String slug,  String? icon, @JsonKey(name: 'icon_url')  String? iconUrl, @JsonKey(name: 'is_leaf')  bool isLeaf, @JsonKey(name: 'parent_id')  int? parentId,  List<CategoryDto>? children)?  $default,) {final _that = this;
switch (_that) {
case _CategoryDto() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.icon,_that.iconUrl,_that.isLeaf,_that.parentId,_that.children);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CategoryDto implements CategoryDto {
  const _CategoryDto({required this.id, required this.name, required this.slug, this.icon, @JsonKey(name: 'icon_url') this.iconUrl, @JsonKey(name: 'is_leaf') this.isLeaf = false, @JsonKey(name: 'parent_id') this.parentId, final  List<CategoryDto>? children}): _children = children;
  factory _CategoryDto.fromJson(Map<String, dynamic> json) => _$CategoryDtoFromJson(json);

@override final  int id;
@override final  String name;
@override final  String slug;
@override final  String? icon;
@override@JsonKey(name: 'icon_url') final  String? iconUrl;
@override@JsonKey(name: 'is_leaf') final  bool isLeaf;
@override@JsonKey(name: 'parent_id') final  int? parentId;
 final  List<CategoryDto>? _children;
@override List<CategoryDto>? get children {
  final value = _children;
  if (value == null) return null;
  if (_children is EqualUnmodifiableListView) return _children;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of CategoryDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryDtoCopyWith<_CategoryDto> get copyWith => __$CategoryDtoCopyWithImpl<_CategoryDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl)&&(identical(other.isLeaf, isLeaf) || other.isLeaf == isLeaf)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&const DeepCollectionEquality().equals(other._children, _children));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,slug,icon,iconUrl,isLeaf,parentId,const DeepCollectionEquality().hash(_children));

@override
String toString() {
  return 'CategoryDto(id: $id, name: $name, slug: $slug, icon: $icon, iconUrl: $iconUrl, isLeaf: $isLeaf, parentId: $parentId, children: $children)';
}


}

/// @nodoc
abstract mixin class _$CategoryDtoCopyWith<$Res> implements $CategoryDtoCopyWith<$Res> {
  factory _$CategoryDtoCopyWith(_CategoryDto value, $Res Function(_CategoryDto) _then) = __$CategoryDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String slug, String? icon,@JsonKey(name: 'icon_url') String? iconUrl,@JsonKey(name: 'is_leaf') bool isLeaf,@JsonKey(name: 'parent_id') int? parentId, List<CategoryDto>? children
});




}
/// @nodoc
class __$CategoryDtoCopyWithImpl<$Res>
    implements _$CategoryDtoCopyWith<$Res> {
  __$CategoryDtoCopyWithImpl(this._self, this._then);

  final _CategoryDto _self;
  final $Res Function(_CategoryDto) _then;

/// Create a copy of CategoryDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? slug = null,Object? icon = freezed,Object? iconUrl = freezed,Object? isLeaf = null,Object? parentId = freezed,Object? children = freezed,}) {
  return _then(_CategoryDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,iconUrl: freezed == iconUrl ? _self.iconUrl : iconUrl // ignore: cast_nullable_to_non_nullable
as String?,isLeaf: null == isLeaf ? _self.isLeaf : isLeaf // ignore: cast_nullable_to_non_nullable
as bool,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as int?,children: freezed == children ? _self._children : children // ignore: cast_nullable_to_non_nullable
as List<CategoryDto>?,
  ));
}


}


/// @nodoc
mixin _$AttributeDto {

 int get id; String get key; String get label; String get type;// 'text', 'number', 'boolean', 'select', 'multiselect', 'range'
 List<String>? get options; bool? get required; int? get order;
/// Create a copy of AttributeDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttributeDtoCopyWith<AttributeDto> get copyWith => _$AttributeDtoCopyWithImpl<AttributeDto>(this as AttributeDto, _$identity);

  /// Serializes this AttributeDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttributeDto&&(identical(other.id, id) || other.id == id)&&(identical(other.key, key) || other.key == key)&&(identical(other.label, label) || other.label == label)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other.options, options)&&(identical(other.required, required) || other.required == required)&&(identical(other.order, order) || other.order == order));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,key,label,type,const DeepCollectionEquality().hash(options),required,order);

@override
String toString() {
  return 'AttributeDto(id: $id, key: $key, label: $label, type: $type, options: $options, required: $required, order: $order)';
}


}

/// @nodoc
abstract mixin class $AttributeDtoCopyWith<$Res>  {
  factory $AttributeDtoCopyWith(AttributeDto value, $Res Function(AttributeDto) _then) = _$AttributeDtoCopyWithImpl;
@useResult
$Res call({
 int id, String key, String label, String type, List<String>? options, bool? required, int? order
});




}
/// @nodoc
class _$AttributeDtoCopyWithImpl<$Res>
    implements $AttributeDtoCopyWith<$Res> {
  _$AttributeDtoCopyWithImpl(this._self, this._then);

  final AttributeDto _self;
  final $Res Function(AttributeDto) _then;

/// Create a copy of AttributeDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? key = null,Object? label = null,Object? type = null,Object? options = freezed,Object? required = freezed,Object? order = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,options: freezed == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as List<String>?,required: freezed == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as bool?,order: freezed == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [AttributeDto].
extension AttributeDtoPatterns on AttributeDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttributeDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttributeDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttributeDto value)  $default,){
final _that = this;
switch (_that) {
case _AttributeDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttributeDto value)?  $default,){
final _that = this;
switch (_that) {
case _AttributeDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String key,  String label,  String type,  List<String>? options,  bool? required,  int? order)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttributeDto() when $default != null:
return $default(_that.id,_that.key,_that.label,_that.type,_that.options,_that.required,_that.order);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String key,  String label,  String type,  List<String>? options,  bool? required,  int? order)  $default,) {final _that = this;
switch (_that) {
case _AttributeDto():
return $default(_that.id,_that.key,_that.label,_that.type,_that.options,_that.required,_that.order);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String key,  String label,  String type,  List<String>? options,  bool? required,  int? order)?  $default,) {final _that = this;
switch (_that) {
case _AttributeDto() when $default != null:
return $default(_that.id,_that.key,_that.label,_that.type,_that.options,_that.required,_that.order);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AttributeDto implements AttributeDto {
  const _AttributeDto({required this.id, required this.key, required this.label, required this.type, final  List<String>? options, this.required = false, this.order}): _options = options;
  factory _AttributeDto.fromJson(Map<String, dynamic> json) => _$AttributeDtoFromJson(json);

@override final  int id;
@override final  String key;
@override final  String label;
@override final  String type;
// 'text', 'number', 'boolean', 'select', 'multiselect', 'range'
 final  List<String>? _options;
// 'text', 'number', 'boolean', 'select', 'multiselect', 'range'
@override List<String>? get options {
  final value = _options;
  if (value == null) return null;
  if (_options is EqualUnmodifiableListView) return _options;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey() final  bool? required;
@override final  int? order;

/// Create a copy of AttributeDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttributeDtoCopyWith<_AttributeDto> get copyWith => __$AttributeDtoCopyWithImpl<_AttributeDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AttributeDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttributeDto&&(identical(other.id, id) || other.id == id)&&(identical(other.key, key) || other.key == key)&&(identical(other.label, label) || other.label == label)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other._options, _options)&&(identical(other.required, required) || other.required == required)&&(identical(other.order, order) || other.order == order));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,key,label,type,const DeepCollectionEquality().hash(_options),required,order);

@override
String toString() {
  return 'AttributeDto(id: $id, key: $key, label: $label, type: $type, options: $options, required: $required, order: $order)';
}


}

/// @nodoc
abstract mixin class _$AttributeDtoCopyWith<$Res> implements $AttributeDtoCopyWith<$Res> {
  factory _$AttributeDtoCopyWith(_AttributeDto value, $Res Function(_AttributeDto) _then) = __$AttributeDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, String key, String label, String type, List<String>? options, bool? required, int? order
});




}
/// @nodoc
class __$AttributeDtoCopyWithImpl<$Res>
    implements _$AttributeDtoCopyWith<$Res> {
  __$AttributeDtoCopyWithImpl(this._self, this._then);

  final _AttributeDto _self;
  final $Res Function(_AttributeDto) _then;

/// Create a copy of AttributeDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? key = null,Object? label = null,Object? type = null,Object? options = freezed,Object? required = freezed,Object? order = freezed,}) {
  return _then(_AttributeDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,options: freezed == options ? _self._options : options // ignore: cast_nullable_to_non_nullable
as List<String>?,required: freezed == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as bool?,order: freezed == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$LocationDto {

 int get id; String get name; String get slug;@JsonKey(name: 'parent_id') int? get parentId; int? get level; List<LocationDto>? get children;
/// Create a copy of LocationDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocationDtoCopyWith<LocationDto> get copyWith => _$LocationDtoCopyWithImpl<LocationDto>(this as LocationDto, _$identity);

  /// Serializes this LocationDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocationDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.level, level) || other.level == level)&&const DeepCollectionEquality().equals(other.children, children));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,slug,parentId,level,const DeepCollectionEquality().hash(children));

@override
String toString() {
  return 'LocationDto(id: $id, name: $name, slug: $slug, parentId: $parentId, level: $level, children: $children)';
}


}

/// @nodoc
abstract mixin class $LocationDtoCopyWith<$Res>  {
  factory $LocationDtoCopyWith(LocationDto value, $Res Function(LocationDto) _then) = _$LocationDtoCopyWithImpl;
@useResult
$Res call({
 int id, String name, String slug,@JsonKey(name: 'parent_id') int? parentId, int? level, List<LocationDto>? children
});




}
/// @nodoc
class _$LocationDtoCopyWithImpl<$Res>
    implements $LocationDtoCopyWith<$Res> {
  _$LocationDtoCopyWithImpl(this._self, this._then);

  final LocationDto _self;
  final $Res Function(LocationDto) _then;

/// Create a copy of LocationDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? slug = null,Object? parentId = freezed,Object? level = freezed,Object? children = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as int?,level: freezed == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int?,children: freezed == children ? _self.children : children // ignore: cast_nullable_to_non_nullable
as List<LocationDto>?,
  ));
}

}


/// Adds pattern-matching-related methods to [LocationDto].
extension LocationDtoPatterns on LocationDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LocationDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LocationDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LocationDto value)  $default,){
final _that = this;
switch (_that) {
case _LocationDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LocationDto value)?  $default,){
final _that = this;
switch (_that) {
case _LocationDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String slug, @JsonKey(name: 'parent_id')  int? parentId,  int? level,  List<LocationDto>? children)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LocationDto() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.parentId,_that.level,_that.children);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String slug, @JsonKey(name: 'parent_id')  int? parentId,  int? level,  List<LocationDto>? children)  $default,) {final _that = this;
switch (_that) {
case _LocationDto():
return $default(_that.id,_that.name,_that.slug,_that.parentId,_that.level,_that.children);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String slug, @JsonKey(name: 'parent_id')  int? parentId,  int? level,  List<LocationDto>? children)?  $default,) {final _that = this;
switch (_that) {
case _LocationDto() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.parentId,_that.level,_that.children);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LocationDto implements LocationDto {
  const _LocationDto({required this.id, required this.name, required this.slug, @JsonKey(name: 'parent_id') this.parentId, this.level, final  List<LocationDto>? children}): _children = children;
  factory _LocationDto.fromJson(Map<String, dynamic> json) => _$LocationDtoFromJson(json);

@override final  int id;
@override final  String name;
@override final  String slug;
@override@JsonKey(name: 'parent_id') final  int? parentId;
@override final  int? level;
 final  List<LocationDto>? _children;
@override List<LocationDto>? get children {
  final value = _children;
  if (value == null) return null;
  if (_children is EqualUnmodifiableListView) return _children;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of LocationDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LocationDtoCopyWith<_LocationDto> get copyWith => __$LocationDtoCopyWithImpl<_LocationDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LocationDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LocationDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.level, level) || other.level == level)&&const DeepCollectionEquality().equals(other._children, _children));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,slug,parentId,level,const DeepCollectionEquality().hash(_children));

@override
String toString() {
  return 'LocationDto(id: $id, name: $name, slug: $slug, parentId: $parentId, level: $level, children: $children)';
}


}

/// @nodoc
abstract mixin class _$LocationDtoCopyWith<$Res> implements $LocationDtoCopyWith<$Res> {
  factory _$LocationDtoCopyWith(_LocationDto value, $Res Function(_LocationDto) _then) = __$LocationDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String slug,@JsonKey(name: 'parent_id') int? parentId, int? level, List<LocationDto>? children
});




}
/// @nodoc
class __$LocationDtoCopyWithImpl<$Res>
    implements _$LocationDtoCopyWith<$Res> {
  __$LocationDtoCopyWithImpl(this._self, this._then);

  final _LocationDto _self;
  final $Res Function(_LocationDto) _then;

/// Create a copy of LocationDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? slug = null,Object? parentId = freezed,Object? level = freezed,Object? children = freezed,}) {
  return _then(_LocationDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as int?,level: freezed == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int?,children: freezed == children ? _self._children : children // ignore: cast_nullable_to_non_nullable
as List<LocationDto>?,
  ));
}


}


/// @nodoc
mixin _$ReverseGeocodeResultDto {

 int get id; String get name;@JsonKey(name: 'name_ru') String? get nameRu;@JsonKey(name: 'name_uz') String? get nameUz; String get kind; String get path; double get distance;
/// Create a copy of ReverseGeocodeResultDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReverseGeocodeResultDtoCopyWith<ReverseGeocodeResultDto> get copyWith => _$ReverseGeocodeResultDtoCopyWithImpl<ReverseGeocodeResultDto>(this as ReverseGeocodeResultDto, _$identity);

  /// Serializes this ReverseGeocodeResultDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReverseGeocodeResultDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.nameRu, nameRu) || other.nameRu == nameRu)&&(identical(other.nameUz, nameUz) || other.nameUz == nameUz)&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.path, path) || other.path == path)&&(identical(other.distance, distance) || other.distance == distance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,nameRu,nameUz,kind,path,distance);

@override
String toString() {
  return 'ReverseGeocodeResultDto(id: $id, name: $name, nameRu: $nameRu, nameUz: $nameUz, kind: $kind, path: $path, distance: $distance)';
}


}

/// @nodoc
abstract mixin class $ReverseGeocodeResultDtoCopyWith<$Res>  {
  factory $ReverseGeocodeResultDtoCopyWith(ReverseGeocodeResultDto value, $Res Function(ReverseGeocodeResultDto) _then) = _$ReverseGeocodeResultDtoCopyWithImpl;
@useResult
$Res call({
 int id, String name,@JsonKey(name: 'name_ru') String? nameRu,@JsonKey(name: 'name_uz') String? nameUz, String kind, String path, double distance
});




}
/// @nodoc
class _$ReverseGeocodeResultDtoCopyWithImpl<$Res>
    implements $ReverseGeocodeResultDtoCopyWith<$Res> {
  _$ReverseGeocodeResultDtoCopyWithImpl(this._self, this._then);

  final ReverseGeocodeResultDto _self;
  final $Res Function(ReverseGeocodeResultDto) _then;

/// Create a copy of ReverseGeocodeResultDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? nameRu = freezed,Object? nameUz = freezed,Object? kind = null,Object? path = null,Object? distance = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,nameRu: freezed == nameRu ? _self.nameRu : nameRu // ignore: cast_nullable_to_non_nullable
as String?,nameUz: freezed == nameUz ? _self.nameUz : nameUz // ignore: cast_nullable_to_non_nullable
as String?,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as String,path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,distance: null == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [ReverseGeocodeResultDto].
extension ReverseGeocodeResultDtoPatterns on ReverseGeocodeResultDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReverseGeocodeResultDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReverseGeocodeResultDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReverseGeocodeResultDto value)  $default,){
final _that = this;
switch (_that) {
case _ReverseGeocodeResultDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReverseGeocodeResultDto value)?  $default,){
final _that = this;
switch (_that) {
case _ReverseGeocodeResultDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name, @JsonKey(name: 'name_ru')  String? nameRu, @JsonKey(name: 'name_uz')  String? nameUz,  String kind,  String path,  double distance)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReverseGeocodeResultDto() when $default != null:
return $default(_that.id,_that.name,_that.nameRu,_that.nameUz,_that.kind,_that.path,_that.distance);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name, @JsonKey(name: 'name_ru')  String? nameRu, @JsonKey(name: 'name_uz')  String? nameUz,  String kind,  String path,  double distance)  $default,) {final _that = this;
switch (_that) {
case _ReverseGeocodeResultDto():
return $default(_that.id,_that.name,_that.nameRu,_that.nameUz,_that.kind,_that.path,_that.distance);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name, @JsonKey(name: 'name_ru')  String? nameRu, @JsonKey(name: 'name_uz')  String? nameUz,  String kind,  String path,  double distance)?  $default,) {final _that = this;
switch (_that) {
case _ReverseGeocodeResultDto() when $default != null:
return $default(_that.id,_that.name,_that.nameRu,_that.nameUz,_that.kind,_that.path,_that.distance);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReverseGeocodeResultDto implements ReverseGeocodeResultDto {
  const _ReverseGeocodeResultDto({required this.id, required this.name, @JsonKey(name: 'name_ru') this.nameRu, @JsonKey(name: 'name_uz') this.nameUz, required this.kind, required this.path, required this.distance});
  factory _ReverseGeocodeResultDto.fromJson(Map<String, dynamic> json) => _$ReverseGeocodeResultDtoFromJson(json);

@override final  int id;
@override final  String name;
@override@JsonKey(name: 'name_ru') final  String? nameRu;
@override@JsonKey(name: 'name_uz') final  String? nameUz;
@override final  String kind;
@override final  String path;
@override final  double distance;

/// Create a copy of ReverseGeocodeResultDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReverseGeocodeResultDtoCopyWith<_ReverseGeocodeResultDto> get copyWith => __$ReverseGeocodeResultDtoCopyWithImpl<_ReverseGeocodeResultDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReverseGeocodeResultDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReverseGeocodeResultDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.nameRu, nameRu) || other.nameRu == nameRu)&&(identical(other.nameUz, nameUz) || other.nameUz == nameUz)&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.path, path) || other.path == path)&&(identical(other.distance, distance) || other.distance == distance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,nameRu,nameUz,kind,path,distance);

@override
String toString() {
  return 'ReverseGeocodeResultDto(id: $id, name: $name, nameRu: $nameRu, nameUz: $nameUz, kind: $kind, path: $path, distance: $distance)';
}


}

/// @nodoc
abstract mixin class _$ReverseGeocodeResultDtoCopyWith<$Res> implements $ReverseGeocodeResultDtoCopyWith<$Res> {
  factory _$ReverseGeocodeResultDtoCopyWith(_ReverseGeocodeResultDto value, $Res Function(_ReverseGeocodeResultDto) _then) = __$ReverseGeocodeResultDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, String name,@JsonKey(name: 'name_ru') String? nameRu,@JsonKey(name: 'name_uz') String? nameUz, String kind, String path, double distance
});




}
/// @nodoc
class __$ReverseGeocodeResultDtoCopyWithImpl<$Res>
    implements _$ReverseGeocodeResultDtoCopyWith<$Res> {
  __$ReverseGeocodeResultDtoCopyWithImpl(this._self, this._then);

  final _ReverseGeocodeResultDto _self;
  final $Res Function(_ReverseGeocodeResultDto) _then;

/// Create a copy of ReverseGeocodeResultDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? nameRu = freezed,Object? nameUz = freezed,Object? kind = null,Object? path = null,Object? distance = null,}) {
  return _then(_ReverseGeocodeResultDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,nameRu: freezed == nameRu ? _self.nameRu : nameRu // ignore: cast_nullable_to_non_nullable
as String?,nameUz: freezed == nameUz ? _self.nameUz : nameUz // ignore: cast_nullable_to_non_nullable
as String?,kind: null == kind ? _self.kind : kind // ignore: cast_nullable_to_non_nullable
as String,path: null == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String,distance: null == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
