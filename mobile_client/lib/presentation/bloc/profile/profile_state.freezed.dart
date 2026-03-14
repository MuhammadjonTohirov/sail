// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfileState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileState()';
}


}

/// @nodoc
class $ProfileStateCopyWith<$Res>  {
$ProfileStateCopyWith(ProfileState _, $Res Function(ProfileState) __);
}


/// Adds pattern-matching-related methods to [ProfileState].
extension ProfileStatePatterns on ProfileState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ProfileInitial value)?  initial,TResult Function( ProfileLoading value)?  loading,TResult Function( ProfileLoaded value)?  loaded,TResult Function( ProfileSaving value)?  saving,TResult Function( ProfileSaved value)?  saved,TResult Function( ProfilePasswordChanged value)?  passwordChanged,TResult Function( ProfileAccountDeleted value)?  accountDeleted,TResult Function( ProfileLoggedOut value)?  loggedOut,TResult Function( ProfileFailureState value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ProfileInitial() when initial != null:
return initial(_that);case ProfileLoading() when loading != null:
return loading(_that);case ProfileLoaded() when loaded != null:
return loaded(_that);case ProfileSaving() when saving != null:
return saving(_that);case ProfileSaved() when saved != null:
return saved(_that);case ProfilePasswordChanged() when passwordChanged != null:
return passwordChanged(_that);case ProfileAccountDeleted() when accountDeleted != null:
return accountDeleted(_that);case ProfileLoggedOut() when loggedOut != null:
return loggedOut(_that);case ProfileFailureState() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ProfileInitial value)  initial,required TResult Function( ProfileLoading value)  loading,required TResult Function( ProfileLoaded value)  loaded,required TResult Function( ProfileSaving value)  saving,required TResult Function( ProfileSaved value)  saved,required TResult Function( ProfilePasswordChanged value)  passwordChanged,required TResult Function( ProfileAccountDeleted value)  accountDeleted,required TResult Function( ProfileLoggedOut value)  loggedOut,required TResult Function( ProfileFailureState value)  failure,}){
final _that = this;
switch (_that) {
case ProfileInitial():
return initial(_that);case ProfileLoading():
return loading(_that);case ProfileLoaded():
return loaded(_that);case ProfileSaving():
return saving(_that);case ProfileSaved():
return saved(_that);case ProfilePasswordChanged():
return passwordChanged(_that);case ProfileAccountDeleted():
return accountDeleted(_that);case ProfileLoggedOut():
return loggedOut(_that);case ProfileFailureState():
return failure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ProfileInitial value)?  initial,TResult? Function( ProfileLoading value)?  loading,TResult? Function( ProfileLoaded value)?  loaded,TResult? Function( ProfileSaving value)?  saving,TResult? Function( ProfileSaved value)?  saved,TResult? Function( ProfilePasswordChanged value)?  passwordChanged,TResult? Function( ProfileAccountDeleted value)?  accountDeleted,TResult? Function( ProfileLoggedOut value)?  loggedOut,TResult? Function( ProfileFailureState value)?  failure,}){
final _that = this;
switch (_that) {
case ProfileInitial() when initial != null:
return initial(_that);case ProfileLoading() when loading != null:
return loading(_that);case ProfileLoaded() when loaded != null:
return loaded(_that);case ProfileSaving() when saving != null:
return saving(_that);case ProfileSaved() when saved != null:
return saved(_that);case ProfilePasswordChanged() when passwordChanged != null:
return passwordChanged(_that);case ProfileAccountDeleted() when accountDeleted != null:
return accountDeleted(_that);case ProfileLoggedOut() when loggedOut != null:
return loggedOut(_that);case ProfileFailureState() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( UserProfile user,  SecurityInfo? securityInfo)?  loaded,TResult Function()?  saving,TResult Function( UserProfile user)?  saved,TResult Function()?  passwordChanged,TResult Function()?  accountDeleted,TResult Function()?  loggedOut,TResult Function( Failure failure)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ProfileInitial() when initial != null:
return initial();case ProfileLoading() when loading != null:
return loading();case ProfileLoaded() when loaded != null:
return loaded(_that.user,_that.securityInfo);case ProfileSaving() when saving != null:
return saving();case ProfileSaved() when saved != null:
return saved(_that.user);case ProfilePasswordChanged() when passwordChanged != null:
return passwordChanged();case ProfileAccountDeleted() when accountDeleted != null:
return accountDeleted();case ProfileLoggedOut() when loggedOut != null:
return loggedOut();case ProfileFailureState() when failure != null:
return failure(_that.failure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( UserProfile user,  SecurityInfo? securityInfo)  loaded,required TResult Function()  saving,required TResult Function( UserProfile user)  saved,required TResult Function()  passwordChanged,required TResult Function()  accountDeleted,required TResult Function()  loggedOut,required TResult Function( Failure failure)  failure,}) {final _that = this;
switch (_that) {
case ProfileInitial():
return initial();case ProfileLoading():
return loading();case ProfileLoaded():
return loaded(_that.user,_that.securityInfo);case ProfileSaving():
return saving();case ProfileSaved():
return saved(_that.user);case ProfilePasswordChanged():
return passwordChanged();case ProfileAccountDeleted():
return accountDeleted();case ProfileLoggedOut():
return loggedOut();case ProfileFailureState():
return failure(_that.failure);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( UserProfile user,  SecurityInfo? securityInfo)?  loaded,TResult? Function()?  saving,TResult? Function( UserProfile user)?  saved,TResult? Function()?  passwordChanged,TResult? Function()?  accountDeleted,TResult? Function()?  loggedOut,TResult? Function( Failure failure)?  failure,}) {final _that = this;
switch (_that) {
case ProfileInitial() when initial != null:
return initial();case ProfileLoading() when loading != null:
return loading();case ProfileLoaded() when loaded != null:
return loaded(_that.user,_that.securityInfo);case ProfileSaving() when saving != null:
return saving();case ProfileSaved() when saved != null:
return saved(_that.user);case ProfilePasswordChanged() when passwordChanged != null:
return passwordChanged();case ProfileAccountDeleted() when accountDeleted != null:
return accountDeleted();case ProfileLoggedOut() when loggedOut != null:
return loggedOut();case ProfileFailureState() when failure != null:
return failure(_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class ProfileInitial implements ProfileState {
  const ProfileInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileState.initial()';
}


}




/// @nodoc


class ProfileLoading implements ProfileState {
  const ProfileLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileState.loading()';
}


}




/// @nodoc


class ProfileLoaded implements ProfileState {
  const ProfileLoaded({required this.user, this.securityInfo});
  

 final  UserProfile user;
 final  SecurityInfo? securityInfo;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileLoadedCopyWith<ProfileLoaded> get copyWith => _$ProfileLoadedCopyWithImpl<ProfileLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileLoaded&&(identical(other.user, user) || other.user == user)&&(identical(other.securityInfo, securityInfo) || other.securityInfo == securityInfo));
}


@override
int get hashCode => Object.hash(runtimeType,user,securityInfo);

@override
String toString() {
  return 'ProfileState.loaded(user: $user, securityInfo: $securityInfo)';
}


}

/// @nodoc
abstract mixin class $ProfileLoadedCopyWith<$Res> implements $ProfileStateCopyWith<$Res> {
  factory $ProfileLoadedCopyWith(ProfileLoaded value, $Res Function(ProfileLoaded) _then) = _$ProfileLoadedCopyWithImpl;
@useResult
$Res call({
 UserProfile user, SecurityInfo? securityInfo
});


$UserProfileCopyWith<$Res> get user;$SecurityInfoCopyWith<$Res>? get securityInfo;

}
/// @nodoc
class _$ProfileLoadedCopyWithImpl<$Res>
    implements $ProfileLoadedCopyWith<$Res> {
  _$ProfileLoadedCopyWithImpl(this._self, this._then);

  final ProfileLoaded _self;
  final $Res Function(ProfileLoaded) _then;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,Object? securityInfo = freezed,}) {
  return _then(ProfileLoaded(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserProfile,securityInfo: freezed == securityInfo ? _self.securityInfo : securityInfo // ignore: cast_nullable_to_non_nullable
as SecurityInfo?,
  ));
}

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserProfileCopyWith<$Res> get user {
  
  return $UserProfileCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SecurityInfoCopyWith<$Res>? get securityInfo {
    if (_self.securityInfo == null) {
    return null;
  }

  return $SecurityInfoCopyWith<$Res>(_self.securityInfo!, (value) {
    return _then(_self.copyWith(securityInfo: value));
  });
}
}

/// @nodoc


class ProfileSaving implements ProfileState {
  const ProfileSaving();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileSaving);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileState.saving()';
}


}




/// @nodoc


class ProfileSaved implements ProfileState {
  const ProfileSaved({required this.user});
  

 final  UserProfile user;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileSavedCopyWith<ProfileSaved> get copyWith => _$ProfileSavedCopyWithImpl<ProfileSaved>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileSaved&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'ProfileState.saved(user: $user)';
}


}

/// @nodoc
abstract mixin class $ProfileSavedCopyWith<$Res> implements $ProfileStateCopyWith<$Res> {
  factory $ProfileSavedCopyWith(ProfileSaved value, $Res Function(ProfileSaved) _then) = _$ProfileSavedCopyWithImpl;
@useResult
$Res call({
 UserProfile user
});


$UserProfileCopyWith<$Res> get user;

}
/// @nodoc
class _$ProfileSavedCopyWithImpl<$Res>
    implements $ProfileSavedCopyWith<$Res> {
  _$ProfileSavedCopyWithImpl(this._self, this._then);

  final ProfileSaved _self;
  final $Res Function(ProfileSaved) _then;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,}) {
  return _then(ProfileSaved(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserProfile,
  ));
}

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserProfileCopyWith<$Res> get user {
  
  return $UserProfileCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

/// @nodoc


class ProfilePasswordChanged implements ProfileState {
  const ProfilePasswordChanged();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfilePasswordChanged);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileState.passwordChanged()';
}


}




/// @nodoc


class ProfileAccountDeleted implements ProfileState {
  const ProfileAccountDeleted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileAccountDeleted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileState.accountDeleted()';
}


}




/// @nodoc


class ProfileLoggedOut implements ProfileState {
  const ProfileLoggedOut();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileLoggedOut);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileState.loggedOut()';
}


}




/// @nodoc


class ProfileFailureState implements ProfileState {
  const ProfileFailureState(this.failure);
  

 final  Failure failure;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileFailureStateCopyWith<ProfileFailureState> get copyWith => _$ProfileFailureStateCopyWithImpl<ProfileFailureState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileFailureState&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'ProfileState.failure(failure: $failure)';
}


}

/// @nodoc
abstract mixin class $ProfileFailureStateCopyWith<$Res> implements $ProfileStateCopyWith<$Res> {
  factory $ProfileFailureStateCopyWith(ProfileFailureState value, $Res Function(ProfileFailureState) _then) = _$ProfileFailureStateCopyWithImpl;
@useResult
$Res call({
 Failure failure
});




}
/// @nodoc
class _$ProfileFailureStateCopyWithImpl<$Res>
    implements $ProfileFailureStateCopyWith<$Res> {
  _$ProfileFailureStateCopyWithImpl(this._self, this._then);

  final ProfileFailureState _self;
  final $Res Function(ProfileFailureState) _then;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(ProfileFailureState(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}


}

// dart format on
