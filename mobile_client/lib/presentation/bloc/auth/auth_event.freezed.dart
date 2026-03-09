// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent()';
}


}

/// @nodoc
class $AuthEventCopyWith<$Res>  {
$AuthEventCopyWith(AuthEvent _, $Res Function(AuthEvent) __);
}


/// Adds pattern-matching-related methods to [AuthEvent].
extension AuthEventPatterns on AuthEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CheckRequested value)?  checkRequested,TResult Function( LoginRequested value)?  loginRequested,TResult Function( RegisterRequested value)?  registerRequested,TResult Function( RegisterVerifyRequested value)?  registerVerifyRequested,TResult Function( LogoutRequested value)?  logoutRequested,TResult Function( TelegramAuthRequested value)?  telegramAuthRequested,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CheckRequested() when checkRequested != null:
return checkRequested(_that);case LoginRequested() when loginRequested != null:
return loginRequested(_that);case RegisterRequested() when registerRequested != null:
return registerRequested(_that);case RegisterVerifyRequested() when registerVerifyRequested != null:
return registerVerifyRequested(_that);case LogoutRequested() when logoutRequested != null:
return logoutRequested(_that);case TelegramAuthRequested() when telegramAuthRequested != null:
return telegramAuthRequested(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CheckRequested value)  checkRequested,required TResult Function( LoginRequested value)  loginRequested,required TResult Function( RegisterRequested value)  registerRequested,required TResult Function( RegisterVerifyRequested value)  registerVerifyRequested,required TResult Function( LogoutRequested value)  logoutRequested,required TResult Function( TelegramAuthRequested value)  telegramAuthRequested,}){
final _that = this;
switch (_that) {
case CheckRequested():
return checkRequested(_that);case LoginRequested():
return loginRequested(_that);case RegisterRequested():
return registerRequested(_that);case RegisterVerifyRequested():
return registerVerifyRequested(_that);case LogoutRequested():
return logoutRequested(_that);case TelegramAuthRequested():
return telegramAuthRequested(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CheckRequested value)?  checkRequested,TResult? Function( LoginRequested value)?  loginRequested,TResult? Function( RegisterRequested value)?  registerRequested,TResult? Function( RegisterVerifyRequested value)?  registerVerifyRequested,TResult? Function( LogoutRequested value)?  logoutRequested,TResult? Function( TelegramAuthRequested value)?  telegramAuthRequested,}){
final _that = this;
switch (_that) {
case CheckRequested() when checkRequested != null:
return checkRequested(_that);case LoginRequested() when loginRequested != null:
return loginRequested(_that);case RegisterRequested() when registerRequested != null:
return registerRequested(_that);case RegisterVerifyRequested() when registerVerifyRequested != null:
return registerVerifyRequested(_that);case LogoutRequested() when logoutRequested != null:
return logoutRequested(_that);case TelegramAuthRequested() when telegramAuthRequested != null:
return telegramAuthRequested(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  checkRequested,TResult Function( String email,  String password)?  loginRequested,TResult Function( String email,  String password,  String? displayName)?  registerRequested,TResult Function( String email,  String password,  String code,  String? displayName)?  registerVerifyRequested,TResult Function()?  logoutRequested,TResult Function( Map<String, dynamic> data)?  telegramAuthRequested,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CheckRequested() when checkRequested != null:
return checkRequested();case LoginRequested() when loginRequested != null:
return loginRequested(_that.email,_that.password);case RegisterRequested() when registerRequested != null:
return registerRequested(_that.email,_that.password,_that.displayName);case RegisterVerifyRequested() when registerVerifyRequested != null:
return registerVerifyRequested(_that.email,_that.password,_that.code,_that.displayName);case LogoutRequested() when logoutRequested != null:
return logoutRequested();case TelegramAuthRequested() when telegramAuthRequested != null:
return telegramAuthRequested(_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  checkRequested,required TResult Function( String email,  String password)  loginRequested,required TResult Function( String email,  String password,  String? displayName)  registerRequested,required TResult Function( String email,  String password,  String code,  String? displayName)  registerVerifyRequested,required TResult Function()  logoutRequested,required TResult Function( Map<String, dynamic> data)  telegramAuthRequested,}) {final _that = this;
switch (_that) {
case CheckRequested():
return checkRequested();case LoginRequested():
return loginRequested(_that.email,_that.password);case RegisterRequested():
return registerRequested(_that.email,_that.password,_that.displayName);case RegisterVerifyRequested():
return registerVerifyRequested(_that.email,_that.password,_that.code,_that.displayName);case LogoutRequested():
return logoutRequested();case TelegramAuthRequested():
return telegramAuthRequested(_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  checkRequested,TResult? Function( String email,  String password)?  loginRequested,TResult? Function( String email,  String password,  String? displayName)?  registerRequested,TResult? Function( String email,  String password,  String code,  String? displayName)?  registerVerifyRequested,TResult? Function()?  logoutRequested,TResult? Function( Map<String, dynamic> data)?  telegramAuthRequested,}) {final _that = this;
switch (_that) {
case CheckRequested() when checkRequested != null:
return checkRequested();case LoginRequested() when loginRequested != null:
return loginRequested(_that.email,_that.password);case RegisterRequested() when registerRequested != null:
return registerRequested(_that.email,_that.password,_that.displayName);case RegisterVerifyRequested() when registerVerifyRequested != null:
return registerVerifyRequested(_that.email,_that.password,_that.code,_that.displayName);case LogoutRequested() when logoutRequested != null:
return logoutRequested();case TelegramAuthRequested() when telegramAuthRequested != null:
return telegramAuthRequested(_that.data);case _:
  return null;

}
}

}

/// @nodoc


class CheckRequested implements AuthEvent {
  const CheckRequested();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckRequested);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.checkRequested()';
}


}




/// @nodoc


class LoginRequested implements AuthEvent {
  const LoginRequested(this.email, this.password);
  

 final  String email;
 final  String password;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginRequestedCopyWith<LoginRequested> get copyWith => _$LoginRequestedCopyWithImpl<LoginRequested>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginRequested&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,email,password);

@override
String toString() {
  return 'AuthEvent.loginRequested(email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class $LoginRequestedCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory $LoginRequestedCopyWith(LoginRequested value, $Res Function(LoginRequested) _then) = _$LoginRequestedCopyWithImpl;
@useResult
$Res call({
 String email, String password
});




}
/// @nodoc
class _$LoginRequestedCopyWithImpl<$Res>
    implements $LoginRequestedCopyWith<$Res> {
  _$LoginRequestedCopyWithImpl(this._self, this._then);

  final LoginRequested _self;
  final $Res Function(LoginRequested) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,}) {
  return _then(LoginRequested(
null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class RegisterRequested implements AuthEvent {
  const RegisterRequested({required this.email, required this.password, this.displayName});
  

 final  String email;
 final  String password;
 final  String? displayName;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterRequestedCopyWith<RegisterRequested> get copyWith => _$RegisterRequestedCopyWithImpl<RegisterRequested>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterRequested&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.displayName, displayName) || other.displayName == displayName));
}


@override
int get hashCode => Object.hash(runtimeType,email,password,displayName);

@override
String toString() {
  return 'AuthEvent.registerRequested(email: $email, password: $password, displayName: $displayName)';
}


}

/// @nodoc
abstract mixin class $RegisterRequestedCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory $RegisterRequestedCopyWith(RegisterRequested value, $Res Function(RegisterRequested) _then) = _$RegisterRequestedCopyWithImpl;
@useResult
$Res call({
 String email, String password, String? displayName
});




}
/// @nodoc
class _$RegisterRequestedCopyWithImpl<$Res>
    implements $RegisterRequestedCopyWith<$Res> {
  _$RegisterRequestedCopyWithImpl(this._self, this._then);

  final RegisterRequested _self;
  final $Res Function(RegisterRequested) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,Object? displayName = freezed,}) {
  return _then(RegisterRequested(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class RegisterVerifyRequested implements AuthEvent {
  const RegisterVerifyRequested({required this.email, required this.password, required this.code, this.displayName});
  

 final  String email;
 final  String password;
 final  String code;
 final  String? displayName;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterVerifyRequestedCopyWith<RegisterVerifyRequested> get copyWith => _$RegisterVerifyRequestedCopyWithImpl<RegisterVerifyRequested>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterVerifyRequested&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password)&&(identical(other.code, code) || other.code == code)&&(identical(other.displayName, displayName) || other.displayName == displayName));
}


@override
int get hashCode => Object.hash(runtimeType,email,password,code,displayName);

@override
String toString() {
  return 'AuthEvent.registerVerifyRequested(email: $email, password: $password, code: $code, displayName: $displayName)';
}


}

/// @nodoc
abstract mixin class $RegisterVerifyRequestedCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory $RegisterVerifyRequestedCopyWith(RegisterVerifyRequested value, $Res Function(RegisterVerifyRequested) _then) = _$RegisterVerifyRequestedCopyWithImpl;
@useResult
$Res call({
 String email, String password, String code, String? displayName
});




}
/// @nodoc
class _$RegisterVerifyRequestedCopyWithImpl<$Res>
    implements $RegisterVerifyRequestedCopyWith<$Res> {
  _$RegisterVerifyRequestedCopyWithImpl(this._self, this._then);

  final RegisterVerifyRequested _self;
  final $Res Function(RegisterVerifyRequested) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,Object? code = null,Object? displayName = freezed,}) {
  return _then(RegisterVerifyRequested(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class LogoutRequested implements AuthEvent {
  const LogoutRequested();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LogoutRequested);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.logoutRequested()';
}


}




/// @nodoc


class TelegramAuthRequested implements AuthEvent {
  const TelegramAuthRequested(final  Map<String, dynamic> data): _data = data;
  

 final  Map<String, dynamic> _data;
 Map<String, dynamic> get data {
  if (_data is EqualUnmodifiableMapView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_data);
}


/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TelegramAuthRequestedCopyWith<TelegramAuthRequested> get copyWith => _$TelegramAuthRequestedCopyWithImpl<TelegramAuthRequested>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TelegramAuthRequested&&const DeepCollectionEquality().equals(other._data, _data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'AuthEvent.telegramAuthRequested(data: $data)';
}


}

/// @nodoc
abstract mixin class $TelegramAuthRequestedCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory $TelegramAuthRequestedCopyWith(TelegramAuthRequested value, $Res Function(TelegramAuthRequested) _then) = _$TelegramAuthRequestedCopyWithImpl;
@useResult
$Res call({
 Map<String, dynamic> data
});




}
/// @nodoc
class _$TelegramAuthRequestedCopyWithImpl<$Res>
    implements $TelegramAuthRequestedCopyWith<$Res> {
  _$TelegramAuthRequestedCopyWithImpl(this._self, this._then);

  final TelegramAuthRequested _self;
  final $Res Function(TelegramAuthRequested) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(TelegramAuthRequested(
null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

// dart format on
