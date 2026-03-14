// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'geocoding_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GeoLocationDto {

 double get lat; double get lon;@JsonKey(name: 'display_name') String? get displayName; String? get type;
/// Create a copy of GeoLocationDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GeoLocationDtoCopyWith<GeoLocationDto> get copyWith => _$GeoLocationDtoCopyWithImpl<GeoLocationDto>(this as GeoLocationDto, _$identity);

  /// Serializes this GeoLocationDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GeoLocationDto&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lon, lon) || other.lon == lon)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,lat,lon,displayName,type);

@override
String toString() {
  return 'GeoLocationDto(lat: $lat, lon: $lon, displayName: $displayName, type: $type)';
}


}

/// @nodoc
abstract mixin class $GeoLocationDtoCopyWith<$Res>  {
  factory $GeoLocationDtoCopyWith(GeoLocationDto value, $Res Function(GeoLocationDto) _then) = _$GeoLocationDtoCopyWithImpl;
@useResult
$Res call({
 double lat, double lon,@JsonKey(name: 'display_name') String? displayName, String? type
});




}
/// @nodoc
class _$GeoLocationDtoCopyWithImpl<$Res>
    implements $GeoLocationDtoCopyWith<$Res> {
  _$GeoLocationDtoCopyWithImpl(this._self, this._then);

  final GeoLocationDto _self;
  final $Res Function(GeoLocationDto) _then;

/// Create a copy of GeoLocationDto
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


/// Adds pattern-matching-related methods to [GeoLocationDto].
extension GeoLocationDtoPatterns on GeoLocationDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GeoLocationDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GeoLocationDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GeoLocationDto value)  $default,){
final _that = this;
switch (_that) {
case _GeoLocationDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GeoLocationDto value)?  $default,){
final _that = this;
switch (_that) {
case _GeoLocationDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double lat,  double lon, @JsonKey(name: 'display_name')  String? displayName,  String? type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GeoLocationDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double lat,  double lon, @JsonKey(name: 'display_name')  String? displayName,  String? type)  $default,) {final _that = this;
switch (_that) {
case _GeoLocationDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double lat,  double lon, @JsonKey(name: 'display_name')  String? displayName,  String? type)?  $default,) {final _that = this;
switch (_that) {
case _GeoLocationDto() when $default != null:
return $default(_that.lat,_that.lon,_that.displayName,_that.type);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GeoLocationDto implements GeoLocationDto {
  const _GeoLocationDto({required this.lat, required this.lon, @JsonKey(name: 'display_name') this.displayName, this.type});
  factory _GeoLocationDto.fromJson(Map<String, dynamic> json) => _$GeoLocationDtoFromJson(json);

@override final  double lat;
@override final  double lon;
@override@JsonKey(name: 'display_name') final  String? displayName;
@override final  String? type;

/// Create a copy of GeoLocationDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GeoLocationDtoCopyWith<_GeoLocationDto> get copyWith => __$GeoLocationDtoCopyWithImpl<_GeoLocationDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GeoLocationDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GeoLocationDto&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lon, lon) || other.lon == lon)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,lat,lon,displayName,type);

@override
String toString() {
  return 'GeoLocationDto(lat: $lat, lon: $lon, displayName: $displayName, type: $type)';
}


}

/// @nodoc
abstract mixin class _$GeoLocationDtoCopyWith<$Res> implements $GeoLocationDtoCopyWith<$Res> {
  factory _$GeoLocationDtoCopyWith(_GeoLocationDto value, $Res Function(_GeoLocationDto) _then) = __$GeoLocationDtoCopyWithImpl;
@override @useResult
$Res call({
 double lat, double lon,@JsonKey(name: 'display_name') String? displayName, String? type
});




}
/// @nodoc
class __$GeoLocationDtoCopyWithImpl<$Res>
    implements _$GeoLocationDtoCopyWith<$Res> {
  __$GeoLocationDtoCopyWithImpl(this._self, this._then);

  final _GeoLocationDto _self;
  final $Res Function(_GeoLocationDto) _then;

/// Create a copy of GeoLocationDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? lat = null,Object? lon = null,Object? displayName = freezed,Object? type = freezed,}) {
  return _then(_GeoLocationDto(
lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,lon: null == lon ? _self.lon : lon // ignore: cast_nullable_to_non_nullable
as double,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
