// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Location {

 int get id; String get name; String get slug; int? get parentId; int? get level; List<Location>? get children;
/// Create a copy of Location
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocationCopyWith<Location> get copyWith => _$LocationCopyWithImpl<Location>(this as Location, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Location&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.level, level) || other.level == level)&&const DeepCollectionEquality().equals(other.children, children));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,slug,parentId,level,const DeepCollectionEquality().hash(children));

@override
String toString() {
  return 'Location(id: $id, name: $name, slug: $slug, parentId: $parentId, level: $level, children: $children)';
}


}

/// @nodoc
abstract mixin class $LocationCopyWith<$Res>  {
  factory $LocationCopyWith(Location value, $Res Function(Location) _then) = _$LocationCopyWithImpl;
@useResult
$Res call({
 int id, String name, String slug, int? parentId, int? level, List<Location>? children
});




}
/// @nodoc
class _$LocationCopyWithImpl<$Res>
    implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._self, this._then);

  final Location _self;
  final $Res Function(Location) _then;

/// Create a copy of Location
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? slug = null,Object? parentId = freezed,Object? level = freezed,Object? children = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as int?,level: freezed == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int?,children: freezed == children ? _self.children : children // ignore: cast_nullable_to_non_nullable
as List<Location>?,
  ));
}

}


/// Adds pattern-matching-related methods to [Location].
extension LocationPatterns on Location {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Location value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Location() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Location value)  $default,){
final _that = this;
switch (_that) {
case _Location():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Location value)?  $default,){
final _that = this;
switch (_that) {
case _Location() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String slug,  int? parentId,  int? level,  List<Location>? children)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Location() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String slug,  int? parentId,  int? level,  List<Location>? children)  $default,) {final _that = this;
switch (_that) {
case _Location():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String slug,  int? parentId,  int? level,  List<Location>? children)?  $default,) {final _that = this;
switch (_that) {
case _Location() when $default != null:
return $default(_that.id,_that.name,_that.slug,_that.parentId,_that.level,_that.children);case _:
  return null;

}
}

}

/// @nodoc


class _Location implements Location {
  const _Location({required this.id, required this.name, required this.slug, this.parentId, this.level, final  List<Location>? children}): _children = children;
  

@override final  int id;
@override final  String name;
@override final  String slug;
@override final  int? parentId;
@override final  int? level;
 final  List<Location>? _children;
@override List<Location>? get children {
  final value = _children;
  if (value == null) return null;
  if (_children is EqualUnmodifiableListView) return _children;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of Location
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LocationCopyWith<_Location> get copyWith => __$LocationCopyWithImpl<_Location>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Location&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&(identical(other.level, level) || other.level == level)&&const DeepCollectionEquality().equals(other._children, _children));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,slug,parentId,level,const DeepCollectionEquality().hash(_children));

@override
String toString() {
  return 'Location(id: $id, name: $name, slug: $slug, parentId: $parentId, level: $level, children: $children)';
}


}

/// @nodoc
abstract mixin class _$LocationCopyWith<$Res> implements $LocationCopyWith<$Res> {
  factory _$LocationCopyWith(_Location value, $Res Function(_Location) _then) = __$LocationCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String slug, int? parentId, int? level, List<Location>? children
});




}
/// @nodoc
class __$LocationCopyWithImpl<$Res>
    implements _$LocationCopyWith<$Res> {
  __$LocationCopyWithImpl(this._self, this._then);

  final _Location _self;
  final $Res Function(_Location) _then;

/// Create a copy of Location
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? slug = null,Object? parentId = freezed,Object? level = freezed,Object? children = freezed,}) {
  return _then(_Location(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,slug: null == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as int?,level: freezed == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int?,children: freezed == children ? _self._children : children // ignore: cast_nullable_to_non_nullable
as List<Location>?,
  ));
}


}

/// @nodoc
mixin _$ReverseGeocodeResult {

 int get id; String get name; String? get nameRu; String? get nameUz; String get kind; String get path; double get distance;
/// Create a copy of ReverseGeocodeResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReverseGeocodeResultCopyWith<ReverseGeocodeResult> get copyWith => _$ReverseGeocodeResultCopyWithImpl<ReverseGeocodeResult>(this as ReverseGeocodeResult, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReverseGeocodeResult&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.nameRu, nameRu) || other.nameRu == nameRu)&&(identical(other.nameUz, nameUz) || other.nameUz == nameUz)&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.path, path) || other.path == path)&&(identical(other.distance, distance) || other.distance == distance));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,nameRu,nameUz,kind,path,distance);

@override
String toString() {
  return 'ReverseGeocodeResult(id: $id, name: $name, nameRu: $nameRu, nameUz: $nameUz, kind: $kind, path: $path, distance: $distance)';
}


}

/// @nodoc
abstract mixin class $ReverseGeocodeResultCopyWith<$Res>  {
  factory $ReverseGeocodeResultCopyWith(ReverseGeocodeResult value, $Res Function(ReverseGeocodeResult) _then) = _$ReverseGeocodeResultCopyWithImpl;
@useResult
$Res call({
 int id, String name, String? nameRu, String? nameUz, String kind, String path, double distance
});




}
/// @nodoc
class _$ReverseGeocodeResultCopyWithImpl<$Res>
    implements $ReverseGeocodeResultCopyWith<$Res> {
  _$ReverseGeocodeResultCopyWithImpl(this._self, this._then);

  final ReverseGeocodeResult _self;
  final $Res Function(ReverseGeocodeResult) _then;

/// Create a copy of ReverseGeocodeResult
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


/// Adds pattern-matching-related methods to [ReverseGeocodeResult].
extension ReverseGeocodeResultPatterns on ReverseGeocodeResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReverseGeocodeResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReverseGeocodeResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReverseGeocodeResult value)  $default,){
final _that = this;
switch (_that) {
case _ReverseGeocodeResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReverseGeocodeResult value)?  $default,){
final _that = this;
switch (_that) {
case _ReverseGeocodeResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String? nameRu,  String? nameUz,  String kind,  String path,  double distance)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReverseGeocodeResult() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String? nameRu,  String? nameUz,  String kind,  String path,  double distance)  $default,) {final _that = this;
switch (_that) {
case _ReverseGeocodeResult():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String? nameRu,  String? nameUz,  String kind,  String path,  double distance)?  $default,) {final _that = this;
switch (_that) {
case _ReverseGeocodeResult() when $default != null:
return $default(_that.id,_that.name,_that.nameRu,_that.nameUz,_that.kind,_that.path,_that.distance);case _:
  return null;

}
}

}

/// @nodoc


class _ReverseGeocodeResult implements ReverseGeocodeResult {
  const _ReverseGeocodeResult({required this.id, required this.name, this.nameRu, this.nameUz, required this.kind, required this.path, required this.distance});
  

@override final  int id;
@override final  String name;
@override final  String? nameRu;
@override final  String? nameUz;
@override final  String kind;
@override final  String path;
@override final  double distance;

/// Create a copy of ReverseGeocodeResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReverseGeocodeResultCopyWith<_ReverseGeocodeResult> get copyWith => __$ReverseGeocodeResultCopyWithImpl<_ReverseGeocodeResult>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReverseGeocodeResult&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.nameRu, nameRu) || other.nameRu == nameRu)&&(identical(other.nameUz, nameUz) || other.nameUz == nameUz)&&(identical(other.kind, kind) || other.kind == kind)&&(identical(other.path, path) || other.path == path)&&(identical(other.distance, distance) || other.distance == distance));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,nameRu,nameUz,kind,path,distance);

@override
String toString() {
  return 'ReverseGeocodeResult(id: $id, name: $name, nameRu: $nameRu, nameUz: $nameUz, kind: $kind, path: $path, distance: $distance)';
}


}

/// @nodoc
abstract mixin class _$ReverseGeocodeResultCopyWith<$Res> implements $ReverseGeocodeResultCopyWith<$Res> {
  factory _$ReverseGeocodeResultCopyWith(_ReverseGeocodeResult value, $Res Function(_ReverseGeocodeResult) _then) = __$ReverseGeocodeResultCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String? nameRu, String? nameUz, String kind, String path, double distance
});




}
/// @nodoc
class __$ReverseGeocodeResultCopyWithImpl<$Res>
    implements _$ReverseGeocodeResultCopyWith<$Res> {
  __$ReverseGeocodeResultCopyWithImpl(this._self, this._then);

  final _ReverseGeocodeResult _self;
  final $Res Function(_ReverseGeocodeResult) _then;

/// Create a copy of ReverseGeocodeResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? nameRu = freezed,Object? nameUz = freezed,Object? kind = null,Object? path = null,Object? distance = null,}) {
  return _then(_ReverseGeocodeResult(
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
