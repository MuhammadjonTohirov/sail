// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfileEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileEvent()';
}


}

/// @nodoc
class $ProfileEventCopyWith<$Res>  {
$ProfileEventCopyWith(ProfileEvent _, $Res Function(ProfileEvent) __);
}


/// Adds pattern-matching-related methods to [ProfileEvent].
extension ProfileEventPatterns on ProfileEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ProfileStarted value)?  started,TResult Function( ProfileUpdateRequested value)?  updateProfile,TResult Function( ProfileLoadSecurityInfo value)?  loadSecurityInfo,TResult Function( ProfileChangePassword value)?  changePassword,TResult Function( ProfileSetPassword value)?  setPassword,TResult Function( ProfileUnlinkTelegram value)?  unlinkTelegram,TResult Function( ProfileDeleteAccount value)?  deleteAccount,TResult Function( ProfileLogout value)?  logout,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ProfileStarted() when started != null:
return started(_that);case ProfileUpdateRequested() when updateProfile != null:
return updateProfile(_that);case ProfileLoadSecurityInfo() when loadSecurityInfo != null:
return loadSecurityInfo(_that);case ProfileChangePassword() when changePassword != null:
return changePassword(_that);case ProfileSetPassword() when setPassword != null:
return setPassword(_that);case ProfileUnlinkTelegram() when unlinkTelegram != null:
return unlinkTelegram(_that);case ProfileDeleteAccount() when deleteAccount != null:
return deleteAccount(_that);case ProfileLogout() when logout != null:
return logout(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ProfileStarted value)  started,required TResult Function( ProfileUpdateRequested value)  updateProfile,required TResult Function( ProfileLoadSecurityInfo value)  loadSecurityInfo,required TResult Function( ProfileChangePassword value)  changePassword,required TResult Function( ProfileSetPassword value)  setPassword,required TResult Function( ProfileUnlinkTelegram value)  unlinkTelegram,required TResult Function( ProfileDeleteAccount value)  deleteAccount,required TResult Function( ProfileLogout value)  logout,}){
final _that = this;
switch (_that) {
case ProfileStarted():
return started(_that);case ProfileUpdateRequested():
return updateProfile(_that);case ProfileLoadSecurityInfo():
return loadSecurityInfo(_that);case ProfileChangePassword():
return changePassword(_that);case ProfileSetPassword():
return setPassword(_that);case ProfileUnlinkTelegram():
return unlinkTelegram(_that);case ProfileDeleteAccount():
return deleteAccount(_that);case ProfileLogout():
return logout(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ProfileStarted value)?  started,TResult? Function( ProfileUpdateRequested value)?  updateProfile,TResult? Function( ProfileLoadSecurityInfo value)?  loadSecurityInfo,TResult? Function( ProfileChangePassword value)?  changePassword,TResult? Function( ProfileSetPassword value)?  setPassword,TResult? Function( ProfileUnlinkTelegram value)?  unlinkTelegram,TResult? Function( ProfileDeleteAccount value)?  deleteAccount,TResult? Function( ProfileLogout value)?  logout,}){
final _that = this;
switch (_that) {
case ProfileStarted() when started != null:
return started(_that);case ProfileUpdateRequested() when updateProfile != null:
return updateProfile(_that);case ProfileLoadSecurityInfo() when loadSecurityInfo != null:
return loadSecurityInfo(_that);case ProfileChangePassword() when changePassword != null:
return changePassword(_that);case ProfileSetPassword() when setPassword != null:
return setPassword(_that);case ProfileUnlinkTelegram() when unlinkTelegram != null:
return unlinkTelegram(_that);case ProfileDeleteAccount() when deleteAccount != null:
return deleteAccount(_that);case ProfileLogout() when logout != null:
return logout(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( String? displayName,  int? locationId)?  updateProfile,TResult Function()?  loadSecurityInfo,TResult Function( String currentPassword,  String newPassword)?  changePassword,TResult Function( String newPassword)?  setPassword,TResult Function()?  unlinkTelegram,TResult Function()?  deleteAccount,TResult Function()?  logout,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ProfileStarted() when started != null:
return started();case ProfileUpdateRequested() when updateProfile != null:
return updateProfile(_that.displayName,_that.locationId);case ProfileLoadSecurityInfo() when loadSecurityInfo != null:
return loadSecurityInfo();case ProfileChangePassword() when changePassword != null:
return changePassword(_that.currentPassword,_that.newPassword);case ProfileSetPassword() when setPassword != null:
return setPassword(_that.newPassword);case ProfileUnlinkTelegram() when unlinkTelegram != null:
return unlinkTelegram();case ProfileDeleteAccount() when deleteAccount != null:
return deleteAccount();case ProfileLogout() when logout != null:
return logout();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( String? displayName,  int? locationId)  updateProfile,required TResult Function()  loadSecurityInfo,required TResult Function( String currentPassword,  String newPassword)  changePassword,required TResult Function( String newPassword)  setPassword,required TResult Function()  unlinkTelegram,required TResult Function()  deleteAccount,required TResult Function()  logout,}) {final _that = this;
switch (_that) {
case ProfileStarted():
return started();case ProfileUpdateRequested():
return updateProfile(_that.displayName,_that.locationId);case ProfileLoadSecurityInfo():
return loadSecurityInfo();case ProfileChangePassword():
return changePassword(_that.currentPassword,_that.newPassword);case ProfileSetPassword():
return setPassword(_that.newPassword);case ProfileUnlinkTelegram():
return unlinkTelegram();case ProfileDeleteAccount():
return deleteAccount();case ProfileLogout():
return logout();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( String? displayName,  int? locationId)?  updateProfile,TResult? Function()?  loadSecurityInfo,TResult? Function( String currentPassword,  String newPassword)?  changePassword,TResult? Function( String newPassword)?  setPassword,TResult? Function()?  unlinkTelegram,TResult? Function()?  deleteAccount,TResult? Function()?  logout,}) {final _that = this;
switch (_that) {
case ProfileStarted() when started != null:
return started();case ProfileUpdateRequested() when updateProfile != null:
return updateProfile(_that.displayName,_that.locationId);case ProfileLoadSecurityInfo() when loadSecurityInfo != null:
return loadSecurityInfo();case ProfileChangePassword() when changePassword != null:
return changePassword(_that.currentPassword,_that.newPassword);case ProfileSetPassword() when setPassword != null:
return setPassword(_that.newPassword);case ProfileUnlinkTelegram() when unlinkTelegram != null:
return unlinkTelegram();case ProfileDeleteAccount() when deleteAccount != null:
return deleteAccount();case ProfileLogout() when logout != null:
return logout();case _:
  return null;

}
}

}

/// @nodoc


class ProfileStarted implements ProfileEvent {
  const ProfileStarted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileStarted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileEvent.started()';
}


}




/// @nodoc


class ProfileUpdateRequested implements ProfileEvent {
  const ProfileUpdateRequested({this.displayName, this.locationId});
  

 final  String? displayName;
 final  int? locationId;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileUpdateRequestedCopyWith<ProfileUpdateRequested> get copyWith => _$ProfileUpdateRequestedCopyWithImpl<ProfileUpdateRequested>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileUpdateRequested&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.locationId, locationId) || other.locationId == locationId));
}


@override
int get hashCode => Object.hash(runtimeType,displayName,locationId);

@override
String toString() {
  return 'ProfileEvent.updateProfile(displayName: $displayName, locationId: $locationId)';
}


}

/// @nodoc
abstract mixin class $ProfileUpdateRequestedCopyWith<$Res> implements $ProfileEventCopyWith<$Res> {
  factory $ProfileUpdateRequestedCopyWith(ProfileUpdateRequested value, $Res Function(ProfileUpdateRequested) _then) = _$ProfileUpdateRequestedCopyWithImpl;
@useResult
$Res call({
 String? displayName, int? locationId
});




}
/// @nodoc
class _$ProfileUpdateRequestedCopyWithImpl<$Res>
    implements $ProfileUpdateRequestedCopyWith<$Res> {
  _$ProfileUpdateRequestedCopyWithImpl(this._self, this._then);

  final ProfileUpdateRequested _self;
  final $Res Function(ProfileUpdateRequested) _then;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? displayName = freezed,Object? locationId = freezed,}) {
  return _then(ProfileUpdateRequested(
displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,locationId: freezed == locationId ? _self.locationId : locationId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc


class ProfileLoadSecurityInfo implements ProfileEvent {
  const ProfileLoadSecurityInfo();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileLoadSecurityInfo);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileEvent.loadSecurityInfo()';
}


}




/// @nodoc


class ProfileChangePassword implements ProfileEvent {
  const ProfileChangePassword({required this.currentPassword, required this.newPassword});
  

 final  String currentPassword;
 final  String newPassword;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileChangePasswordCopyWith<ProfileChangePassword> get copyWith => _$ProfileChangePasswordCopyWithImpl<ProfileChangePassword>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileChangePassword&&(identical(other.currentPassword, currentPassword) || other.currentPassword == currentPassword)&&(identical(other.newPassword, newPassword) || other.newPassword == newPassword));
}


@override
int get hashCode => Object.hash(runtimeType,currentPassword,newPassword);

@override
String toString() {
  return 'ProfileEvent.changePassword(currentPassword: $currentPassword, newPassword: $newPassword)';
}


}

/// @nodoc
abstract mixin class $ProfileChangePasswordCopyWith<$Res> implements $ProfileEventCopyWith<$Res> {
  factory $ProfileChangePasswordCopyWith(ProfileChangePassword value, $Res Function(ProfileChangePassword) _then) = _$ProfileChangePasswordCopyWithImpl;
@useResult
$Res call({
 String currentPassword, String newPassword
});




}
/// @nodoc
class _$ProfileChangePasswordCopyWithImpl<$Res>
    implements $ProfileChangePasswordCopyWith<$Res> {
  _$ProfileChangePasswordCopyWithImpl(this._self, this._then);

  final ProfileChangePassword _self;
  final $Res Function(ProfileChangePassword) _then;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? currentPassword = null,Object? newPassword = null,}) {
  return _then(ProfileChangePassword(
currentPassword: null == currentPassword ? _self.currentPassword : currentPassword // ignore: cast_nullable_to_non_nullable
as String,newPassword: null == newPassword ? _self.newPassword : newPassword // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ProfileSetPassword implements ProfileEvent {
  const ProfileSetPassword({required this.newPassword});
  

 final  String newPassword;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileSetPasswordCopyWith<ProfileSetPassword> get copyWith => _$ProfileSetPasswordCopyWithImpl<ProfileSetPassword>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileSetPassword&&(identical(other.newPassword, newPassword) || other.newPassword == newPassword));
}


@override
int get hashCode => Object.hash(runtimeType,newPassword);

@override
String toString() {
  return 'ProfileEvent.setPassword(newPassword: $newPassword)';
}


}

/// @nodoc
abstract mixin class $ProfileSetPasswordCopyWith<$Res> implements $ProfileEventCopyWith<$Res> {
  factory $ProfileSetPasswordCopyWith(ProfileSetPassword value, $Res Function(ProfileSetPassword) _then) = _$ProfileSetPasswordCopyWithImpl;
@useResult
$Res call({
 String newPassword
});




}
/// @nodoc
class _$ProfileSetPasswordCopyWithImpl<$Res>
    implements $ProfileSetPasswordCopyWith<$Res> {
  _$ProfileSetPasswordCopyWithImpl(this._self, this._then);

  final ProfileSetPassword _self;
  final $Res Function(ProfileSetPassword) _then;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? newPassword = null,}) {
  return _then(ProfileSetPassword(
newPassword: null == newPassword ? _self.newPassword : newPassword // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ProfileUnlinkTelegram implements ProfileEvent {
  const ProfileUnlinkTelegram();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileUnlinkTelegram);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileEvent.unlinkTelegram()';
}


}




/// @nodoc


class ProfileDeleteAccount implements ProfileEvent {
  const ProfileDeleteAccount();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileDeleteAccount);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileEvent.deleteAccount()';
}


}




/// @nodoc


class ProfileLogout implements ProfileEvent {
  const ProfileLogout();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileLogout);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileEvent.logout()';
}


}




// dart format on
