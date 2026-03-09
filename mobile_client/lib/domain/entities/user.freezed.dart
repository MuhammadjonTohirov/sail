// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserProfile {

 int get userId; String get username; String get phoneE164; String get email; String get displayName; String? get avatarUrl; String? get about; int? get locationId; String? get locationName; String? get logoUrl; String? get bannerUrl; int? get telegramId; String? get telegramUsername; String? get telegramPhotoUrl; bool get notifyNewMessages; bool get notifySavedSearches; bool get notifyPromotions; DateTime? get lastActiveAt; DateTime get createdAt;
/// Create a copy of UserProfile
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserProfileCopyWith<UserProfile> get copyWith => _$UserProfileCopyWithImpl<UserProfile>(this as UserProfile, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserProfile&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.username, username) || other.username == username)&&(identical(other.phoneE164, phoneE164) || other.phoneE164 == phoneE164)&&(identical(other.email, email) || other.email == email)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.about, about) || other.about == about)&&(identical(other.locationId, locationId) || other.locationId == locationId)&&(identical(other.locationName, locationName) || other.locationName == locationName)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl)&&(identical(other.bannerUrl, bannerUrl) || other.bannerUrl == bannerUrl)&&(identical(other.telegramId, telegramId) || other.telegramId == telegramId)&&(identical(other.telegramUsername, telegramUsername) || other.telegramUsername == telegramUsername)&&(identical(other.telegramPhotoUrl, telegramPhotoUrl) || other.telegramPhotoUrl == telegramPhotoUrl)&&(identical(other.notifyNewMessages, notifyNewMessages) || other.notifyNewMessages == notifyNewMessages)&&(identical(other.notifySavedSearches, notifySavedSearches) || other.notifySavedSearches == notifySavedSearches)&&(identical(other.notifyPromotions, notifyPromotions) || other.notifyPromotions == notifyPromotions)&&(identical(other.lastActiveAt, lastActiveAt) || other.lastActiveAt == lastActiveAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hashAll([runtimeType,userId,username,phoneE164,email,displayName,avatarUrl,about,locationId,locationName,logoUrl,bannerUrl,telegramId,telegramUsername,telegramPhotoUrl,notifyNewMessages,notifySavedSearches,notifyPromotions,lastActiveAt,createdAt]);

@override
String toString() {
  return 'UserProfile(userId: $userId, username: $username, phoneE164: $phoneE164, email: $email, displayName: $displayName, avatarUrl: $avatarUrl, about: $about, locationId: $locationId, locationName: $locationName, logoUrl: $logoUrl, bannerUrl: $bannerUrl, telegramId: $telegramId, telegramUsername: $telegramUsername, telegramPhotoUrl: $telegramPhotoUrl, notifyNewMessages: $notifyNewMessages, notifySavedSearches: $notifySavedSearches, notifyPromotions: $notifyPromotions, lastActiveAt: $lastActiveAt, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $UserProfileCopyWith<$Res>  {
  factory $UserProfileCopyWith(UserProfile value, $Res Function(UserProfile) _then) = _$UserProfileCopyWithImpl;
@useResult
$Res call({
 int userId, String username, String phoneE164, String email, String displayName, String? avatarUrl, String? about, int? locationId, String? locationName, String? logoUrl, String? bannerUrl, int? telegramId, String? telegramUsername, String? telegramPhotoUrl, bool notifyNewMessages, bool notifySavedSearches, bool notifyPromotions, DateTime? lastActiveAt, DateTime createdAt
});




}
/// @nodoc
class _$UserProfileCopyWithImpl<$Res>
    implements $UserProfileCopyWith<$Res> {
  _$UserProfileCopyWithImpl(this._self, this._then);

  final UserProfile _self;
  final $Res Function(UserProfile) _then;

/// Create a copy of UserProfile
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? username = null,Object? phoneE164 = null,Object? email = null,Object? displayName = null,Object? avatarUrl = freezed,Object? about = freezed,Object? locationId = freezed,Object? locationName = freezed,Object? logoUrl = freezed,Object? bannerUrl = freezed,Object? telegramId = freezed,Object? telegramUsername = freezed,Object? telegramPhotoUrl = freezed,Object? notifyNewMessages = null,Object? notifySavedSearches = null,Object? notifyPromotions = null,Object? lastActiveAt = freezed,Object? createdAt = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,phoneE164: null == phoneE164 ? _self.phoneE164 : phoneE164 // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,about: freezed == about ? _self.about : about // ignore: cast_nullable_to_non_nullable
as String?,locationId: freezed == locationId ? _self.locationId : locationId // ignore: cast_nullable_to_non_nullable
as int?,locationName: freezed == locationName ? _self.locationName : locationName // ignore: cast_nullable_to_non_nullable
as String?,logoUrl: freezed == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String?,bannerUrl: freezed == bannerUrl ? _self.bannerUrl : bannerUrl // ignore: cast_nullable_to_non_nullable
as String?,telegramId: freezed == telegramId ? _self.telegramId : telegramId // ignore: cast_nullable_to_non_nullable
as int?,telegramUsername: freezed == telegramUsername ? _self.telegramUsername : telegramUsername // ignore: cast_nullable_to_non_nullable
as String?,telegramPhotoUrl: freezed == telegramPhotoUrl ? _self.telegramPhotoUrl : telegramPhotoUrl // ignore: cast_nullable_to_non_nullable
as String?,notifyNewMessages: null == notifyNewMessages ? _self.notifyNewMessages : notifyNewMessages // ignore: cast_nullable_to_non_nullable
as bool,notifySavedSearches: null == notifySavedSearches ? _self.notifySavedSearches : notifySavedSearches // ignore: cast_nullable_to_non_nullable
as bool,notifyPromotions: null == notifyPromotions ? _self.notifyPromotions : notifyPromotions // ignore: cast_nullable_to_non_nullable
as bool,lastActiveAt: freezed == lastActiveAt ? _self.lastActiveAt : lastActiveAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [UserProfile].
extension UserProfilePatterns on UserProfile {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserProfile value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserProfile() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserProfile value)  $default,){
final _that = this;
switch (_that) {
case _UserProfile():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserProfile value)?  $default,){
final _that = this;
switch (_that) {
case _UserProfile() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int userId,  String username,  String phoneE164,  String email,  String displayName,  String? avatarUrl,  String? about,  int? locationId,  String? locationName,  String? logoUrl,  String? bannerUrl,  int? telegramId,  String? telegramUsername,  String? telegramPhotoUrl,  bool notifyNewMessages,  bool notifySavedSearches,  bool notifyPromotions,  DateTime? lastActiveAt,  DateTime createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserProfile() when $default != null:
return $default(_that.userId,_that.username,_that.phoneE164,_that.email,_that.displayName,_that.avatarUrl,_that.about,_that.locationId,_that.locationName,_that.logoUrl,_that.bannerUrl,_that.telegramId,_that.telegramUsername,_that.telegramPhotoUrl,_that.notifyNewMessages,_that.notifySavedSearches,_that.notifyPromotions,_that.lastActiveAt,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int userId,  String username,  String phoneE164,  String email,  String displayName,  String? avatarUrl,  String? about,  int? locationId,  String? locationName,  String? logoUrl,  String? bannerUrl,  int? telegramId,  String? telegramUsername,  String? telegramPhotoUrl,  bool notifyNewMessages,  bool notifySavedSearches,  bool notifyPromotions,  DateTime? lastActiveAt,  DateTime createdAt)  $default,) {final _that = this;
switch (_that) {
case _UserProfile():
return $default(_that.userId,_that.username,_that.phoneE164,_that.email,_that.displayName,_that.avatarUrl,_that.about,_that.locationId,_that.locationName,_that.logoUrl,_that.bannerUrl,_that.telegramId,_that.telegramUsername,_that.telegramPhotoUrl,_that.notifyNewMessages,_that.notifySavedSearches,_that.notifyPromotions,_that.lastActiveAt,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int userId,  String username,  String phoneE164,  String email,  String displayName,  String? avatarUrl,  String? about,  int? locationId,  String? locationName,  String? logoUrl,  String? bannerUrl,  int? telegramId,  String? telegramUsername,  String? telegramPhotoUrl,  bool notifyNewMessages,  bool notifySavedSearches,  bool notifyPromotions,  DateTime? lastActiveAt,  DateTime createdAt)?  $default,) {final _that = this;
switch (_that) {
case _UserProfile() when $default != null:
return $default(_that.userId,_that.username,_that.phoneE164,_that.email,_that.displayName,_that.avatarUrl,_that.about,_that.locationId,_that.locationName,_that.logoUrl,_that.bannerUrl,_that.telegramId,_that.telegramUsername,_that.telegramPhotoUrl,_that.notifyNewMessages,_that.notifySavedSearches,_that.notifyPromotions,_that.lastActiveAt,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc


class _UserProfile implements UserProfile {
  const _UserProfile({required this.userId, required this.username, required this.phoneE164, required this.email, required this.displayName, this.avatarUrl, this.about, this.locationId, this.locationName, this.logoUrl, this.bannerUrl, this.telegramId, this.telegramUsername, this.telegramPhotoUrl, this.notifyNewMessages = true, this.notifySavedSearches = true, this.notifyPromotions = true, this.lastActiveAt, required this.createdAt});
  

@override final  int userId;
@override final  String username;
@override final  String phoneE164;
@override final  String email;
@override final  String displayName;
@override final  String? avatarUrl;
@override final  String? about;
@override final  int? locationId;
@override final  String? locationName;
@override final  String? logoUrl;
@override final  String? bannerUrl;
@override final  int? telegramId;
@override final  String? telegramUsername;
@override final  String? telegramPhotoUrl;
@override@JsonKey() final  bool notifyNewMessages;
@override@JsonKey() final  bool notifySavedSearches;
@override@JsonKey() final  bool notifyPromotions;
@override final  DateTime? lastActiveAt;
@override final  DateTime createdAt;

/// Create a copy of UserProfile
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserProfileCopyWith<_UserProfile> get copyWith => __$UserProfileCopyWithImpl<_UserProfile>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserProfile&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.username, username) || other.username == username)&&(identical(other.phoneE164, phoneE164) || other.phoneE164 == phoneE164)&&(identical(other.email, email) || other.email == email)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.about, about) || other.about == about)&&(identical(other.locationId, locationId) || other.locationId == locationId)&&(identical(other.locationName, locationName) || other.locationName == locationName)&&(identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl)&&(identical(other.bannerUrl, bannerUrl) || other.bannerUrl == bannerUrl)&&(identical(other.telegramId, telegramId) || other.telegramId == telegramId)&&(identical(other.telegramUsername, telegramUsername) || other.telegramUsername == telegramUsername)&&(identical(other.telegramPhotoUrl, telegramPhotoUrl) || other.telegramPhotoUrl == telegramPhotoUrl)&&(identical(other.notifyNewMessages, notifyNewMessages) || other.notifyNewMessages == notifyNewMessages)&&(identical(other.notifySavedSearches, notifySavedSearches) || other.notifySavedSearches == notifySavedSearches)&&(identical(other.notifyPromotions, notifyPromotions) || other.notifyPromotions == notifyPromotions)&&(identical(other.lastActiveAt, lastActiveAt) || other.lastActiveAt == lastActiveAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hashAll([runtimeType,userId,username,phoneE164,email,displayName,avatarUrl,about,locationId,locationName,logoUrl,bannerUrl,telegramId,telegramUsername,telegramPhotoUrl,notifyNewMessages,notifySavedSearches,notifyPromotions,lastActiveAt,createdAt]);

@override
String toString() {
  return 'UserProfile(userId: $userId, username: $username, phoneE164: $phoneE164, email: $email, displayName: $displayName, avatarUrl: $avatarUrl, about: $about, locationId: $locationId, locationName: $locationName, logoUrl: $logoUrl, bannerUrl: $bannerUrl, telegramId: $telegramId, telegramUsername: $telegramUsername, telegramPhotoUrl: $telegramPhotoUrl, notifyNewMessages: $notifyNewMessages, notifySavedSearches: $notifySavedSearches, notifyPromotions: $notifyPromotions, lastActiveAt: $lastActiveAt, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$UserProfileCopyWith<$Res> implements $UserProfileCopyWith<$Res> {
  factory _$UserProfileCopyWith(_UserProfile value, $Res Function(_UserProfile) _then) = __$UserProfileCopyWithImpl;
@override @useResult
$Res call({
 int userId, String username, String phoneE164, String email, String displayName, String? avatarUrl, String? about, int? locationId, String? locationName, String? logoUrl, String? bannerUrl, int? telegramId, String? telegramUsername, String? telegramPhotoUrl, bool notifyNewMessages, bool notifySavedSearches, bool notifyPromotions, DateTime? lastActiveAt, DateTime createdAt
});




}
/// @nodoc
class __$UserProfileCopyWithImpl<$Res>
    implements _$UserProfileCopyWith<$Res> {
  __$UserProfileCopyWithImpl(this._self, this._then);

  final _UserProfile _self;
  final $Res Function(_UserProfile) _then;

/// Create a copy of UserProfile
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? username = null,Object? phoneE164 = null,Object? email = null,Object? displayName = null,Object? avatarUrl = freezed,Object? about = freezed,Object? locationId = freezed,Object? locationName = freezed,Object? logoUrl = freezed,Object? bannerUrl = freezed,Object? telegramId = freezed,Object? telegramUsername = freezed,Object? telegramPhotoUrl = freezed,Object? notifyNewMessages = null,Object? notifySavedSearches = null,Object? notifyPromotions = null,Object? lastActiveAt = freezed,Object? createdAt = null,}) {
  return _then(_UserProfile(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,phoneE164: null == phoneE164 ? _self.phoneE164 : phoneE164 // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,about: freezed == about ? _self.about : about // ignore: cast_nullable_to_non_nullable
as String?,locationId: freezed == locationId ? _self.locationId : locationId // ignore: cast_nullable_to_non_nullable
as int?,locationName: freezed == locationName ? _self.locationName : locationName // ignore: cast_nullable_to_non_nullable
as String?,logoUrl: freezed == logoUrl ? _self.logoUrl : logoUrl // ignore: cast_nullable_to_non_nullable
as String?,bannerUrl: freezed == bannerUrl ? _self.bannerUrl : bannerUrl // ignore: cast_nullable_to_non_nullable
as String?,telegramId: freezed == telegramId ? _self.telegramId : telegramId // ignore: cast_nullable_to_non_nullable
as int?,telegramUsername: freezed == telegramUsername ? _self.telegramUsername : telegramUsername // ignore: cast_nullable_to_non_nullable
as String?,telegramPhotoUrl: freezed == telegramPhotoUrl ? _self.telegramPhotoUrl : telegramPhotoUrl // ignore: cast_nullable_to_non_nullable
as String?,notifyNewMessages: null == notifyNewMessages ? _self.notifyNewMessages : notifyNewMessages // ignore: cast_nullable_to_non_nullable
as bool,notifySavedSearches: null == notifySavedSearches ? _self.notifySavedSearches : notifySavedSearches // ignore: cast_nullable_to_non_nullable
as bool,notifyPromotions: null == notifyPromotions ? _self.notifyPromotions : notifyPromotions // ignore: cast_nullable_to_non_nullable
as bool,lastActiveAt: freezed == lastActiveAt ? _self.lastActiveAt : lastActiveAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

/// @nodoc
mixin _$ListingUser {

 int get id; String? get phone; String? get name; String? get displayName; String? get phoneE164;
/// Create a copy of ListingUser
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListingUserCopyWith<ListingUser> get copyWith => _$ListingUserCopyWithImpl<ListingUser>(this as ListingUser, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListingUser&&(identical(other.id, id) || other.id == id)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.name, name) || other.name == name)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.phoneE164, phoneE164) || other.phoneE164 == phoneE164));
}


@override
int get hashCode => Object.hash(runtimeType,id,phone,name,displayName,phoneE164);

@override
String toString() {
  return 'ListingUser(id: $id, phone: $phone, name: $name, displayName: $displayName, phoneE164: $phoneE164)';
}


}

/// @nodoc
abstract mixin class $ListingUserCopyWith<$Res>  {
  factory $ListingUserCopyWith(ListingUser value, $Res Function(ListingUser) _then) = _$ListingUserCopyWithImpl;
@useResult
$Res call({
 int id, String? phone, String? name, String? displayName, String? phoneE164
});




}
/// @nodoc
class _$ListingUserCopyWithImpl<$Res>
    implements $ListingUserCopyWith<$Res> {
  _$ListingUserCopyWithImpl(this._self, this._then);

  final ListingUser _self;
  final $Res Function(ListingUser) _then;

/// Create a copy of ListingUser
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? phone = freezed,Object? name = freezed,Object? displayName = freezed,Object? phoneE164 = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,phoneE164: freezed == phoneE164 ? _self.phoneE164 : phoneE164 // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ListingUser].
extension ListingUserPatterns on ListingUser {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ListingUser value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ListingUser() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ListingUser value)  $default,){
final _that = this;
switch (_that) {
case _ListingUser():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ListingUser value)?  $default,){
final _that = this;
switch (_that) {
case _ListingUser() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String? phone,  String? name,  String? displayName,  String? phoneE164)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ListingUser() when $default != null:
return $default(_that.id,_that.phone,_that.name,_that.displayName,_that.phoneE164);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String? phone,  String? name,  String? displayName,  String? phoneE164)  $default,) {final _that = this;
switch (_that) {
case _ListingUser():
return $default(_that.id,_that.phone,_that.name,_that.displayName,_that.phoneE164);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String? phone,  String? name,  String? displayName,  String? phoneE164)?  $default,) {final _that = this;
switch (_that) {
case _ListingUser() when $default != null:
return $default(_that.id,_that.phone,_that.name,_that.displayName,_that.phoneE164);case _:
  return null;

}
}

}

/// @nodoc


class _ListingUser implements ListingUser {
  const _ListingUser({required this.id, this.phone, this.name, this.displayName, this.phoneE164});
  

@override final  int id;
@override final  String? phone;
@override final  String? name;
@override final  String? displayName;
@override final  String? phoneE164;

/// Create a copy of ListingUser
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListingUserCopyWith<_ListingUser> get copyWith => __$ListingUserCopyWithImpl<_ListingUser>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListingUser&&(identical(other.id, id) || other.id == id)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.name, name) || other.name == name)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.phoneE164, phoneE164) || other.phoneE164 == phoneE164));
}


@override
int get hashCode => Object.hash(runtimeType,id,phone,name,displayName,phoneE164);

@override
String toString() {
  return 'ListingUser(id: $id, phone: $phone, name: $name, displayName: $displayName, phoneE164: $phoneE164)';
}


}

/// @nodoc
abstract mixin class _$ListingUserCopyWith<$Res> implements $ListingUserCopyWith<$Res> {
  factory _$ListingUserCopyWith(_ListingUser value, $Res Function(_ListingUser) _then) = __$ListingUserCopyWithImpl;
@override @useResult
$Res call({
 int id, String? phone, String? name, String? displayName, String? phoneE164
});




}
/// @nodoc
class __$ListingUserCopyWithImpl<$Res>
    implements _$ListingUserCopyWith<$Res> {
  __$ListingUserCopyWithImpl(this._self, this._then);

  final _ListingUser _self;
  final $Res Function(_ListingUser) _then;

/// Create a copy of ListingUser
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? phone = freezed,Object? name = freezed,Object? displayName = freezed,Object? phoneE164 = freezed,}) {
  return _then(_ListingUser(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,phoneE164: freezed == phoneE164 ? _self.phoneE164 : phoneE164 // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$ListingSeller {

 int get id; String? get name; String? get avatarUrl; String? get since; String? get logo; String? get banner; String? get phone; String? get lastActiveAt;
/// Create a copy of ListingSeller
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListingSellerCopyWith<ListingSeller> get copyWith => _$ListingSellerCopyWithImpl<ListingSeller>(this as ListingSeller, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListingSeller&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.since, since) || other.since == since)&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.banner, banner) || other.banner == banner)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.lastActiveAt, lastActiveAt) || other.lastActiveAt == lastActiveAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,avatarUrl,since,logo,banner,phone,lastActiveAt);

@override
String toString() {
  return 'ListingSeller(id: $id, name: $name, avatarUrl: $avatarUrl, since: $since, logo: $logo, banner: $banner, phone: $phone, lastActiveAt: $lastActiveAt)';
}


}

/// @nodoc
abstract mixin class $ListingSellerCopyWith<$Res>  {
  factory $ListingSellerCopyWith(ListingSeller value, $Res Function(ListingSeller) _then) = _$ListingSellerCopyWithImpl;
@useResult
$Res call({
 int id, String? name, String? avatarUrl, String? since, String? logo, String? banner, String? phone, String? lastActiveAt
});




}
/// @nodoc
class _$ListingSellerCopyWithImpl<$Res>
    implements $ListingSellerCopyWith<$Res> {
  _$ListingSellerCopyWithImpl(this._self, this._then);

  final ListingSeller _self;
  final $Res Function(ListingSeller) _then;

/// Create a copy of ListingSeller
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = freezed,Object? avatarUrl = freezed,Object? since = freezed,Object? logo = freezed,Object? banner = freezed,Object? phone = freezed,Object? lastActiveAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,since: freezed == since ? _self.since : since // ignore: cast_nullable_to_non_nullable
as String?,logo: freezed == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String?,banner: freezed == banner ? _self.banner : banner // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,lastActiveAt: freezed == lastActiveAt ? _self.lastActiveAt : lastActiveAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ListingSeller].
extension ListingSellerPatterns on ListingSeller {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ListingSeller value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ListingSeller() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ListingSeller value)  $default,){
final _that = this;
switch (_that) {
case _ListingSeller():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ListingSeller value)?  $default,){
final _that = this;
switch (_that) {
case _ListingSeller() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String? name,  String? avatarUrl,  String? since,  String? logo,  String? banner,  String? phone,  String? lastActiveAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ListingSeller() when $default != null:
return $default(_that.id,_that.name,_that.avatarUrl,_that.since,_that.logo,_that.banner,_that.phone,_that.lastActiveAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String? name,  String? avatarUrl,  String? since,  String? logo,  String? banner,  String? phone,  String? lastActiveAt)  $default,) {final _that = this;
switch (_that) {
case _ListingSeller():
return $default(_that.id,_that.name,_that.avatarUrl,_that.since,_that.logo,_that.banner,_that.phone,_that.lastActiveAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String? name,  String? avatarUrl,  String? since,  String? logo,  String? banner,  String? phone,  String? lastActiveAt)?  $default,) {final _that = this;
switch (_that) {
case _ListingSeller() when $default != null:
return $default(_that.id,_that.name,_that.avatarUrl,_that.since,_that.logo,_that.banner,_that.phone,_that.lastActiveAt);case _:
  return null;

}
}

}

/// @nodoc


class _ListingSeller implements ListingSeller {
  const _ListingSeller({required this.id, this.name, this.avatarUrl, this.since, this.logo, this.banner, this.phone, this.lastActiveAt});
  

@override final  int id;
@override final  String? name;
@override final  String? avatarUrl;
@override final  String? since;
@override final  String? logo;
@override final  String? banner;
@override final  String? phone;
@override final  String? lastActiveAt;

/// Create a copy of ListingSeller
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListingSellerCopyWith<_ListingSeller> get copyWith => __$ListingSellerCopyWithImpl<_ListingSeller>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListingSeller&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.since, since) || other.since == since)&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.banner, banner) || other.banner == banner)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.lastActiveAt, lastActiveAt) || other.lastActiveAt == lastActiveAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,avatarUrl,since,logo,banner,phone,lastActiveAt);

@override
String toString() {
  return 'ListingSeller(id: $id, name: $name, avatarUrl: $avatarUrl, since: $since, logo: $logo, banner: $banner, phone: $phone, lastActiveAt: $lastActiveAt)';
}


}

/// @nodoc
abstract mixin class _$ListingSellerCopyWith<$Res> implements $ListingSellerCopyWith<$Res> {
  factory _$ListingSellerCopyWith(_ListingSeller value, $Res Function(_ListingSeller) _then) = __$ListingSellerCopyWithImpl;
@override @useResult
$Res call({
 int id, String? name, String? avatarUrl, String? since, String? logo, String? banner, String? phone, String? lastActiveAt
});




}
/// @nodoc
class __$ListingSellerCopyWithImpl<$Res>
    implements _$ListingSellerCopyWith<$Res> {
  __$ListingSellerCopyWithImpl(this._self, this._then);

  final _ListingSeller _self;
  final $Res Function(_ListingSeller) _then;

/// Create a copy of ListingSeller
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = freezed,Object? avatarUrl = freezed,Object? since = freezed,Object? logo = freezed,Object? banner = freezed,Object? phone = freezed,Object? lastActiveAt = freezed,}) {
  return _then(_ListingSeller(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,since: freezed == since ? _self.since : since // ignore: cast_nullable_to_non_nullable
as String?,logo: freezed == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String?,banner: freezed == banner ? _self.banner : banner // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,lastActiveAt: freezed == lastActiveAt ? _self.lastActiveAt : lastActiveAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$SecurityInfo {

 bool get hasPassword; bool get hasTelegram; int? get telegramId; String? get telegramUsername;
/// Create a copy of SecurityInfo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SecurityInfoCopyWith<SecurityInfo> get copyWith => _$SecurityInfoCopyWithImpl<SecurityInfo>(this as SecurityInfo, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SecurityInfo&&(identical(other.hasPassword, hasPassword) || other.hasPassword == hasPassword)&&(identical(other.hasTelegram, hasTelegram) || other.hasTelegram == hasTelegram)&&(identical(other.telegramId, telegramId) || other.telegramId == telegramId)&&(identical(other.telegramUsername, telegramUsername) || other.telegramUsername == telegramUsername));
}


@override
int get hashCode => Object.hash(runtimeType,hasPassword,hasTelegram,telegramId,telegramUsername);

@override
String toString() {
  return 'SecurityInfo(hasPassword: $hasPassword, hasTelegram: $hasTelegram, telegramId: $telegramId, telegramUsername: $telegramUsername)';
}


}

/// @nodoc
abstract mixin class $SecurityInfoCopyWith<$Res>  {
  factory $SecurityInfoCopyWith(SecurityInfo value, $Res Function(SecurityInfo) _then) = _$SecurityInfoCopyWithImpl;
@useResult
$Res call({
 bool hasPassword, bool hasTelegram, int? telegramId, String? telegramUsername
});




}
/// @nodoc
class _$SecurityInfoCopyWithImpl<$Res>
    implements $SecurityInfoCopyWith<$Res> {
  _$SecurityInfoCopyWithImpl(this._self, this._then);

  final SecurityInfo _self;
  final $Res Function(SecurityInfo) _then;

/// Create a copy of SecurityInfo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? hasPassword = null,Object? hasTelegram = null,Object? telegramId = freezed,Object? telegramUsername = freezed,}) {
  return _then(_self.copyWith(
hasPassword: null == hasPassword ? _self.hasPassword : hasPassword // ignore: cast_nullable_to_non_nullable
as bool,hasTelegram: null == hasTelegram ? _self.hasTelegram : hasTelegram // ignore: cast_nullable_to_non_nullable
as bool,telegramId: freezed == telegramId ? _self.telegramId : telegramId // ignore: cast_nullable_to_non_nullable
as int?,telegramUsername: freezed == telegramUsername ? _self.telegramUsername : telegramUsername // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SecurityInfo].
extension SecurityInfoPatterns on SecurityInfo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SecurityInfo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SecurityInfo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SecurityInfo value)  $default,){
final _that = this;
switch (_that) {
case _SecurityInfo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SecurityInfo value)?  $default,){
final _that = this;
switch (_that) {
case _SecurityInfo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool hasPassword,  bool hasTelegram,  int? telegramId,  String? telegramUsername)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SecurityInfo() when $default != null:
return $default(_that.hasPassword,_that.hasTelegram,_that.telegramId,_that.telegramUsername);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool hasPassword,  bool hasTelegram,  int? telegramId,  String? telegramUsername)  $default,) {final _that = this;
switch (_that) {
case _SecurityInfo():
return $default(_that.hasPassword,_that.hasTelegram,_that.telegramId,_that.telegramUsername);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool hasPassword,  bool hasTelegram,  int? telegramId,  String? telegramUsername)?  $default,) {final _that = this;
switch (_that) {
case _SecurityInfo() when $default != null:
return $default(_that.hasPassword,_that.hasTelegram,_that.telegramId,_that.telegramUsername);case _:
  return null;

}
}

}

/// @nodoc


class _SecurityInfo implements SecurityInfo {
  const _SecurityInfo({this.hasPassword = false, this.hasTelegram = false, this.telegramId, this.telegramUsername});
  

@override@JsonKey() final  bool hasPassword;
@override@JsonKey() final  bool hasTelegram;
@override final  int? telegramId;
@override final  String? telegramUsername;

/// Create a copy of SecurityInfo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SecurityInfoCopyWith<_SecurityInfo> get copyWith => __$SecurityInfoCopyWithImpl<_SecurityInfo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SecurityInfo&&(identical(other.hasPassword, hasPassword) || other.hasPassword == hasPassword)&&(identical(other.hasTelegram, hasTelegram) || other.hasTelegram == hasTelegram)&&(identical(other.telegramId, telegramId) || other.telegramId == telegramId)&&(identical(other.telegramUsername, telegramUsername) || other.telegramUsername == telegramUsername));
}


@override
int get hashCode => Object.hash(runtimeType,hasPassword,hasTelegram,telegramId,telegramUsername);

@override
String toString() {
  return 'SecurityInfo(hasPassword: $hasPassword, hasTelegram: $hasTelegram, telegramId: $telegramId, telegramUsername: $telegramUsername)';
}


}

/// @nodoc
abstract mixin class _$SecurityInfoCopyWith<$Res> implements $SecurityInfoCopyWith<$Res> {
  factory _$SecurityInfoCopyWith(_SecurityInfo value, $Res Function(_SecurityInfo) _then) = __$SecurityInfoCopyWithImpl;
@override @useResult
$Res call({
 bool hasPassword, bool hasTelegram, int? telegramId, String? telegramUsername
});




}
/// @nodoc
class __$SecurityInfoCopyWithImpl<$Res>
    implements _$SecurityInfoCopyWith<$Res> {
  __$SecurityInfoCopyWithImpl(this._self, this._then);

  final _SecurityInfo _self;
  final $Res Function(_SecurityInfo) _then;

/// Create a copy of SecurityInfo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? hasPassword = null,Object? hasTelegram = null,Object? telegramId = freezed,Object? telegramUsername = freezed,}) {
  return _then(_SecurityInfo(
hasPassword: null == hasPassword ? _self.hasPassword : hasPassword // ignore: cast_nullable_to_non_nullable
as bool,hasTelegram: null == hasTelegram ? _self.hasTelegram : hasTelegram // ignore: cast_nullable_to_non_nullable
as bool,telegramId: freezed == telegramId ? _self.telegramId : telegramId // ignore: cast_nullable_to_non_nullable
as int?,telegramUsername: freezed == telegramUsername ? _self.telegramUsername : telegramUsername // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
