// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'public_user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PublicUserDto {

 int get id;@JsonKey(name: 'display_name') String? get displayName;@JsonKey(name: 'avatar_url') String? get avatarUrl; String? get logo; String? get banner;@JsonKey(name: 'phone_e164') String? get phoneE164;@JsonKey(name: 'location_id') int? get locationId; String? get since;@JsonKey(name: 'last_active_at') String? get lastActiveAt;
/// Create a copy of PublicUserDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PublicUserDtoCopyWith<PublicUserDto> get copyWith => _$PublicUserDtoCopyWithImpl<PublicUserDto>(this as PublicUserDto, _$identity);

  /// Serializes this PublicUserDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PublicUserDto&&(identical(other.id, id) || other.id == id)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.banner, banner) || other.banner == banner)&&(identical(other.phoneE164, phoneE164) || other.phoneE164 == phoneE164)&&(identical(other.locationId, locationId) || other.locationId == locationId)&&(identical(other.since, since) || other.since == since)&&(identical(other.lastActiveAt, lastActiveAt) || other.lastActiveAt == lastActiveAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,displayName,avatarUrl,logo,banner,phoneE164,locationId,since,lastActiveAt);

@override
String toString() {
  return 'PublicUserDto(id: $id, displayName: $displayName, avatarUrl: $avatarUrl, logo: $logo, banner: $banner, phoneE164: $phoneE164, locationId: $locationId, since: $since, lastActiveAt: $lastActiveAt)';
}


}

/// @nodoc
abstract mixin class $PublicUserDtoCopyWith<$Res>  {
  factory $PublicUserDtoCopyWith(PublicUserDto value, $Res Function(PublicUserDto) _then) = _$PublicUserDtoCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'display_name') String? displayName,@JsonKey(name: 'avatar_url') String? avatarUrl, String? logo, String? banner,@JsonKey(name: 'phone_e164') String? phoneE164,@JsonKey(name: 'location_id') int? locationId, String? since,@JsonKey(name: 'last_active_at') String? lastActiveAt
});




}
/// @nodoc
class _$PublicUserDtoCopyWithImpl<$Res>
    implements $PublicUserDtoCopyWith<$Res> {
  _$PublicUserDtoCopyWithImpl(this._self, this._then);

  final PublicUserDto _self;
  final $Res Function(PublicUserDto) _then;

/// Create a copy of PublicUserDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? displayName = freezed,Object? avatarUrl = freezed,Object? logo = freezed,Object? banner = freezed,Object? phoneE164 = freezed,Object? locationId = freezed,Object? since = freezed,Object? lastActiveAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,logo: freezed == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String?,banner: freezed == banner ? _self.banner : banner // ignore: cast_nullable_to_non_nullable
as String?,phoneE164: freezed == phoneE164 ? _self.phoneE164 : phoneE164 // ignore: cast_nullable_to_non_nullable
as String?,locationId: freezed == locationId ? _self.locationId : locationId // ignore: cast_nullable_to_non_nullable
as int?,since: freezed == since ? _self.since : since // ignore: cast_nullable_to_non_nullable
as String?,lastActiveAt: freezed == lastActiveAt ? _self.lastActiveAt : lastActiveAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PublicUserDto].
extension PublicUserDtoPatterns on PublicUserDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PublicUserDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PublicUserDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PublicUserDto value)  $default,){
final _that = this;
switch (_that) {
case _PublicUserDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PublicUserDto value)?  $default,){
final _that = this;
switch (_that) {
case _PublicUserDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'display_name')  String? displayName, @JsonKey(name: 'avatar_url')  String? avatarUrl,  String? logo,  String? banner, @JsonKey(name: 'phone_e164')  String? phoneE164, @JsonKey(name: 'location_id')  int? locationId,  String? since, @JsonKey(name: 'last_active_at')  String? lastActiveAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PublicUserDto() when $default != null:
return $default(_that.id,_that.displayName,_that.avatarUrl,_that.logo,_that.banner,_that.phoneE164,_that.locationId,_that.since,_that.lastActiveAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'display_name')  String? displayName, @JsonKey(name: 'avatar_url')  String? avatarUrl,  String? logo,  String? banner, @JsonKey(name: 'phone_e164')  String? phoneE164, @JsonKey(name: 'location_id')  int? locationId,  String? since, @JsonKey(name: 'last_active_at')  String? lastActiveAt)  $default,) {final _that = this;
switch (_that) {
case _PublicUserDto():
return $default(_that.id,_that.displayName,_that.avatarUrl,_that.logo,_that.banner,_that.phoneE164,_that.locationId,_that.since,_that.lastActiveAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'display_name')  String? displayName, @JsonKey(name: 'avatar_url')  String? avatarUrl,  String? logo,  String? banner, @JsonKey(name: 'phone_e164')  String? phoneE164, @JsonKey(name: 'location_id')  int? locationId,  String? since, @JsonKey(name: 'last_active_at')  String? lastActiveAt)?  $default,) {final _that = this;
switch (_that) {
case _PublicUserDto() when $default != null:
return $default(_that.id,_that.displayName,_that.avatarUrl,_that.logo,_that.banner,_that.phoneE164,_that.locationId,_that.since,_that.lastActiveAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PublicUserDto implements PublicUserDto {
  const _PublicUserDto({required this.id, @JsonKey(name: 'display_name') this.displayName, @JsonKey(name: 'avatar_url') this.avatarUrl, this.logo, this.banner, @JsonKey(name: 'phone_e164') this.phoneE164, @JsonKey(name: 'location_id') this.locationId, this.since, @JsonKey(name: 'last_active_at') this.lastActiveAt});
  factory _PublicUserDto.fromJson(Map<String, dynamic> json) => _$PublicUserDtoFromJson(json);

@override final  int id;
@override@JsonKey(name: 'display_name') final  String? displayName;
@override@JsonKey(name: 'avatar_url') final  String? avatarUrl;
@override final  String? logo;
@override final  String? banner;
@override@JsonKey(name: 'phone_e164') final  String? phoneE164;
@override@JsonKey(name: 'location_id') final  int? locationId;
@override final  String? since;
@override@JsonKey(name: 'last_active_at') final  String? lastActiveAt;

/// Create a copy of PublicUserDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PublicUserDtoCopyWith<_PublicUserDto> get copyWith => __$PublicUserDtoCopyWithImpl<_PublicUserDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PublicUserDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PublicUserDto&&(identical(other.id, id) || other.id == id)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.banner, banner) || other.banner == banner)&&(identical(other.phoneE164, phoneE164) || other.phoneE164 == phoneE164)&&(identical(other.locationId, locationId) || other.locationId == locationId)&&(identical(other.since, since) || other.since == since)&&(identical(other.lastActiveAt, lastActiveAt) || other.lastActiveAt == lastActiveAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,displayName,avatarUrl,logo,banner,phoneE164,locationId,since,lastActiveAt);

@override
String toString() {
  return 'PublicUserDto(id: $id, displayName: $displayName, avatarUrl: $avatarUrl, logo: $logo, banner: $banner, phoneE164: $phoneE164, locationId: $locationId, since: $since, lastActiveAt: $lastActiveAt)';
}


}

/// @nodoc
abstract mixin class _$PublicUserDtoCopyWith<$Res> implements $PublicUserDtoCopyWith<$Res> {
  factory _$PublicUserDtoCopyWith(_PublicUserDto value, $Res Function(_PublicUserDto) _then) = __$PublicUserDtoCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'display_name') String? displayName,@JsonKey(name: 'avatar_url') String? avatarUrl, String? logo, String? banner,@JsonKey(name: 'phone_e164') String? phoneE164,@JsonKey(name: 'location_id') int? locationId, String? since,@JsonKey(name: 'last_active_at') String? lastActiveAt
});




}
/// @nodoc
class __$PublicUserDtoCopyWithImpl<$Res>
    implements _$PublicUserDtoCopyWith<$Res> {
  __$PublicUserDtoCopyWithImpl(this._self, this._then);

  final _PublicUserDto _self;
  final $Res Function(_PublicUserDto) _then;

/// Create a copy of PublicUserDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? displayName = freezed,Object? avatarUrl = freezed,Object? logo = freezed,Object? banner = freezed,Object? phoneE164 = freezed,Object? locationId = freezed,Object? since = freezed,Object? lastActiveAt = freezed,}) {
  return _then(_PublicUserDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,logo: freezed == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String?,banner: freezed == banner ? _self.banner : banner // ignore: cast_nullable_to_non_nullable
as String?,phoneE164: freezed == phoneE164 ? _self.phoneE164 : phoneE164 // ignore: cast_nullable_to_non_nullable
as String?,locationId: freezed == locationId ? _self.locationId : locationId // ignore: cast_nullable_to_non_nullable
as int?,since: freezed == since ? _self.since : since // ignore: cast_nullable_to_non_nullable
as String?,lastActiveAt: freezed == lastActiveAt ? _self.lastActiveAt : lastActiveAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
