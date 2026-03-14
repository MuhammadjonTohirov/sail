// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'public_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PublicUser {

 int get id; String? get displayName; String? get avatarUrl; String? get logo; String? get banner; String? get phoneE164; int? get locationId; String? get since; String? get lastActiveAt;
/// Create a copy of PublicUser
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PublicUserCopyWith<PublicUser> get copyWith => _$PublicUserCopyWithImpl<PublicUser>(this as PublicUser, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PublicUser&&(identical(other.id, id) || other.id == id)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.banner, banner) || other.banner == banner)&&(identical(other.phoneE164, phoneE164) || other.phoneE164 == phoneE164)&&(identical(other.locationId, locationId) || other.locationId == locationId)&&(identical(other.since, since) || other.since == since)&&(identical(other.lastActiveAt, lastActiveAt) || other.lastActiveAt == lastActiveAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,displayName,avatarUrl,logo,banner,phoneE164,locationId,since,lastActiveAt);

@override
String toString() {
  return 'PublicUser(id: $id, displayName: $displayName, avatarUrl: $avatarUrl, logo: $logo, banner: $banner, phoneE164: $phoneE164, locationId: $locationId, since: $since, lastActiveAt: $lastActiveAt)';
}


}

/// @nodoc
abstract mixin class $PublicUserCopyWith<$Res>  {
  factory $PublicUserCopyWith(PublicUser value, $Res Function(PublicUser) _then) = _$PublicUserCopyWithImpl;
@useResult
$Res call({
 int id, String? displayName, String? avatarUrl, String? logo, String? banner, String? phoneE164, int? locationId, String? since, String? lastActiveAt
});




}
/// @nodoc
class _$PublicUserCopyWithImpl<$Res>
    implements $PublicUserCopyWith<$Res> {
  _$PublicUserCopyWithImpl(this._self, this._then);

  final PublicUser _self;
  final $Res Function(PublicUser) _then;

/// Create a copy of PublicUser
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


/// Adds pattern-matching-related methods to [PublicUser].
extension PublicUserPatterns on PublicUser {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PublicUser value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PublicUser() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PublicUser value)  $default,){
final _that = this;
switch (_that) {
case _PublicUser():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PublicUser value)?  $default,){
final _that = this;
switch (_that) {
case _PublicUser() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String? displayName,  String? avatarUrl,  String? logo,  String? banner,  String? phoneE164,  int? locationId,  String? since,  String? lastActiveAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PublicUser() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String? displayName,  String? avatarUrl,  String? logo,  String? banner,  String? phoneE164,  int? locationId,  String? since,  String? lastActiveAt)  $default,) {final _that = this;
switch (_that) {
case _PublicUser():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String? displayName,  String? avatarUrl,  String? logo,  String? banner,  String? phoneE164,  int? locationId,  String? since,  String? lastActiveAt)?  $default,) {final _that = this;
switch (_that) {
case _PublicUser() when $default != null:
return $default(_that.id,_that.displayName,_that.avatarUrl,_that.logo,_that.banner,_that.phoneE164,_that.locationId,_that.since,_that.lastActiveAt);case _:
  return null;

}
}

}

/// @nodoc


class _PublicUser implements PublicUser {
  const _PublicUser({required this.id, this.displayName, this.avatarUrl, this.logo, this.banner, this.phoneE164, this.locationId, this.since, this.lastActiveAt});
  

@override final  int id;
@override final  String? displayName;
@override final  String? avatarUrl;
@override final  String? logo;
@override final  String? banner;
@override final  String? phoneE164;
@override final  int? locationId;
@override final  String? since;
@override final  String? lastActiveAt;

/// Create a copy of PublicUser
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PublicUserCopyWith<_PublicUser> get copyWith => __$PublicUserCopyWithImpl<_PublicUser>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PublicUser&&(identical(other.id, id) || other.id == id)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.banner, banner) || other.banner == banner)&&(identical(other.phoneE164, phoneE164) || other.phoneE164 == phoneE164)&&(identical(other.locationId, locationId) || other.locationId == locationId)&&(identical(other.since, since) || other.since == since)&&(identical(other.lastActiveAt, lastActiveAt) || other.lastActiveAt == lastActiveAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,displayName,avatarUrl,logo,banner,phoneE164,locationId,since,lastActiveAt);

@override
String toString() {
  return 'PublicUser(id: $id, displayName: $displayName, avatarUrl: $avatarUrl, logo: $logo, banner: $banner, phoneE164: $phoneE164, locationId: $locationId, since: $since, lastActiveAt: $lastActiveAt)';
}


}

/// @nodoc
abstract mixin class _$PublicUserCopyWith<$Res> implements $PublicUserCopyWith<$Res> {
  factory _$PublicUserCopyWith(_PublicUser value, $Res Function(_PublicUser) _then) = __$PublicUserCopyWithImpl;
@override @useResult
$Res call({
 int id, String? displayName, String? avatarUrl, String? logo, String? banner, String? phoneE164, int? locationId, String? since, String? lastActiveAt
});




}
/// @nodoc
class __$PublicUserCopyWithImpl<$Res>
    implements _$PublicUserCopyWith<$Res> {
  __$PublicUserCopyWithImpl(this._self, this._then);

  final _PublicUser _self;
  final $Res Function(_PublicUser) _then;

/// Create a copy of PublicUser
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? displayName = freezed,Object? avatarUrl = freezed,Object? logo = freezed,Object? banner = freezed,Object? phoneE164 = freezed,Object? locationId = freezed,Object? since = freezed,Object? lastActiveAt = freezed,}) {
  return _then(_PublicUser(
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
