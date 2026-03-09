// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Category {

 int get id; String get name; String get slug; String? get icon; String? get iconUrl; bool get isLeaf; int? get parentId; List<Category>? get children;
/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryCopyWith<Category> get copyWith => _$CategoryCopyWithImpl<Category>(this as Category, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Category&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl)&&(identical(other.isLeaf, isLeaf) || other.isLeaf == isLeaf)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&const DeepCollectionEquality().equals(other.children, children));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,slug,icon,iconUrl,isLeaf,parentId,const DeepCollectionEquality().hash(children));

@override
String toString() {
  return 'Category(id: $id, name: $name, slug: $slug, icon: $icon, iconUrl: $iconUrl, isLeaf: $isLeaf, parentId: $parentId, children: $children)';
}


}

/// @nodoc
abstract mixin class $CategoryCopyWith<$Res>  {
  factory $CategoryCopyWith(Category value, $Res Function(Category) _then) = _$CategoryCopyWithImpl;
@useResult
$Res call({
 int id, String name, String slug, String? icon, String? iconUrl, bool isLeaf, int? parentId, List<Category>? children
});




}
/// @nodoc
class _$CategoryCopyWithImpl<$Res>
    implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._self, this._then);

  final Category _self;
  final $Res Function(Category) _then;

/// Create a copy of Category
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
as List<Category>?,
  ));
}

}


/// Adds pattern-matching-related methods to [Category].
extension CategoryPatterns on Category {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Category value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Category() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Category value)  $default,){
final _that = this;
switch (_that) {
case _Category():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Category value)?  $default,){
final _that = this;
switch (_that) {
case _Category() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String slug,  String? icon,  String? iconUrl,  bool isLeaf,  int? parentId,  List<Category>? children)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Category() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String slug,  String? icon,  String? iconUrl,  bool isLeaf,  int? parentId,  List<Category>? children)  $default,) {final _that = this;
switch (_that) {
case _Category():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String slug,  String? icon,  String? iconUrl,  bool isLeaf,  int? parentId,  List<Category>? children)?  $default,) {final _that = this;
switch (_that) {
case _Category() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.icon,_that.iconUrl,_that.isLeaf,_that.parentId,_that.children);case _:
  return null;

}
}

}

/// @nodoc


class _Category implements Category {
  const _Category({required this.id, required this.name, required this.slug, this.icon, this.iconUrl, this.isLeaf = false, this.parentId, final  List<Category>? children}): _children = children;
  

@override final  int id;
@override final  String name;
@override final  String slug;
@override final  String? icon;
@override final  String? iconUrl;
@override@JsonKey() final  bool isLeaf;
@override final  int? parentId;
 final  List<Category>? _children;
@override List<Category>? get children {
  final value = _children;
  if (value == null) return null;
  if (_children is EqualUnmodifiableListView) return _children;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryCopyWith<_Category> get copyWith => __$CategoryCopyWithImpl<_Category>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Category&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl)&&(identical(other.isLeaf, isLeaf) || other.isLeaf == isLeaf)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&const DeepCollectionEquality().equals(other._children, _children));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,slug,icon,iconUrl,isLeaf,parentId,const DeepCollectionEquality().hash(_children));

@override
String toString() {
  return 'Category(id: $id, name: $name, slug: $slug, icon: $icon, iconUrl: $iconUrl, isLeaf: $isLeaf, parentId: $parentId, children: $children)';
}


}

/// @nodoc
abstract mixin class _$CategoryCopyWith<$Res> implements $CategoryCopyWith<$Res> {
  factory _$CategoryCopyWith(_Category value, $Res Function(_Category) _then) = __$CategoryCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String slug, String? icon, String? iconUrl, bool isLeaf, int? parentId, List<Category>? children
});




}
/// @nodoc
class __$CategoryCopyWithImpl<$Res>
    implements _$CategoryCopyWith<$Res> {
  __$CategoryCopyWithImpl(this._self, this._then);

  final _Category _self;
  final $Res Function(_Category) _then;

/// Create a copy of Category
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? slug = null,Object? icon = freezed,Object? iconUrl = freezed,Object? isLeaf = null,Object? parentId = freezed,Object? children = freezed,}) {
  return _then(_Category(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,iconUrl: freezed == iconUrl ? _self.iconUrl : iconUrl // ignore: cast_nullable_to_non_nullable
as String?,isLeaf: null == isLeaf ? _self.isLeaf : isLeaf // ignore: cast_nullable_to_non_nullable
as bool,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as int?,children: freezed == children ? _self._children : children // ignore: cast_nullable_to_non_nullable
as List<Category>?,
  ));
}


}

/// @nodoc
mixin _$Attribute {

 int get id; String get key; String get label; AttributeType get type; List<String>? get options; bool get required; int? get order;
/// Create a copy of Attribute
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttributeCopyWith<Attribute> get copyWith => _$AttributeCopyWithImpl<Attribute>(this as Attribute, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Attribute&&(identical(other.id, id) || other.id == id)&&(identical(other.key, key) || other.key == key)&&(identical(other.label, label) || other.label == label)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other.options, options)&&(identical(other.required, required) || other.required == required)&&(identical(other.order, order) || other.order == order));
}


@override
int get hashCode => Object.hash(runtimeType,id,key,label,type,const DeepCollectionEquality().hash(options),required,order);

@override
String toString() {
  return 'Attribute(id: $id, key: $key, label: $label, type: $type, options: $options, required: $required, order: $order)';
}


}

/// @nodoc
abstract mixin class $AttributeCopyWith<$Res>  {
  factory $AttributeCopyWith(Attribute value, $Res Function(Attribute) _then) = _$AttributeCopyWithImpl;
@useResult
$Res call({
 int id, String key, String label, AttributeType type, List<String>? options, bool required, int? order
});




}
/// @nodoc
class _$AttributeCopyWithImpl<$Res>
    implements $AttributeCopyWith<$Res> {
  _$AttributeCopyWithImpl(this._self, this._then);

  final Attribute _self;
  final $Res Function(Attribute) _then;

/// Create a copy of Attribute
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? key = null,Object? label = null,Object? type = null,Object? options = freezed,Object? required = null,Object? order = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as AttributeType,options: freezed == options ? _self.options : options // ignore: cast_nullable_to_non_nullable
as List<String>?,required: null == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as bool,order: freezed == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [Attribute].
extension AttributePatterns on Attribute {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Attribute value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Attribute() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Attribute value)  $default,){
final _that = this;
switch (_that) {
case _Attribute():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Attribute value)?  $default,){
final _that = this;
switch (_that) {
case _Attribute() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String key,  String label,  AttributeType type,  List<String>? options,  bool required,  int? order)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Attribute() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String key,  String label,  AttributeType type,  List<String>? options,  bool required,  int? order)  $default,) {final _that = this;
switch (_that) {
case _Attribute():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String key,  String label,  AttributeType type,  List<String>? options,  bool required,  int? order)?  $default,) {final _that = this;
switch (_that) {
case _Attribute() when $default != null:
return $default(_that.id,_that.key,_that.label,_that.type,_that.options,_that.required,_that.order);case _:
  return null;

}
}

}

/// @nodoc


class _Attribute implements Attribute {
  const _Attribute({required this.id, required this.key, required this.label, required this.type, final  List<String>? options, this.required = false, this.order}): _options = options;
  

@override final  int id;
@override final  String key;
@override final  String label;
@override final  AttributeType type;
 final  List<String>? _options;
@override List<String>? get options {
  final value = _options;
  if (value == null) return null;
  if (_options is EqualUnmodifiableListView) return _options;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey() final  bool required;
@override final  int? order;

/// Create a copy of Attribute
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttributeCopyWith<_Attribute> get copyWith => __$AttributeCopyWithImpl<_Attribute>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Attribute&&(identical(other.id, id) || other.id == id)&&(identical(other.key, key) || other.key == key)&&(identical(other.label, label) || other.label == label)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other._options, _options)&&(identical(other.required, required) || other.required == required)&&(identical(other.order, order) || other.order == order));
}


@override
int get hashCode => Object.hash(runtimeType,id,key,label,type,const DeepCollectionEquality().hash(_options),required,order);

@override
String toString() {
  return 'Attribute(id: $id, key: $key, label: $label, type: $type, options: $options, required: $required, order: $order)';
}


}

/// @nodoc
abstract mixin class _$AttributeCopyWith<$Res> implements $AttributeCopyWith<$Res> {
  factory _$AttributeCopyWith(_Attribute value, $Res Function(_Attribute) _then) = __$AttributeCopyWithImpl;
@override @useResult
$Res call({
 int id, String key, String label, AttributeType type, List<String>? options, bool required, int? order
});




}
/// @nodoc
class __$AttributeCopyWithImpl<$Res>
    implements _$AttributeCopyWith<$Res> {
  __$AttributeCopyWithImpl(this._self, this._then);

  final _Attribute _self;
  final $Res Function(_Attribute) _then;

/// Create a copy of Attribute
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? key = null,Object? label = null,Object? type = null,Object? options = freezed,Object? required = null,Object? order = freezed,}) {
  return _then(_Attribute(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as AttributeType,options: freezed == options ? _self._options : options // ignore: cast_nullable_to_non_nullable
as List<String>?,required: null == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as bool,order: freezed == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
