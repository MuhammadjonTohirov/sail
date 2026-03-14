// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'geo_location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GeoLocation {

 double get lat; double get lon; String? get displayName; String? get type;
/// Create a copy of GeoLocation
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GeoLocationCopyWith<GeoLocation> get copyWith => _$GeoLocationCopyWithImpl<GeoLocation>(this as GeoLocation, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GeoLocation&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lon, lon) || other.lon == lon)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,lat,lon,displayName,type);

@override
String toString() {
  return 'GeoLocation(lat: $lat, lon: $lon, displayName: $displayName, type: $type)';
}


}

/// @nodoc
abstract mixin class $GeoLocationCopyWith<$Res>  {
  factory $GeoLocationCopyWith(GeoLocation value, $Res Function(GeoLocation) _then) = _$GeoLocationCopyWithImpl;
@useResult
$Res call({
 double lat, double lon, String? displayName, String? type
});




}
/// @nodoc
class _$GeoLocationCopyWithImpl<$Res>
    implements $GeoLocationCopyWith<$Res> {
  _$GeoLocationCopyWithImpl(this._self, this._then);

  final GeoLocation _self;
  final $Res Function(GeoLocation) _then;

/// Create a copy of GeoLocation
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? lat = null,Object? lon = null,Object? displayName = freezed,Object? type = freezed,}) {
  return _then(_self.copyWith(
lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,lon: null == lon ? _self.lon : lon // ignore: cast_nullable_to_non_nullable
as double,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [GeoLocation].
extension GeoLocationPatterns on GeoLocation {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GeoLocation value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GeoLocation() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GeoLocation value)  $default,){
final _that = this;
switch (_that) {
case _GeoLocation():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GeoLocation value)?  $default,){
final _that = this;
switch (_that) {
case _GeoLocation() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double lat,  double lon,  String? displayName,  String? type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GeoLocation() when $default != null:
return $default(_that.lat,_that.lon,_that.displayName,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double lat,  double lon,  String? displayName,  String? type)  $default,) {final _that = this;
switch (_that) {
case _GeoLocation():
return $default(_that.lat,_that.lon,_that.displayName,_that.type);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double lat,  double lon,  String? displayName,  String? type)?  $default,) {final _that = this;
switch (_that) {
case _GeoLocation() when $default != null:
return $default(_that.lat,_that.lon,_that.displayName,_that.type);case _:
  return null;

}
}

}

/// @nodoc


class _GeoLocation implements GeoLocation {
  const _GeoLocation({required this.lat, required this.lon, this.displayName, this.type});
  

@override final  double lat;
@override final  double lon;
@override final  String? displayName;
@override final  String? type;

/// Create a copy of GeoLocation
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GeoLocationCopyWith<_GeoLocation> get copyWith => __$GeoLocationCopyWithImpl<_GeoLocation>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GeoLocation&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lon, lon) || other.lon == lon)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,lat,lon,displayName,type);

@override
String toString() {
  return 'GeoLocation(lat: $lat, lon: $lon, displayName: $displayName, type: $type)';
}


}

/// @nodoc
abstract mixin class _$GeoLocationCopyWith<$Res> implements $GeoLocationCopyWith<$Res> {
  factory _$GeoLocationCopyWith(_GeoLocation value, $Res Function(_GeoLocation) _then) = __$GeoLocationCopyWithImpl;
@override @useResult
$Res call({
 double lat, double lon, String? displayName, String? type
});




}
/// @nodoc
class __$GeoLocationCopyWithImpl<$Res>
    implements _$GeoLocationCopyWith<$Res> {
  __$GeoLocationCopyWithImpl(this._self, this._then);

  final _GeoLocation _self;
  final $Res Function(_GeoLocation) _then;

/// Create a copy of GeoLocation
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? lat = null,Object? lon = null,Object? displayName = freezed,Object? type = freezed,}) {
  return _then(_GeoLocation(
lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,lon: null == lon ? _self.lon : lon // ignore: cast_nullable_to_non_nullable
as double,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
