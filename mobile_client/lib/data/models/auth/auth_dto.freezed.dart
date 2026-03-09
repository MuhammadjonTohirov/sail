// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginRequestDto {

 String get login; String get password;
/// Create a copy of LoginRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginRequestDtoCopyWith<LoginRequestDto> get copyWith => _$LoginRequestDtoCopyWithImpl<LoginRequestDto>(this as LoginRequestDto, _$identity);

  /// Serializes this LoginRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginRequestDto&&(identical(other.login, login) || other.login == login)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,login,password);

@override
String toString() {
  return 'LoginRequestDto(login: $login, password: $password)';
}


}

/// @nodoc
abstract mixin class $LoginRequestDtoCopyWith<$Res>  {
  factory $LoginRequestDtoCopyWith(LoginRequestDto value, $Res Function(LoginRequestDto) _then) = _$LoginRequestDtoCopyWithImpl;
@useResult
$Res call({
 String login, String password
});




}
/// @nodoc
class _$LoginRequestDtoCopyWithImpl<$Res>
    implements $LoginRequestDtoCopyWith<$Res> {
  _$LoginRequestDtoCopyWithImpl(this._self, this._then);

  final LoginRequestDto _self;
  final $Res Function(LoginRequestDto) _then;

/// Create a copy of LoginRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? login = null,Object? password = null,}) {
  return _then(_self.copyWith(
login: null == login ? _self.login : login // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [LoginRequestDto].
extension LoginRequestDtoPatterns on LoginRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _LoginRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _LoginRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String login,  String password)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginRequestDto() when $default != null:
return $default(_that.login,_that.password);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String login,  String password)  $default,) {final _that = this;
switch (_that) {
case _LoginRequestDto():
return $default(_that.login,_that.password);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String login,  String password)?  $default,) {final _that = this;
switch (_that) {
case _LoginRequestDto() when $default != null:
return $default(_that.login,_that.password);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LoginRequestDto implements LoginRequestDto {
  const _LoginRequestDto({required this.login, required this.password});
  factory _LoginRequestDto.fromJson(Map<String, dynamic> json) => _$LoginRequestDtoFromJson(json);

@override final  String login;
@override final  String password;

/// Create a copy of LoginRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginRequestDtoCopyWith<_LoginRequestDto> get copyWith => __$LoginRequestDtoCopyWithImpl<_LoginRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LoginRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginRequestDto&&(identical(other.login, login) || other.login == login)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,login,password);

@override
String toString() {
  return 'LoginRequestDto(login: $login, password: $password)';
}


}

/// @nodoc
abstract mixin class _$LoginRequestDtoCopyWith<$Res> implements $LoginRequestDtoCopyWith<$Res> {
  factory _$LoginRequestDtoCopyWith(_LoginRequestDto value, $Res Function(_LoginRequestDto) _then) = __$LoginRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String login, String password
});




}
/// @nodoc
class __$LoginRequestDtoCopyWithImpl<$Res>
    implements _$LoginRequestDtoCopyWith<$Res> {
  __$LoginRequestDtoCopyWithImpl(this._self, this._then);

  final _LoginRequestDto _self;
  final $Res Function(_LoginRequestDto) _then;

/// Create a copy of LoginRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? login = null,Object? password = null,}) {
  return _then(_LoginRequestDto(
login: null == login ? _self.login : login // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$RegisterRequestDto {

 String get login; String get password;@JsonKey(name: 'display_name') String? get displayName;
/// Create a copy of RegisterRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterRequestDtoCopyWith<RegisterRequestDto> get copyWith => _$RegisterRequestDtoCopyWithImpl<RegisterRequestDto>(this as RegisterRequestDto, _$identity);

  /// Serializes this RegisterRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterRequestDto&&(identical(other.login, login) || other.login == login)&&(identical(other.password, password) || other.password == password)&&(identical(other.displayName, displayName) || other.displayName == displayName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,login,password,displayName);

@override
String toString() {
  return 'RegisterRequestDto(login: $login, password: $password, displayName: $displayName)';
}


}

/// @nodoc
abstract mixin class $RegisterRequestDtoCopyWith<$Res>  {
  factory $RegisterRequestDtoCopyWith(RegisterRequestDto value, $Res Function(RegisterRequestDto) _then) = _$RegisterRequestDtoCopyWithImpl;
@useResult
$Res call({
 String login, String password,@JsonKey(name: 'display_name') String? displayName
});




}
/// @nodoc
class _$RegisterRequestDtoCopyWithImpl<$Res>
    implements $RegisterRequestDtoCopyWith<$Res> {
  _$RegisterRequestDtoCopyWithImpl(this._self, this._then);

  final RegisterRequestDto _self;
  final $Res Function(RegisterRequestDto) _then;

/// Create a copy of RegisterRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? login = null,Object? password = null,Object? displayName = freezed,}) {
  return _then(_self.copyWith(
login: null == login ? _self.login : login // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RegisterRequestDto].
extension RegisterRequestDtoPatterns on RegisterRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RegisterRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RegisterRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RegisterRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _RegisterRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RegisterRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _RegisterRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String login,  String password, @JsonKey(name: 'display_name')  String? displayName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RegisterRequestDto() when $default != null:
return $default(_that.login,_that.password,_that.displayName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String login,  String password, @JsonKey(name: 'display_name')  String? displayName)  $default,) {final _that = this;
switch (_that) {
case _RegisterRequestDto():
return $default(_that.login,_that.password,_that.displayName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String login,  String password, @JsonKey(name: 'display_name')  String? displayName)?  $default,) {final _that = this;
switch (_that) {
case _RegisterRequestDto() when $default != null:
return $default(_that.login,_that.password,_that.displayName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RegisterRequestDto implements RegisterRequestDto {
  const _RegisterRequestDto({required this.login, required this.password, @JsonKey(name: 'display_name') this.displayName});
  factory _RegisterRequestDto.fromJson(Map<String, dynamic> json) => _$RegisterRequestDtoFromJson(json);

@override final  String login;
@override final  String password;
@override@JsonKey(name: 'display_name') final  String? displayName;

/// Create a copy of RegisterRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegisterRequestDtoCopyWith<_RegisterRequestDto> get copyWith => __$RegisterRequestDtoCopyWithImpl<_RegisterRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RegisterRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterRequestDto&&(identical(other.login, login) || other.login == login)&&(identical(other.password, password) || other.password == password)&&(identical(other.displayName, displayName) || other.displayName == displayName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,login,password,displayName);

@override
String toString() {
  return 'RegisterRequestDto(login: $login, password: $password, displayName: $displayName)';
}


}

/// @nodoc
abstract mixin class _$RegisterRequestDtoCopyWith<$Res> implements $RegisterRequestDtoCopyWith<$Res> {
  factory _$RegisterRequestDtoCopyWith(_RegisterRequestDto value, $Res Function(_RegisterRequestDto) _then) = __$RegisterRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String login, String password,@JsonKey(name: 'display_name') String? displayName
});




}
/// @nodoc
class __$RegisterRequestDtoCopyWithImpl<$Res>
    implements _$RegisterRequestDtoCopyWith<$Res> {
  __$RegisterRequestDtoCopyWithImpl(this._self, this._then);

  final _RegisterRequestDto _self;
  final $Res Function(_RegisterRequestDto) _then;

/// Create a copy of RegisterRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? login = null,Object? password = null,Object? displayName = freezed,}) {
  return _then(_RegisterRequestDto(
login: null == login ? _self.login : login // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$RegisterVerifyRequestDto {

 String get login; String get code; String get password;@JsonKey(name: 'display_name') String? get displayName;
/// Create a copy of RegisterVerifyRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterVerifyRequestDtoCopyWith<RegisterVerifyRequestDto> get copyWith => _$RegisterVerifyRequestDtoCopyWithImpl<RegisterVerifyRequestDto>(this as RegisterVerifyRequestDto, _$identity);

  /// Serializes this RegisterVerifyRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterVerifyRequestDto&&(identical(other.login, login) || other.login == login)&&(identical(other.code, code) || other.code == code)&&(identical(other.password, password) || other.password == password)&&(identical(other.displayName, displayName) || other.displayName == displayName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,login,code,password,displayName);

@override
String toString() {
  return 'RegisterVerifyRequestDto(login: $login, code: $code, password: $password, displayName: $displayName)';
}


}

/// @nodoc
abstract mixin class $RegisterVerifyRequestDtoCopyWith<$Res>  {
  factory $RegisterVerifyRequestDtoCopyWith(RegisterVerifyRequestDto value, $Res Function(RegisterVerifyRequestDto) _then) = _$RegisterVerifyRequestDtoCopyWithImpl;
@useResult
$Res call({
 String login, String code, String password,@JsonKey(name: 'display_name') String? displayName
});




}
/// @nodoc
class _$RegisterVerifyRequestDtoCopyWithImpl<$Res>
    implements $RegisterVerifyRequestDtoCopyWith<$Res> {
  _$RegisterVerifyRequestDtoCopyWithImpl(this._self, this._then);

  final RegisterVerifyRequestDto _self;
  final $Res Function(RegisterVerifyRequestDto) _then;

/// Create a copy of RegisterVerifyRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? login = null,Object? code = null,Object? password = null,Object? displayName = freezed,}) {
  return _then(_self.copyWith(
login: null == login ? _self.login : login // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RegisterVerifyRequestDto].
extension RegisterVerifyRequestDtoPatterns on RegisterVerifyRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RegisterVerifyRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RegisterVerifyRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RegisterVerifyRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _RegisterVerifyRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RegisterVerifyRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _RegisterVerifyRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String login,  String code,  String password, @JsonKey(name: 'display_name')  String? displayName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RegisterVerifyRequestDto() when $default != null:
return $default(_that.login,_that.code,_that.password,_that.displayName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String login,  String code,  String password, @JsonKey(name: 'display_name')  String? displayName)  $default,) {final _that = this;
switch (_that) {
case _RegisterVerifyRequestDto():
return $default(_that.login,_that.code,_that.password,_that.displayName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String login,  String code,  String password, @JsonKey(name: 'display_name')  String? displayName)?  $default,) {final _that = this;
switch (_that) {
case _RegisterVerifyRequestDto() when $default != null:
return $default(_that.login,_that.code,_that.password,_that.displayName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RegisterVerifyRequestDto implements RegisterVerifyRequestDto {
  const _RegisterVerifyRequestDto({required this.login, required this.code, required this.password, @JsonKey(name: 'display_name') this.displayName});
  factory _RegisterVerifyRequestDto.fromJson(Map<String, dynamic> json) => _$RegisterVerifyRequestDtoFromJson(json);

@override final  String login;
@override final  String code;
@override final  String password;
@override@JsonKey(name: 'display_name') final  String? displayName;

/// Create a copy of RegisterVerifyRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegisterVerifyRequestDtoCopyWith<_RegisterVerifyRequestDto> get copyWith => __$RegisterVerifyRequestDtoCopyWithImpl<_RegisterVerifyRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RegisterVerifyRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterVerifyRequestDto&&(identical(other.login, login) || other.login == login)&&(identical(other.code, code) || other.code == code)&&(identical(other.password, password) || other.password == password)&&(identical(other.displayName, displayName) || other.displayName == displayName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,login,code,password,displayName);

@override
String toString() {
  return 'RegisterVerifyRequestDto(login: $login, code: $code, password: $password, displayName: $displayName)';
}


}

/// @nodoc
abstract mixin class _$RegisterVerifyRequestDtoCopyWith<$Res> implements $RegisterVerifyRequestDtoCopyWith<$Res> {
  factory _$RegisterVerifyRequestDtoCopyWith(_RegisterVerifyRequestDto value, $Res Function(_RegisterVerifyRequestDto) _then) = __$RegisterVerifyRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String login, String code, String password,@JsonKey(name: 'display_name') String? displayName
});




}
/// @nodoc
class __$RegisterVerifyRequestDtoCopyWithImpl<$Res>
    implements _$RegisterVerifyRequestDtoCopyWith<$Res> {
  __$RegisterVerifyRequestDtoCopyWithImpl(this._self, this._then);

  final _RegisterVerifyRequestDto _self;
  final $Res Function(_RegisterVerifyRequestDto) _then;

/// Create a copy of RegisterVerifyRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? login = null,Object? code = null,Object? password = null,Object? displayName = freezed,}) {
  return _then(_RegisterVerifyRequestDto(
login: null == login ? _self.login : login // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$OtpRequestDto {

 String get phone;
/// Create a copy of OtpRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OtpRequestDtoCopyWith<OtpRequestDto> get copyWith => _$OtpRequestDtoCopyWithImpl<OtpRequestDto>(this as OtpRequestDto, _$identity);

  /// Serializes this OtpRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OtpRequestDto&&(identical(other.phone, phone) || other.phone == phone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,phone);

@override
String toString() {
  return 'OtpRequestDto(phone: $phone)';
}


}

/// @nodoc
abstract mixin class $OtpRequestDtoCopyWith<$Res>  {
  factory $OtpRequestDtoCopyWith(OtpRequestDto value, $Res Function(OtpRequestDto) _then) = _$OtpRequestDtoCopyWithImpl;
@useResult
$Res call({
 String phone
});




}
/// @nodoc
class _$OtpRequestDtoCopyWithImpl<$Res>
    implements $OtpRequestDtoCopyWith<$Res> {
  _$OtpRequestDtoCopyWithImpl(this._self, this._then);

  final OtpRequestDto _self;
  final $Res Function(OtpRequestDto) _then;

/// Create a copy of OtpRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? phone = null,}) {
  return _then(_self.copyWith(
phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [OtpRequestDto].
extension OtpRequestDtoPatterns on OtpRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OtpRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OtpRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OtpRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _OtpRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OtpRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _OtpRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String phone)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OtpRequestDto() when $default != null:
return $default(_that.phone);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String phone)  $default,) {final _that = this;
switch (_that) {
case _OtpRequestDto():
return $default(_that.phone);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String phone)?  $default,) {final _that = this;
switch (_that) {
case _OtpRequestDto() when $default != null:
return $default(_that.phone);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OtpRequestDto implements OtpRequestDto {
  const _OtpRequestDto({required this.phone});
  factory _OtpRequestDto.fromJson(Map<String, dynamic> json) => _$OtpRequestDtoFromJson(json);

@override final  String phone;

/// Create a copy of OtpRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OtpRequestDtoCopyWith<_OtpRequestDto> get copyWith => __$OtpRequestDtoCopyWithImpl<_OtpRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OtpRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OtpRequestDto&&(identical(other.phone, phone) || other.phone == phone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,phone);

@override
String toString() {
  return 'OtpRequestDto(phone: $phone)';
}


}

/// @nodoc
abstract mixin class _$OtpRequestDtoCopyWith<$Res> implements $OtpRequestDtoCopyWith<$Res> {
  factory _$OtpRequestDtoCopyWith(_OtpRequestDto value, $Res Function(_OtpRequestDto) _then) = __$OtpRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String phone
});




}
/// @nodoc
class __$OtpRequestDtoCopyWithImpl<$Res>
    implements _$OtpRequestDtoCopyWith<$Res> {
  __$OtpRequestDtoCopyWithImpl(this._self, this._then);

  final _OtpRequestDto _self;
  final $Res Function(_OtpRequestDto) _then;

/// Create a copy of OtpRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? phone = null,}) {
  return _then(_OtpRequestDto(
phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$OtpVerifyRequestDto {

 String get phone; String get code;
/// Create a copy of OtpVerifyRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OtpVerifyRequestDtoCopyWith<OtpVerifyRequestDto> get copyWith => _$OtpVerifyRequestDtoCopyWithImpl<OtpVerifyRequestDto>(this as OtpVerifyRequestDto, _$identity);

  /// Serializes this OtpVerifyRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OtpVerifyRequestDto&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,phone,code);

@override
String toString() {
  return 'OtpVerifyRequestDto(phone: $phone, code: $code)';
}


}

/// @nodoc
abstract mixin class $OtpVerifyRequestDtoCopyWith<$Res>  {
  factory $OtpVerifyRequestDtoCopyWith(OtpVerifyRequestDto value, $Res Function(OtpVerifyRequestDto) _then) = _$OtpVerifyRequestDtoCopyWithImpl;
@useResult
$Res call({
 String phone, String code
});




}
/// @nodoc
class _$OtpVerifyRequestDtoCopyWithImpl<$Res>
    implements $OtpVerifyRequestDtoCopyWith<$Res> {
  _$OtpVerifyRequestDtoCopyWithImpl(this._self, this._then);

  final OtpVerifyRequestDto _self;
  final $Res Function(OtpVerifyRequestDto) _then;

/// Create a copy of OtpVerifyRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? phone = null,Object? code = null,}) {
  return _then(_self.copyWith(
phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [OtpVerifyRequestDto].
extension OtpVerifyRequestDtoPatterns on OtpVerifyRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OtpVerifyRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OtpVerifyRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OtpVerifyRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _OtpVerifyRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OtpVerifyRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _OtpVerifyRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String phone,  String code)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OtpVerifyRequestDto() when $default != null:
return $default(_that.phone,_that.code);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String phone,  String code)  $default,) {final _that = this;
switch (_that) {
case _OtpVerifyRequestDto():
return $default(_that.phone,_that.code);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String phone,  String code)?  $default,) {final _that = this;
switch (_that) {
case _OtpVerifyRequestDto() when $default != null:
return $default(_that.phone,_that.code);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OtpVerifyRequestDto implements OtpVerifyRequestDto {
  const _OtpVerifyRequestDto({required this.phone, required this.code});
  factory _OtpVerifyRequestDto.fromJson(Map<String, dynamic> json) => _$OtpVerifyRequestDtoFromJson(json);

@override final  String phone;
@override final  String code;

/// Create a copy of OtpVerifyRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OtpVerifyRequestDtoCopyWith<_OtpVerifyRequestDto> get copyWith => __$OtpVerifyRequestDtoCopyWithImpl<_OtpVerifyRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OtpVerifyRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OtpVerifyRequestDto&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,phone,code);

@override
String toString() {
  return 'OtpVerifyRequestDto(phone: $phone, code: $code)';
}


}

/// @nodoc
abstract mixin class _$OtpVerifyRequestDtoCopyWith<$Res> implements $OtpVerifyRequestDtoCopyWith<$Res> {
  factory _$OtpVerifyRequestDtoCopyWith(_OtpVerifyRequestDto value, $Res Function(_OtpVerifyRequestDto) _then) = __$OtpVerifyRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String phone, String code
});




}
/// @nodoc
class __$OtpVerifyRequestDtoCopyWithImpl<$Res>
    implements _$OtpVerifyRequestDtoCopyWith<$Res> {
  __$OtpVerifyRequestDtoCopyWithImpl(this._self, this._then);

  final _OtpVerifyRequestDto _self;
  final $Res Function(_OtpVerifyRequestDto) _then;

/// Create a copy of OtpVerifyRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? phone = null,Object? code = null,}) {
  return _then(_OtpVerifyRequestDto(
phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ForgotPasswordRequestDto {

 String get login;
/// Create a copy of ForgotPasswordRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ForgotPasswordRequestDtoCopyWith<ForgotPasswordRequestDto> get copyWith => _$ForgotPasswordRequestDtoCopyWithImpl<ForgotPasswordRequestDto>(this as ForgotPasswordRequestDto, _$identity);

  /// Serializes this ForgotPasswordRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForgotPasswordRequestDto&&(identical(other.login, login) || other.login == login));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,login);

@override
String toString() {
  return 'ForgotPasswordRequestDto(login: $login)';
}


}

/// @nodoc
abstract mixin class $ForgotPasswordRequestDtoCopyWith<$Res>  {
  factory $ForgotPasswordRequestDtoCopyWith(ForgotPasswordRequestDto value, $Res Function(ForgotPasswordRequestDto) _then) = _$ForgotPasswordRequestDtoCopyWithImpl;
@useResult
$Res call({
 String login
});




}
/// @nodoc
class _$ForgotPasswordRequestDtoCopyWithImpl<$Res>
    implements $ForgotPasswordRequestDtoCopyWith<$Res> {
  _$ForgotPasswordRequestDtoCopyWithImpl(this._self, this._then);

  final ForgotPasswordRequestDto _self;
  final $Res Function(ForgotPasswordRequestDto) _then;

/// Create a copy of ForgotPasswordRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? login = null,}) {
  return _then(_self.copyWith(
login: null == login ? _self.login : login // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ForgotPasswordRequestDto].
extension ForgotPasswordRequestDtoPatterns on ForgotPasswordRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ForgotPasswordRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ForgotPasswordRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ForgotPasswordRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _ForgotPasswordRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ForgotPasswordRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _ForgotPasswordRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String login)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ForgotPasswordRequestDto() when $default != null:
return $default(_that.login);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String login)  $default,) {final _that = this;
switch (_that) {
case _ForgotPasswordRequestDto():
return $default(_that.login);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String login)?  $default,) {final _that = this;
switch (_that) {
case _ForgotPasswordRequestDto() when $default != null:
return $default(_that.login);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ForgotPasswordRequestDto implements ForgotPasswordRequestDto {
  const _ForgotPasswordRequestDto({required this.login});
  factory _ForgotPasswordRequestDto.fromJson(Map<String, dynamic> json) => _$ForgotPasswordRequestDtoFromJson(json);

@override final  String login;

/// Create a copy of ForgotPasswordRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ForgotPasswordRequestDtoCopyWith<_ForgotPasswordRequestDto> get copyWith => __$ForgotPasswordRequestDtoCopyWithImpl<_ForgotPasswordRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ForgotPasswordRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ForgotPasswordRequestDto&&(identical(other.login, login) || other.login == login));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,login);

@override
String toString() {
  return 'ForgotPasswordRequestDto(login: $login)';
}


}

/// @nodoc
abstract mixin class _$ForgotPasswordRequestDtoCopyWith<$Res> implements $ForgotPasswordRequestDtoCopyWith<$Res> {
  factory _$ForgotPasswordRequestDtoCopyWith(_ForgotPasswordRequestDto value, $Res Function(_ForgotPasswordRequestDto) _then) = __$ForgotPasswordRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String login
});




}
/// @nodoc
class __$ForgotPasswordRequestDtoCopyWithImpl<$Res>
    implements _$ForgotPasswordRequestDtoCopyWith<$Res> {
  __$ForgotPasswordRequestDtoCopyWithImpl(this._self, this._then);

  final _ForgotPasswordRequestDto _self;
  final $Res Function(_ForgotPasswordRequestDto) _then;

/// Create a copy of ForgotPasswordRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? login = null,}) {
  return _then(_ForgotPasswordRequestDto(
login: null == login ? _self.login : login // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ResetPasswordRequestDto {

 String get login; String get code; String get password;
/// Create a copy of ResetPasswordRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResetPasswordRequestDtoCopyWith<ResetPasswordRequestDto> get copyWith => _$ResetPasswordRequestDtoCopyWithImpl<ResetPasswordRequestDto>(this as ResetPasswordRequestDto, _$identity);

  /// Serializes this ResetPasswordRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResetPasswordRequestDto&&(identical(other.login, login) || other.login == login)&&(identical(other.code, code) || other.code == code)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,login,code,password);

@override
String toString() {
  return 'ResetPasswordRequestDto(login: $login, code: $code, password: $password)';
}


}

/// @nodoc
abstract mixin class $ResetPasswordRequestDtoCopyWith<$Res>  {
  factory $ResetPasswordRequestDtoCopyWith(ResetPasswordRequestDto value, $Res Function(ResetPasswordRequestDto) _then) = _$ResetPasswordRequestDtoCopyWithImpl;
@useResult
$Res call({
 String login, String code, String password
});




}
/// @nodoc
class _$ResetPasswordRequestDtoCopyWithImpl<$Res>
    implements $ResetPasswordRequestDtoCopyWith<$Res> {
  _$ResetPasswordRequestDtoCopyWithImpl(this._self, this._then);

  final ResetPasswordRequestDto _self;
  final $Res Function(ResetPasswordRequestDto) _then;

/// Create a copy of ResetPasswordRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? login = null,Object? code = null,Object? password = null,}) {
  return _then(_self.copyWith(
login: null == login ? _self.login : login // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ResetPasswordRequestDto].
extension ResetPasswordRequestDtoPatterns on ResetPasswordRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ResetPasswordRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ResetPasswordRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ResetPasswordRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _ResetPasswordRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ResetPasswordRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _ResetPasswordRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String login,  String code,  String password)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ResetPasswordRequestDto() when $default != null:
return $default(_that.login,_that.code,_that.password);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String login,  String code,  String password)  $default,) {final _that = this;
switch (_that) {
case _ResetPasswordRequestDto():
return $default(_that.login,_that.code,_that.password);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String login,  String code,  String password)?  $default,) {final _that = this;
switch (_that) {
case _ResetPasswordRequestDto() when $default != null:
return $default(_that.login,_that.code,_that.password);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ResetPasswordRequestDto implements ResetPasswordRequestDto {
  const _ResetPasswordRequestDto({required this.login, required this.code, required this.password});
  factory _ResetPasswordRequestDto.fromJson(Map<String, dynamic> json) => _$ResetPasswordRequestDtoFromJson(json);

@override final  String login;
@override final  String code;
@override final  String password;

/// Create a copy of ResetPasswordRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ResetPasswordRequestDtoCopyWith<_ResetPasswordRequestDto> get copyWith => __$ResetPasswordRequestDtoCopyWithImpl<_ResetPasswordRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ResetPasswordRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResetPasswordRequestDto&&(identical(other.login, login) || other.login == login)&&(identical(other.code, code) || other.code == code)&&(identical(other.password, password) || other.password == password));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,login,code,password);

@override
String toString() {
  return 'ResetPasswordRequestDto(login: $login, code: $code, password: $password)';
}


}

/// @nodoc
abstract mixin class _$ResetPasswordRequestDtoCopyWith<$Res> implements $ResetPasswordRequestDtoCopyWith<$Res> {
  factory _$ResetPasswordRequestDtoCopyWith(_ResetPasswordRequestDto value, $Res Function(_ResetPasswordRequestDto) _then) = __$ResetPasswordRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String login, String code, String password
});




}
/// @nodoc
class __$ResetPasswordRequestDtoCopyWithImpl<$Res>
    implements _$ResetPasswordRequestDtoCopyWith<$Res> {
  __$ResetPasswordRequestDtoCopyWithImpl(this._self, this._then);

  final _ResetPasswordRequestDto _self;
  final $Res Function(_ResetPasswordRequestDto) _then;

/// Create a copy of ResetPasswordRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? login = null,Object? code = null,Object? password = null,}) {
  return _then(_ResetPasswordRequestDto(
login: null == login ? _self.login : login // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$TokenRefreshRequestDto {

 String get refresh;
/// Create a copy of TokenRefreshRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TokenRefreshRequestDtoCopyWith<TokenRefreshRequestDto> get copyWith => _$TokenRefreshRequestDtoCopyWithImpl<TokenRefreshRequestDto>(this as TokenRefreshRequestDto, _$identity);

  /// Serializes this TokenRefreshRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TokenRefreshRequestDto&&(identical(other.refresh, refresh) || other.refresh == refresh));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,refresh);

@override
String toString() {
  return 'TokenRefreshRequestDto(refresh: $refresh)';
}


}

/// @nodoc
abstract mixin class $TokenRefreshRequestDtoCopyWith<$Res>  {
  factory $TokenRefreshRequestDtoCopyWith(TokenRefreshRequestDto value, $Res Function(TokenRefreshRequestDto) _then) = _$TokenRefreshRequestDtoCopyWithImpl;
@useResult
$Res call({
 String refresh
});




}
/// @nodoc
class _$TokenRefreshRequestDtoCopyWithImpl<$Res>
    implements $TokenRefreshRequestDtoCopyWith<$Res> {
  _$TokenRefreshRequestDtoCopyWithImpl(this._self, this._then);

  final TokenRefreshRequestDto _self;
  final $Res Function(TokenRefreshRequestDto) _then;

/// Create a copy of TokenRefreshRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? refresh = null,}) {
  return _then(_self.copyWith(
refresh: null == refresh ? _self.refresh : refresh // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TokenRefreshRequestDto].
extension TokenRefreshRequestDtoPatterns on TokenRefreshRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TokenRefreshRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TokenRefreshRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TokenRefreshRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _TokenRefreshRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TokenRefreshRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _TokenRefreshRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String refresh)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TokenRefreshRequestDto() when $default != null:
return $default(_that.refresh);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String refresh)  $default,) {final _that = this;
switch (_that) {
case _TokenRefreshRequestDto():
return $default(_that.refresh);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String refresh)?  $default,) {final _that = this;
switch (_that) {
case _TokenRefreshRequestDto() when $default != null:
return $default(_that.refresh);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TokenRefreshRequestDto implements TokenRefreshRequestDto {
  const _TokenRefreshRequestDto({required this.refresh});
  factory _TokenRefreshRequestDto.fromJson(Map<String, dynamic> json) => _$TokenRefreshRequestDtoFromJson(json);

@override final  String refresh;

/// Create a copy of TokenRefreshRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TokenRefreshRequestDtoCopyWith<_TokenRefreshRequestDto> get copyWith => __$TokenRefreshRequestDtoCopyWithImpl<_TokenRefreshRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TokenRefreshRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TokenRefreshRequestDto&&(identical(other.refresh, refresh) || other.refresh == refresh));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,refresh);

@override
String toString() {
  return 'TokenRefreshRequestDto(refresh: $refresh)';
}


}

/// @nodoc
abstract mixin class _$TokenRefreshRequestDtoCopyWith<$Res> implements $TokenRefreshRequestDtoCopyWith<$Res> {
  factory _$TokenRefreshRequestDtoCopyWith(_TokenRefreshRequestDto value, $Res Function(_TokenRefreshRequestDto) _then) = __$TokenRefreshRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String refresh
});




}
/// @nodoc
class __$TokenRefreshRequestDtoCopyWithImpl<$Res>
    implements _$TokenRefreshRequestDtoCopyWith<$Res> {
  __$TokenRefreshRequestDtoCopyWithImpl(this._self, this._then);

  final _TokenRefreshRequestDto _self;
  final $Res Function(_TokenRefreshRequestDto) _then;

/// Create a copy of TokenRefreshRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? refresh = null,}) {
  return _then(_TokenRefreshRequestDto(
refresh: null == refresh ? _self.refresh : refresh // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$AuthResponseDto {

 String get access; String get refresh; ProfileDto get profile;
/// Create a copy of AuthResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthResponseDtoCopyWith<AuthResponseDto> get copyWith => _$AuthResponseDtoCopyWithImpl<AuthResponseDto>(this as AuthResponseDto, _$identity);

  /// Serializes this AuthResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthResponseDto&&(identical(other.access, access) || other.access == access)&&(identical(other.refresh, refresh) || other.refresh == refresh)&&(identical(other.profile, profile) || other.profile == profile));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,access,refresh,profile);

@override
String toString() {
  return 'AuthResponseDto(access: $access, refresh: $refresh, profile: $profile)';
}


}

/// @nodoc
abstract mixin class $AuthResponseDtoCopyWith<$Res>  {
  factory $AuthResponseDtoCopyWith(AuthResponseDto value, $Res Function(AuthResponseDto) _then) = _$AuthResponseDtoCopyWithImpl;
@useResult
$Res call({
 String access, String refresh, ProfileDto profile
});


$ProfileDtoCopyWith<$Res> get profile;

}
/// @nodoc
class _$AuthResponseDtoCopyWithImpl<$Res>
    implements $AuthResponseDtoCopyWith<$Res> {
  _$AuthResponseDtoCopyWithImpl(this._self, this._then);

  final AuthResponseDto _self;
  final $Res Function(AuthResponseDto) _then;

/// Create a copy of AuthResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? access = null,Object? refresh = null,Object? profile = null,}) {
  return _then(_self.copyWith(
access: null == access ? _self.access : access // ignore: cast_nullable_to_non_nullable
as String,refresh: null == refresh ? _self.refresh : refresh // ignore: cast_nullable_to_non_nullable
as String,profile: null == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as ProfileDto,
  ));
}
/// Create a copy of AuthResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileDtoCopyWith<$Res> get profile {
  
  return $ProfileDtoCopyWith<$Res>(_self.profile, (value) {
    return _then(_self.copyWith(profile: value));
  });
}
}


/// Adds pattern-matching-related methods to [AuthResponseDto].
extension AuthResponseDtoPatterns on AuthResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _AuthResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _AuthResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String access,  String refresh,  ProfileDto profile)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthResponseDto() when $default != null:
return $default(_that.access,_that.refresh,_that.profile);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String access,  String refresh,  ProfileDto profile)  $default,) {final _that = this;
switch (_that) {
case _AuthResponseDto():
return $default(_that.access,_that.refresh,_that.profile);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String access,  String refresh,  ProfileDto profile)?  $default,) {final _that = this;
switch (_that) {
case _AuthResponseDto() when $default != null:
return $default(_that.access,_that.refresh,_that.profile);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuthResponseDto implements AuthResponseDto {
  const _AuthResponseDto({required this.access, required this.refresh, required this.profile});
  factory _AuthResponseDto.fromJson(Map<String, dynamic> json) => _$AuthResponseDtoFromJson(json);

@override final  String access;
@override final  String refresh;
@override final  ProfileDto profile;

/// Create a copy of AuthResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthResponseDtoCopyWith<_AuthResponseDto> get copyWith => __$AuthResponseDtoCopyWithImpl<_AuthResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthResponseDto&&(identical(other.access, access) || other.access == access)&&(identical(other.refresh, refresh) || other.refresh == refresh)&&(identical(other.profile, profile) || other.profile == profile));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,access,refresh,profile);

@override
String toString() {
  return 'AuthResponseDto(access: $access, refresh: $refresh, profile: $profile)';
}


}

/// @nodoc
abstract mixin class _$AuthResponseDtoCopyWith<$Res> implements $AuthResponseDtoCopyWith<$Res> {
  factory _$AuthResponseDtoCopyWith(_AuthResponseDto value, $Res Function(_AuthResponseDto) _then) = __$AuthResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 String access, String refresh, ProfileDto profile
});


@override $ProfileDtoCopyWith<$Res> get profile;

}
/// @nodoc
class __$AuthResponseDtoCopyWithImpl<$Res>
    implements _$AuthResponseDtoCopyWith<$Res> {
  __$AuthResponseDtoCopyWithImpl(this._self, this._then);

  final _AuthResponseDto _self;
  final $Res Function(_AuthResponseDto) _then;

/// Create a copy of AuthResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? access = null,Object? refresh = null,Object? profile = null,}) {
  return _then(_AuthResponseDto(
access: null == access ? _self.access : access // ignore: cast_nullable_to_non_nullable
as String,refresh: null == refresh ? _self.refresh : refresh // ignore: cast_nullable_to_non_nullable
as String,profile: null == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as ProfileDto,
  ));
}

/// Create a copy of AuthResponseDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileDtoCopyWith<$Res> get profile {
  
  return $ProfileDtoCopyWith<$Res>(_self.profile, (value) {
    return _then(_self.copyWith(profile: value));
  });
}
}


/// @nodoc
mixin _$TokenRefreshResponseDto {

 String get access;
/// Create a copy of TokenRefreshResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TokenRefreshResponseDtoCopyWith<TokenRefreshResponseDto> get copyWith => _$TokenRefreshResponseDtoCopyWithImpl<TokenRefreshResponseDto>(this as TokenRefreshResponseDto, _$identity);

  /// Serializes this TokenRefreshResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TokenRefreshResponseDto&&(identical(other.access, access) || other.access == access));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,access);

@override
String toString() {
  return 'TokenRefreshResponseDto(access: $access)';
}


}

/// @nodoc
abstract mixin class $TokenRefreshResponseDtoCopyWith<$Res>  {
  factory $TokenRefreshResponseDtoCopyWith(TokenRefreshResponseDto value, $Res Function(TokenRefreshResponseDto) _then) = _$TokenRefreshResponseDtoCopyWithImpl;
@useResult
$Res call({
 String access
});




}
/// @nodoc
class _$TokenRefreshResponseDtoCopyWithImpl<$Res>
    implements $TokenRefreshResponseDtoCopyWith<$Res> {
  _$TokenRefreshResponseDtoCopyWithImpl(this._self, this._then);

  final TokenRefreshResponseDto _self;
  final $Res Function(TokenRefreshResponseDto) _then;

/// Create a copy of TokenRefreshResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? access = null,}) {
  return _then(_self.copyWith(
access: null == access ? _self.access : access // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TokenRefreshResponseDto].
extension TokenRefreshResponseDtoPatterns on TokenRefreshResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TokenRefreshResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TokenRefreshResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TokenRefreshResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _TokenRefreshResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TokenRefreshResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _TokenRefreshResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String access)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TokenRefreshResponseDto() when $default != null:
return $default(_that.access);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String access)  $default,) {final _that = this;
switch (_that) {
case _TokenRefreshResponseDto():
return $default(_that.access);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String access)?  $default,) {final _that = this;
switch (_that) {
case _TokenRefreshResponseDto() when $default != null:
return $default(_that.access);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TokenRefreshResponseDto implements TokenRefreshResponseDto {
  const _TokenRefreshResponseDto({required this.access});
  factory _TokenRefreshResponseDto.fromJson(Map<String, dynamic> json) => _$TokenRefreshResponseDtoFromJson(json);

@override final  String access;

/// Create a copy of TokenRefreshResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TokenRefreshResponseDtoCopyWith<_TokenRefreshResponseDto> get copyWith => __$TokenRefreshResponseDtoCopyWithImpl<_TokenRefreshResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TokenRefreshResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TokenRefreshResponseDto&&(identical(other.access, access) || other.access == access));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,access);

@override
String toString() {
  return 'TokenRefreshResponseDto(access: $access)';
}


}

/// @nodoc
abstract mixin class _$TokenRefreshResponseDtoCopyWith<$Res> implements $TokenRefreshResponseDtoCopyWith<$Res> {
  factory _$TokenRefreshResponseDtoCopyWith(_TokenRefreshResponseDto value, $Res Function(_TokenRefreshResponseDto) _then) = __$TokenRefreshResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 String access
});




}
/// @nodoc
class __$TokenRefreshResponseDtoCopyWithImpl<$Res>
    implements _$TokenRefreshResponseDtoCopyWith<$Res> {
  __$TokenRefreshResponseDtoCopyWithImpl(this._self, this._then);

  final _TokenRefreshResponseDto _self;
  final $Res Function(_TokenRefreshResponseDto) _then;

/// Create a copy of TokenRefreshResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? access = null,}) {
  return _then(_TokenRefreshResponseDto(
access: null == access ? _self.access : access // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$TelegramAuthDataDto {

 int get id;@JsonKey(name: 'first_name') String? get firstName;@JsonKey(name: 'last_name') String? get lastName; String? get username;@JsonKey(name: 'photo_url') String? get photoUrl;@JsonKey(name: 'auth_date') int get authDate; String get hash;
/// Create a copy of TelegramAuthDataDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TelegramAuthDataDtoCopyWith<TelegramAuthDataDto> get copyWith => _$TelegramAuthDataDtoCopyWithImpl<TelegramAuthDataDto>(this as TelegramAuthDataDto, _$identity);

  /// Serializes this TelegramAuthDataDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TelegramAuthDataDto&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.username, username) || other.username == username)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&(identical(other.authDate, authDate) || other.authDate == authDate)&&(identical(other.hash, hash) || other.hash == hash));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,firstName,lastName,username,photoUrl,authDate,hash);

@override
String toString() {
  return 'TelegramAuthDataDto(id: $id, firstName: $firstName, lastName: $lastName, username: $username, photoUrl: $photoUrl, authDate: $authDate, hash: $hash)';
}


}

/// @nodoc
abstract mixin class $TelegramAuthDataDtoCopyWith<$Res>  {
  factory $TelegramAuthDataDtoCopyWith(TelegramAuthDataDto value, $Res Function(TelegramAuthDataDto) _then) = _$TelegramAuthDataDtoCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'first_name') String? firstName,@JsonKey(name: 'last_name') String? lastName, String? username,@JsonKey(name: 'photo_url') String? photoUrl,@JsonKey(name: 'auth_date') int authDate, String hash
});




}
/// @nodoc
class _$TelegramAuthDataDtoCopyWithImpl<$Res>
    implements $TelegramAuthDataDtoCopyWith<$Res> {
  _$TelegramAuthDataDtoCopyWithImpl(this._self, this._then);

  final TelegramAuthDataDto _self;
  final $Res Function(TelegramAuthDataDto) _then;

/// Create a copy of TelegramAuthDataDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? firstName = freezed,Object? lastName = freezed,Object? username = freezed,Object? photoUrl = freezed,Object? authDate = null,Object? hash = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,authDate: null == authDate ? _self.authDate : authDate // ignore: cast_nullable_to_non_nullable
as int,hash: null == hash ? _self.hash : hash // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TelegramAuthDataDto].
extension TelegramAuthDataDtoPatterns on TelegramAuthDataDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TelegramAuthDataDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TelegramAuthDataDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TelegramAuthDataDto value)  $default,){
final _that = this;
switch (_that) {
case _TelegramAuthDataDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TelegramAuthDataDto value)?  $default,){
final _that = this;
switch (_that) {
case _TelegramAuthDataDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'last_name')  String? lastName,  String? username, @JsonKey(name: 'photo_url')  String? photoUrl, @JsonKey(name: 'auth_date')  int authDate,  String hash)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TelegramAuthDataDto() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName,_that.username,_that.photoUrl,_that.authDate,_that.hash);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'last_name')  String? lastName,  String? username, @JsonKey(name: 'photo_url')  String? photoUrl, @JsonKey(name: 'auth_date')  int authDate,  String hash)  $default,) {final _that = this;
switch (_that) {
case _TelegramAuthDataDto():
return $default(_that.id,_that.firstName,_that.lastName,_that.username,_that.photoUrl,_that.authDate,_that.hash);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'first_name')  String? firstName, @JsonKey(name: 'last_name')  String? lastName,  String? username, @JsonKey(name: 'photo_url')  String? photoUrl, @JsonKey(name: 'auth_date')  int authDate,  String hash)?  $default,) {final _that = this;
switch (_that) {
case _TelegramAuthDataDto() when $default != null:
return $default(_that.id,_that.firstName,_that.lastName,_that.username,_that.photoUrl,_that.authDate,_that.hash);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TelegramAuthDataDto implements TelegramAuthDataDto {
  const _TelegramAuthDataDto({required this.id, @JsonKey(name: 'first_name') this.firstName, @JsonKey(name: 'last_name') this.lastName, this.username, @JsonKey(name: 'photo_url') this.photoUrl, @JsonKey(name: 'auth_date') required this.authDate, required this.hash});
  factory _TelegramAuthDataDto.fromJson(Map<String, dynamic> json) => _$TelegramAuthDataDtoFromJson(json);

@override final  int id;
@override@JsonKey(name: 'first_name') final  String? firstName;
@override@JsonKey(name: 'last_name') final  String? lastName;
@override final  String? username;
@override@JsonKey(name: 'photo_url') final  String? photoUrl;
@override@JsonKey(name: 'auth_date') final  int authDate;
@override final  String hash;

/// Create a copy of TelegramAuthDataDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TelegramAuthDataDtoCopyWith<_TelegramAuthDataDto> get copyWith => __$TelegramAuthDataDtoCopyWithImpl<_TelegramAuthDataDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TelegramAuthDataDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TelegramAuthDataDto&&(identical(other.id, id) || other.id == id)&&(identical(other.firstName, firstName) || other.firstName == firstName)&&(identical(other.lastName, lastName) || other.lastName == lastName)&&(identical(other.username, username) || other.username == username)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&(identical(other.authDate, authDate) || other.authDate == authDate)&&(identical(other.hash, hash) || other.hash == hash));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,firstName,lastName,username,photoUrl,authDate,hash);

@override
String toString() {
  return 'TelegramAuthDataDto(id: $id, firstName: $firstName, lastName: $lastName, username: $username, photoUrl: $photoUrl, authDate: $authDate, hash: $hash)';
}


}

/// @nodoc
abstract mixin class _$TelegramAuthDataDtoCopyWith<$Res> implements $TelegramAuthDataDtoCopyWith<$Res> {
  factory _$TelegramAuthDataDtoCopyWith(_TelegramAuthDataDto value, $Res Function(_TelegramAuthDataDto) _then) = __$TelegramAuthDataDtoCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'first_name') String? firstName,@JsonKey(name: 'last_name') String? lastName, String? username,@JsonKey(name: 'photo_url') String? photoUrl,@JsonKey(name: 'auth_date') int authDate, String hash
});




}
/// @nodoc
class __$TelegramAuthDataDtoCopyWithImpl<$Res>
    implements _$TelegramAuthDataDtoCopyWith<$Res> {
  __$TelegramAuthDataDtoCopyWithImpl(this._self, this._then);

  final _TelegramAuthDataDto _self;
  final $Res Function(_TelegramAuthDataDto) _then;

/// Create a copy of TelegramAuthDataDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? firstName = freezed,Object? lastName = freezed,Object? username = freezed,Object? photoUrl = freezed,Object? authDate = null,Object? hash = null,}) {
  return _then(_TelegramAuthDataDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,firstName: freezed == firstName ? _self.firstName : firstName // ignore: cast_nullable_to_non_nullable
as String?,lastName: freezed == lastName ? _self.lastName : lastName // ignore: cast_nullable_to_non_nullable
as String?,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,authDate: null == authDate ? _self.authDate : authDate // ignore: cast_nullable_to_non_nullable
as int,hash: null == hash ? _self.hash : hash // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$ProfileDto {

@JsonKey(name: 'user_id') int get userId; String get username;@JsonKey(name: 'phone_e164') String get phoneE164; String get email;@JsonKey(name: 'display_name') String get displayName;@JsonKey(name: 'avatar_url') String? get avatarUrl; String? get about;@JsonKey(name: 'location_id') int? get locationId;@JsonKey(name: 'location_name') String? get locationName; String? get logo; String? get banner;@JsonKey(name: 'telegram_id') int? get telegramId;@JsonKey(name: 'telegram_username') String? get telegramUsername;@JsonKey(name: 'telegram_photo_url') String? get telegramPhotoUrl;@JsonKey(name: 'notify_new_messages') bool get notifyNewMessages;@JsonKey(name: 'notify_saved_searches') bool get notifySavedSearches;@JsonKey(name: 'notify_promotions') bool get notifyPromotions;@JsonKey(name: 'last_active_at') String? get lastActiveAt;@JsonKey(name: 'created_at') String get createdAt;
/// Create a copy of ProfileDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileDtoCopyWith<ProfileDto> get copyWith => _$ProfileDtoCopyWithImpl<ProfileDto>(this as ProfileDto, _$identity);

  /// Serializes this ProfileDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileDto&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.username, username) || other.username == username)&&(identical(other.phoneE164, phoneE164) || other.phoneE164 == phoneE164)&&(identical(other.email, email) || other.email == email)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.about, about) || other.about == about)&&(identical(other.locationId, locationId) || other.locationId == locationId)&&(identical(other.locationName, locationName) || other.locationName == locationName)&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.banner, banner) || other.banner == banner)&&(identical(other.telegramId, telegramId) || other.telegramId == telegramId)&&(identical(other.telegramUsername, telegramUsername) || other.telegramUsername == telegramUsername)&&(identical(other.telegramPhotoUrl, telegramPhotoUrl) || other.telegramPhotoUrl == telegramPhotoUrl)&&(identical(other.notifyNewMessages, notifyNewMessages) || other.notifyNewMessages == notifyNewMessages)&&(identical(other.notifySavedSearches, notifySavedSearches) || other.notifySavedSearches == notifySavedSearches)&&(identical(other.notifyPromotions, notifyPromotions) || other.notifyPromotions == notifyPromotions)&&(identical(other.lastActiveAt, lastActiveAt) || other.lastActiveAt == lastActiveAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,userId,username,phoneE164,email,displayName,avatarUrl,about,locationId,locationName,logo,banner,telegramId,telegramUsername,telegramPhotoUrl,notifyNewMessages,notifySavedSearches,notifyPromotions,lastActiveAt,createdAt]);

@override
String toString() {
  return 'ProfileDto(userId: $userId, username: $username, phoneE164: $phoneE164, email: $email, displayName: $displayName, avatarUrl: $avatarUrl, about: $about, locationId: $locationId, locationName: $locationName, logo: $logo, banner: $banner, telegramId: $telegramId, telegramUsername: $telegramUsername, telegramPhotoUrl: $telegramPhotoUrl, notifyNewMessages: $notifyNewMessages, notifySavedSearches: $notifySavedSearches, notifyPromotions: $notifyPromotions, lastActiveAt: $lastActiveAt, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $ProfileDtoCopyWith<$Res>  {
  factory $ProfileDtoCopyWith(ProfileDto value, $Res Function(ProfileDto) _then) = _$ProfileDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'user_id') int userId, String username,@JsonKey(name: 'phone_e164') String phoneE164, String email,@JsonKey(name: 'display_name') String displayName,@JsonKey(name: 'avatar_url') String? avatarUrl, String? about,@JsonKey(name: 'location_id') int? locationId,@JsonKey(name: 'location_name') String? locationName, String? logo, String? banner,@JsonKey(name: 'telegram_id') int? telegramId,@JsonKey(name: 'telegram_username') String? telegramUsername,@JsonKey(name: 'telegram_photo_url') String? telegramPhotoUrl,@JsonKey(name: 'notify_new_messages') bool notifyNewMessages,@JsonKey(name: 'notify_saved_searches') bool notifySavedSearches,@JsonKey(name: 'notify_promotions') bool notifyPromotions,@JsonKey(name: 'last_active_at') String? lastActiveAt,@JsonKey(name: 'created_at') String createdAt
});




}
/// @nodoc
class _$ProfileDtoCopyWithImpl<$Res>
    implements $ProfileDtoCopyWith<$Res> {
  _$ProfileDtoCopyWithImpl(this._self, this._then);

  final ProfileDto _self;
  final $Res Function(ProfileDto) _then;

/// Create a copy of ProfileDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? username = null,Object? phoneE164 = null,Object? email = null,Object? displayName = null,Object? avatarUrl = freezed,Object? about = freezed,Object? locationId = freezed,Object? locationName = freezed,Object? logo = freezed,Object? banner = freezed,Object? telegramId = freezed,Object? telegramUsername = freezed,Object? telegramPhotoUrl = freezed,Object? notifyNewMessages = null,Object? notifySavedSearches = null,Object? notifyPromotions = null,Object? lastActiveAt = freezed,Object? createdAt = null,}) {
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
as String?,logo: freezed == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String?,banner: freezed == banner ? _self.banner : banner // ignore: cast_nullable_to_non_nullable
as String?,telegramId: freezed == telegramId ? _self.telegramId : telegramId // ignore: cast_nullable_to_non_nullable
as int?,telegramUsername: freezed == telegramUsername ? _self.telegramUsername : telegramUsername // ignore: cast_nullable_to_non_nullable
as String?,telegramPhotoUrl: freezed == telegramPhotoUrl ? _self.telegramPhotoUrl : telegramPhotoUrl // ignore: cast_nullable_to_non_nullable
as String?,notifyNewMessages: null == notifyNewMessages ? _self.notifyNewMessages : notifyNewMessages // ignore: cast_nullable_to_non_nullable
as bool,notifySavedSearches: null == notifySavedSearches ? _self.notifySavedSearches : notifySavedSearches // ignore: cast_nullable_to_non_nullable
as bool,notifyPromotions: null == notifyPromotions ? _self.notifyPromotions : notifyPromotions // ignore: cast_nullable_to_non_nullable
as bool,lastActiveAt: freezed == lastActiveAt ? _self.lastActiveAt : lastActiveAt // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ProfileDto].
extension ProfileDtoPatterns on ProfileDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileDto value)  $default,){
final _that = this;
switch (_that) {
case _ProfileDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileDto value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_id')  int userId,  String username, @JsonKey(name: 'phone_e164')  String phoneE164,  String email, @JsonKey(name: 'display_name')  String displayName, @JsonKey(name: 'avatar_url')  String? avatarUrl,  String? about, @JsonKey(name: 'location_id')  int? locationId, @JsonKey(name: 'location_name')  String? locationName,  String? logo,  String? banner, @JsonKey(name: 'telegram_id')  int? telegramId, @JsonKey(name: 'telegram_username')  String? telegramUsername, @JsonKey(name: 'telegram_photo_url')  String? telegramPhotoUrl, @JsonKey(name: 'notify_new_messages')  bool notifyNewMessages, @JsonKey(name: 'notify_saved_searches')  bool notifySavedSearches, @JsonKey(name: 'notify_promotions')  bool notifyPromotions, @JsonKey(name: 'last_active_at')  String? lastActiveAt, @JsonKey(name: 'created_at')  String createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileDto() when $default != null:
return $default(_that.userId,_that.username,_that.phoneE164,_that.email,_that.displayName,_that.avatarUrl,_that.about,_that.locationId,_that.locationName,_that.logo,_that.banner,_that.telegramId,_that.telegramUsername,_that.telegramPhotoUrl,_that.notifyNewMessages,_that.notifySavedSearches,_that.notifyPromotions,_that.lastActiveAt,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_id')  int userId,  String username, @JsonKey(name: 'phone_e164')  String phoneE164,  String email, @JsonKey(name: 'display_name')  String displayName, @JsonKey(name: 'avatar_url')  String? avatarUrl,  String? about, @JsonKey(name: 'location_id')  int? locationId, @JsonKey(name: 'location_name')  String? locationName,  String? logo,  String? banner, @JsonKey(name: 'telegram_id')  int? telegramId, @JsonKey(name: 'telegram_username')  String? telegramUsername, @JsonKey(name: 'telegram_photo_url')  String? telegramPhotoUrl, @JsonKey(name: 'notify_new_messages')  bool notifyNewMessages, @JsonKey(name: 'notify_saved_searches')  bool notifySavedSearches, @JsonKey(name: 'notify_promotions')  bool notifyPromotions, @JsonKey(name: 'last_active_at')  String? lastActiveAt, @JsonKey(name: 'created_at')  String createdAt)  $default,) {final _that = this;
switch (_that) {
case _ProfileDto():
return $default(_that.userId,_that.username,_that.phoneE164,_that.email,_that.displayName,_that.avatarUrl,_that.about,_that.locationId,_that.locationName,_that.logo,_that.banner,_that.telegramId,_that.telegramUsername,_that.telegramPhotoUrl,_that.notifyNewMessages,_that.notifySavedSearches,_that.notifyPromotions,_that.lastActiveAt,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'user_id')  int userId,  String username, @JsonKey(name: 'phone_e164')  String phoneE164,  String email, @JsonKey(name: 'display_name')  String displayName, @JsonKey(name: 'avatar_url')  String? avatarUrl,  String? about, @JsonKey(name: 'location_id')  int? locationId, @JsonKey(name: 'location_name')  String? locationName,  String? logo,  String? banner, @JsonKey(name: 'telegram_id')  int? telegramId, @JsonKey(name: 'telegram_username')  String? telegramUsername, @JsonKey(name: 'telegram_photo_url')  String? telegramPhotoUrl, @JsonKey(name: 'notify_new_messages')  bool notifyNewMessages, @JsonKey(name: 'notify_saved_searches')  bool notifySavedSearches, @JsonKey(name: 'notify_promotions')  bool notifyPromotions, @JsonKey(name: 'last_active_at')  String? lastActiveAt, @JsonKey(name: 'created_at')  String createdAt)?  $default,) {final _that = this;
switch (_that) {
case _ProfileDto() when $default != null:
return $default(_that.userId,_that.username,_that.phoneE164,_that.email,_that.displayName,_that.avatarUrl,_that.about,_that.locationId,_that.locationName,_that.logo,_that.banner,_that.telegramId,_that.telegramUsername,_that.telegramPhotoUrl,_that.notifyNewMessages,_that.notifySavedSearches,_that.notifyPromotions,_that.lastActiveAt,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProfileDto implements ProfileDto {
  const _ProfileDto({@JsonKey(name: 'user_id') required this.userId, required this.username, @JsonKey(name: 'phone_e164') required this.phoneE164, required this.email, @JsonKey(name: 'display_name') required this.displayName, @JsonKey(name: 'avatar_url') this.avatarUrl, this.about, @JsonKey(name: 'location_id') this.locationId, @JsonKey(name: 'location_name') this.locationName, this.logo, this.banner, @JsonKey(name: 'telegram_id') this.telegramId, @JsonKey(name: 'telegram_username') this.telegramUsername, @JsonKey(name: 'telegram_photo_url') this.telegramPhotoUrl, @JsonKey(name: 'notify_new_messages') this.notifyNewMessages = true, @JsonKey(name: 'notify_saved_searches') this.notifySavedSearches = true, @JsonKey(name: 'notify_promotions') this.notifyPromotions = true, @JsonKey(name: 'last_active_at') this.lastActiveAt, @JsonKey(name: 'created_at') required this.createdAt});
  factory _ProfileDto.fromJson(Map<String, dynamic> json) => _$ProfileDtoFromJson(json);

@override@JsonKey(name: 'user_id') final  int userId;
@override final  String username;
@override@JsonKey(name: 'phone_e164') final  String phoneE164;
@override final  String email;
@override@JsonKey(name: 'display_name') final  String displayName;
@override@JsonKey(name: 'avatar_url') final  String? avatarUrl;
@override final  String? about;
@override@JsonKey(name: 'location_id') final  int? locationId;
@override@JsonKey(name: 'location_name') final  String? locationName;
@override final  String? logo;
@override final  String? banner;
@override@JsonKey(name: 'telegram_id') final  int? telegramId;
@override@JsonKey(name: 'telegram_username') final  String? telegramUsername;
@override@JsonKey(name: 'telegram_photo_url') final  String? telegramPhotoUrl;
@override@JsonKey(name: 'notify_new_messages') final  bool notifyNewMessages;
@override@JsonKey(name: 'notify_saved_searches') final  bool notifySavedSearches;
@override@JsonKey(name: 'notify_promotions') final  bool notifyPromotions;
@override@JsonKey(name: 'last_active_at') final  String? lastActiveAt;
@override@JsonKey(name: 'created_at') final  String createdAt;

/// Create a copy of ProfileDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileDtoCopyWith<_ProfileDto> get copyWith => __$ProfileDtoCopyWithImpl<_ProfileDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProfileDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileDto&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.username, username) || other.username == username)&&(identical(other.phoneE164, phoneE164) || other.phoneE164 == phoneE164)&&(identical(other.email, email) || other.email == email)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.about, about) || other.about == about)&&(identical(other.locationId, locationId) || other.locationId == locationId)&&(identical(other.locationName, locationName) || other.locationName == locationName)&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.banner, banner) || other.banner == banner)&&(identical(other.telegramId, telegramId) || other.telegramId == telegramId)&&(identical(other.telegramUsername, telegramUsername) || other.telegramUsername == telegramUsername)&&(identical(other.telegramPhotoUrl, telegramPhotoUrl) || other.telegramPhotoUrl == telegramPhotoUrl)&&(identical(other.notifyNewMessages, notifyNewMessages) || other.notifyNewMessages == notifyNewMessages)&&(identical(other.notifySavedSearches, notifySavedSearches) || other.notifySavedSearches == notifySavedSearches)&&(identical(other.notifyPromotions, notifyPromotions) || other.notifyPromotions == notifyPromotions)&&(identical(other.lastActiveAt, lastActiveAt) || other.lastActiveAt == lastActiveAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,userId,username,phoneE164,email,displayName,avatarUrl,about,locationId,locationName,logo,banner,telegramId,telegramUsername,telegramPhotoUrl,notifyNewMessages,notifySavedSearches,notifyPromotions,lastActiveAt,createdAt]);

@override
String toString() {
  return 'ProfileDto(userId: $userId, username: $username, phoneE164: $phoneE164, email: $email, displayName: $displayName, avatarUrl: $avatarUrl, about: $about, locationId: $locationId, locationName: $locationName, logo: $logo, banner: $banner, telegramId: $telegramId, telegramUsername: $telegramUsername, telegramPhotoUrl: $telegramPhotoUrl, notifyNewMessages: $notifyNewMessages, notifySavedSearches: $notifySavedSearches, notifyPromotions: $notifyPromotions, lastActiveAt: $lastActiveAt, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$ProfileDtoCopyWith<$Res> implements $ProfileDtoCopyWith<$Res> {
  factory _$ProfileDtoCopyWith(_ProfileDto value, $Res Function(_ProfileDto) _then) = __$ProfileDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'user_id') int userId, String username,@JsonKey(name: 'phone_e164') String phoneE164, String email,@JsonKey(name: 'display_name') String displayName,@JsonKey(name: 'avatar_url') String? avatarUrl, String? about,@JsonKey(name: 'location_id') int? locationId,@JsonKey(name: 'location_name') String? locationName, String? logo, String? banner,@JsonKey(name: 'telegram_id') int? telegramId,@JsonKey(name: 'telegram_username') String? telegramUsername,@JsonKey(name: 'telegram_photo_url') String? telegramPhotoUrl,@JsonKey(name: 'notify_new_messages') bool notifyNewMessages,@JsonKey(name: 'notify_saved_searches') bool notifySavedSearches,@JsonKey(name: 'notify_promotions') bool notifyPromotions,@JsonKey(name: 'last_active_at') String? lastActiveAt,@JsonKey(name: 'created_at') String createdAt
});




}
/// @nodoc
class __$ProfileDtoCopyWithImpl<$Res>
    implements _$ProfileDtoCopyWith<$Res> {
  __$ProfileDtoCopyWithImpl(this._self, this._then);

  final _ProfileDto _self;
  final $Res Function(_ProfileDto) _then;

/// Create a copy of ProfileDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? username = null,Object? phoneE164 = null,Object? email = null,Object? displayName = null,Object? avatarUrl = freezed,Object? about = freezed,Object? locationId = freezed,Object? locationName = freezed,Object? logo = freezed,Object? banner = freezed,Object? telegramId = freezed,Object? telegramUsername = freezed,Object? telegramPhotoUrl = freezed,Object? notifyNewMessages = null,Object? notifySavedSearches = null,Object? notifyPromotions = null,Object? lastActiveAt = freezed,Object? createdAt = null,}) {
  return _then(_ProfileDto(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,phoneE164: null == phoneE164 ? _self.phoneE164 : phoneE164 // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,about: freezed == about ? _self.about : about // ignore: cast_nullable_to_non_nullable
as String?,locationId: freezed == locationId ? _self.locationId : locationId // ignore: cast_nullable_to_non_nullable
as int?,locationName: freezed == locationName ? _self.locationName : locationName // ignore: cast_nullable_to_non_nullable
as String?,logo: freezed == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String?,banner: freezed == banner ? _self.banner : banner // ignore: cast_nullable_to_non_nullable
as String?,telegramId: freezed == telegramId ? _self.telegramId : telegramId // ignore: cast_nullable_to_non_nullable
as int?,telegramUsername: freezed == telegramUsername ? _self.telegramUsername : telegramUsername // ignore: cast_nullable_to_non_nullable
as String?,telegramPhotoUrl: freezed == telegramPhotoUrl ? _self.telegramPhotoUrl : telegramPhotoUrl // ignore: cast_nullable_to_non_nullable
as String?,notifyNewMessages: null == notifyNewMessages ? _self.notifyNewMessages : notifyNewMessages // ignore: cast_nullable_to_non_nullable
as bool,notifySavedSearches: null == notifySavedSearches ? _self.notifySavedSearches : notifySavedSearches // ignore: cast_nullable_to_non_nullable
as bool,notifyPromotions: null == notifyPromotions ? _self.notifyPromotions : notifyPromotions // ignore: cast_nullable_to_non_nullable
as bool,lastActiveAt: freezed == lastActiveAt ? _self.lastActiveAt : lastActiveAt // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$SecurityInfoDto {

@JsonKey(name: 'has_password') bool get hasPassword;@JsonKey(name: 'has_telegram') bool get hasTelegram;@JsonKey(name: 'telegram_id') int? get telegramId;@JsonKey(name: 'telegram_username') String? get telegramUsername;
/// Create a copy of SecurityInfoDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SecurityInfoDtoCopyWith<SecurityInfoDto> get copyWith => _$SecurityInfoDtoCopyWithImpl<SecurityInfoDto>(this as SecurityInfoDto, _$identity);

  /// Serializes this SecurityInfoDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SecurityInfoDto&&(identical(other.hasPassword, hasPassword) || other.hasPassword == hasPassword)&&(identical(other.hasTelegram, hasTelegram) || other.hasTelegram == hasTelegram)&&(identical(other.telegramId, telegramId) || other.telegramId == telegramId)&&(identical(other.telegramUsername, telegramUsername) || other.telegramUsername == telegramUsername));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,hasPassword,hasTelegram,telegramId,telegramUsername);

@override
String toString() {
  return 'SecurityInfoDto(hasPassword: $hasPassword, hasTelegram: $hasTelegram, telegramId: $telegramId, telegramUsername: $telegramUsername)';
}


}

/// @nodoc
abstract mixin class $SecurityInfoDtoCopyWith<$Res>  {
  factory $SecurityInfoDtoCopyWith(SecurityInfoDto value, $Res Function(SecurityInfoDto) _then) = _$SecurityInfoDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'has_password') bool hasPassword,@JsonKey(name: 'has_telegram') bool hasTelegram,@JsonKey(name: 'telegram_id') int? telegramId,@JsonKey(name: 'telegram_username') String? telegramUsername
});




}
/// @nodoc
class _$SecurityInfoDtoCopyWithImpl<$Res>
    implements $SecurityInfoDtoCopyWith<$Res> {
  _$SecurityInfoDtoCopyWithImpl(this._self, this._then);

  final SecurityInfoDto _self;
  final $Res Function(SecurityInfoDto) _then;

/// Create a copy of SecurityInfoDto
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


/// Adds pattern-matching-related methods to [SecurityInfoDto].
extension SecurityInfoDtoPatterns on SecurityInfoDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SecurityInfoDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SecurityInfoDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SecurityInfoDto value)  $default,){
final _that = this;
switch (_that) {
case _SecurityInfoDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SecurityInfoDto value)?  $default,){
final _that = this;
switch (_that) {
case _SecurityInfoDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'has_password')  bool hasPassword, @JsonKey(name: 'has_telegram')  bool hasTelegram, @JsonKey(name: 'telegram_id')  int? telegramId, @JsonKey(name: 'telegram_username')  String? telegramUsername)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SecurityInfoDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'has_password')  bool hasPassword, @JsonKey(name: 'has_telegram')  bool hasTelegram, @JsonKey(name: 'telegram_id')  int? telegramId, @JsonKey(name: 'telegram_username')  String? telegramUsername)  $default,) {final _that = this;
switch (_that) {
case _SecurityInfoDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'has_password')  bool hasPassword, @JsonKey(name: 'has_telegram')  bool hasTelegram, @JsonKey(name: 'telegram_id')  int? telegramId, @JsonKey(name: 'telegram_username')  String? telegramUsername)?  $default,) {final _that = this;
switch (_that) {
case _SecurityInfoDto() when $default != null:
return $default(_that.hasPassword,_that.hasTelegram,_that.telegramId,_that.telegramUsername);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SecurityInfoDto implements SecurityInfoDto {
  const _SecurityInfoDto({@JsonKey(name: 'has_password') this.hasPassword = false, @JsonKey(name: 'has_telegram') this.hasTelegram = false, @JsonKey(name: 'telegram_id') this.telegramId, @JsonKey(name: 'telegram_username') this.telegramUsername});
  factory _SecurityInfoDto.fromJson(Map<String, dynamic> json) => _$SecurityInfoDtoFromJson(json);

@override@JsonKey(name: 'has_password') final  bool hasPassword;
@override@JsonKey(name: 'has_telegram') final  bool hasTelegram;
@override@JsonKey(name: 'telegram_id') final  int? telegramId;
@override@JsonKey(name: 'telegram_username') final  String? telegramUsername;

/// Create a copy of SecurityInfoDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SecurityInfoDtoCopyWith<_SecurityInfoDto> get copyWith => __$SecurityInfoDtoCopyWithImpl<_SecurityInfoDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SecurityInfoDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SecurityInfoDto&&(identical(other.hasPassword, hasPassword) || other.hasPassword == hasPassword)&&(identical(other.hasTelegram, hasTelegram) || other.hasTelegram == hasTelegram)&&(identical(other.telegramId, telegramId) || other.telegramId == telegramId)&&(identical(other.telegramUsername, telegramUsername) || other.telegramUsername == telegramUsername));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,hasPassword,hasTelegram,telegramId,telegramUsername);

@override
String toString() {
  return 'SecurityInfoDto(hasPassword: $hasPassword, hasTelegram: $hasTelegram, telegramId: $telegramId, telegramUsername: $telegramUsername)';
}


}

/// @nodoc
abstract mixin class _$SecurityInfoDtoCopyWith<$Res> implements $SecurityInfoDtoCopyWith<$Res> {
  factory _$SecurityInfoDtoCopyWith(_SecurityInfoDto value, $Res Function(_SecurityInfoDto) _then) = __$SecurityInfoDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'has_password') bool hasPassword,@JsonKey(name: 'has_telegram') bool hasTelegram,@JsonKey(name: 'telegram_id') int? telegramId,@JsonKey(name: 'telegram_username') String? telegramUsername
});




}
/// @nodoc
class __$SecurityInfoDtoCopyWithImpl<$Res>
    implements _$SecurityInfoDtoCopyWith<$Res> {
  __$SecurityInfoDtoCopyWithImpl(this._self, this._then);

  final _SecurityInfoDto _self;
  final $Res Function(_SecurityInfoDto) _then;

/// Create a copy of SecurityInfoDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? hasPassword = null,Object? hasTelegram = null,Object? telegramId = freezed,Object? telegramUsername = freezed,}) {
  return _then(_SecurityInfoDto(
hasPassword: null == hasPassword ? _self.hasPassword : hasPassword // ignore: cast_nullable_to_non_nullable
as bool,hasTelegram: null == hasTelegram ? _self.hasTelegram : hasTelegram // ignore: cast_nullable_to_non_nullable
as bool,telegramId: freezed == telegramId ? _self.telegramId : telegramId // ignore: cast_nullable_to_non_nullable
as int?,telegramUsername: freezed == telegramUsername ? _self.telegramUsername : telegramUsername // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ChangePasswordRequestDto {

@JsonKey(name: 'current_password') String get currentPassword;@JsonKey(name: 'new_password') String get newPassword;
/// Create a copy of ChangePasswordRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChangePasswordRequestDtoCopyWith<ChangePasswordRequestDto> get copyWith => _$ChangePasswordRequestDtoCopyWithImpl<ChangePasswordRequestDto>(this as ChangePasswordRequestDto, _$identity);

  /// Serializes this ChangePasswordRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChangePasswordRequestDto&&(identical(other.currentPassword, currentPassword) || other.currentPassword == currentPassword)&&(identical(other.newPassword, newPassword) || other.newPassword == newPassword));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentPassword,newPassword);

@override
String toString() {
  return 'ChangePasswordRequestDto(currentPassword: $currentPassword, newPassword: $newPassword)';
}


}

/// @nodoc
abstract mixin class $ChangePasswordRequestDtoCopyWith<$Res>  {
  factory $ChangePasswordRequestDtoCopyWith(ChangePasswordRequestDto value, $Res Function(ChangePasswordRequestDto) _then) = _$ChangePasswordRequestDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'current_password') String currentPassword,@JsonKey(name: 'new_password') String newPassword
});




}
/// @nodoc
class _$ChangePasswordRequestDtoCopyWithImpl<$Res>
    implements $ChangePasswordRequestDtoCopyWith<$Res> {
  _$ChangePasswordRequestDtoCopyWithImpl(this._self, this._then);

  final ChangePasswordRequestDto _self;
  final $Res Function(ChangePasswordRequestDto) _then;

/// Create a copy of ChangePasswordRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentPassword = null,Object? newPassword = null,}) {
  return _then(_self.copyWith(
currentPassword: null == currentPassword ? _self.currentPassword : currentPassword // ignore: cast_nullable_to_non_nullable
as String,newPassword: null == newPassword ? _self.newPassword : newPassword // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ChangePasswordRequestDto].
extension ChangePasswordRequestDtoPatterns on ChangePasswordRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChangePasswordRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChangePasswordRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChangePasswordRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _ChangePasswordRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChangePasswordRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _ChangePasswordRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'current_password')  String currentPassword, @JsonKey(name: 'new_password')  String newPassword)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChangePasswordRequestDto() when $default != null:
return $default(_that.currentPassword,_that.newPassword);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'current_password')  String currentPassword, @JsonKey(name: 'new_password')  String newPassword)  $default,) {final _that = this;
switch (_that) {
case _ChangePasswordRequestDto():
return $default(_that.currentPassword,_that.newPassword);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'current_password')  String currentPassword, @JsonKey(name: 'new_password')  String newPassword)?  $default,) {final _that = this;
switch (_that) {
case _ChangePasswordRequestDto() when $default != null:
return $default(_that.currentPassword,_that.newPassword);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChangePasswordRequestDto implements ChangePasswordRequestDto {
  const _ChangePasswordRequestDto({@JsonKey(name: 'current_password') required this.currentPassword, @JsonKey(name: 'new_password') required this.newPassword});
  factory _ChangePasswordRequestDto.fromJson(Map<String, dynamic> json) => _$ChangePasswordRequestDtoFromJson(json);

@override@JsonKey(name: 'current_password') final  String currentPassword;
@override@JsonKey(name: 'new_password') final  String newPassword;

/// Create a copy of ChangePasswordRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChangePasswordRequestDtoCopyWith<_ChangePasswordRequestDto> get copyWith => __$ChangePasswordRequestDtoCopyWithImpl<_ChangePasswordRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChangePasswordRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChangePasswordRequestDto&&(identical(other.currentPassword, currentPassword) || other.currentPassword == currentPassword)&&(identical(other.newPassword, newPassword) || other.newPassword == newPassword));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,currentPassword,newPassword);

@override
String toString() {
  return 'ChangePasswordRequestDto(currentPassword: $currentPassword, newPassword: $newPassword)';
}


}

/// @nodoc
abstract mixin class _$ChangePasswordRequestDtoCopyWith<$Res> implements $ChangePasswordRequestDtoCopyWith<$Res> {
  factory _$ChangePasswordRequestDtoCopyWith(_ChangePasswordRequestDto value, $Res Function(_ChangePasswordRequestDto) _then) = __$ChangePasswordRequestDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'current_password') String currentPassword,@JsonKey(name: 'new_password') String newPassword
});




}
/// @nodoc
class __$ChangePasswordRequestDtoCopyWithImpl<$Res>
    implements _$ChangePasswordRequestDtoCopyWith<$Res> {
  __$ChangePasswordRequestDtoCopyWithImpl(this._self, this._then);

  final _ChangePasswordRequestDto _self;
  final $Res Function(_ChangePasswordRequestDto) _then;

/// Create a copy of ChangePasswordRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentPassword = null,Object? newPassword = null,}) {
  return _then(_ChangePasswordRequestDto(
currentPassword: null == currentPassword ? _self.currentPassword : currentPassword // ignore: cast_nullable_to_non_nullable
as String,newPassword: null == newPassword ? _self.newPassword : newPassword // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$SetPasswordRequestDto {

@JsonKey(name: 'new_password') String get newPassword;
/// Create a copy of SetPasswordRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SetPasswordRequestDtoCopyWith<SetPasswordRequestDto> get copyWith => _$SetPasswordRequestDtoCopyWithImpl<SetPasswordRequestDto>(this as SetPasswordRequestDto, _$identity);

  /// Serializes this SetPasswordRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetPasswordRequestDto&&(identical(other.newPassword, newPassword) || other.newPassword == newPassword));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,newPassword);

@override
String toString() {
  return 'SetPasswordRequestDto(newPassword: $newPassword)';
}


}

/// @nodoc
abstract mixin class $SetPasswordRequestDtoCopyWith<$Res>  {
  factory $SetPasswordRequestDtoCopyWith(SetPasswordRequestDto value, $Res Function(SetPasswordRequestDto) _then) = _$SetPasswordRequestDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'new_password') String newPassword
});




}
/// @nodoc
class _$SetPasswordRequestDtoCopyWithImpl<$Res>
    implements $SetPasswordRequestDtoCopyWith<$Res> {
  _$SetPasswordRequestDtoCopyWithImpl(this._self, this._then);

  final SetPasswordRequestDto _self;
  final $Res Function(SetPasswordRequestDto) _then;

/// Create a copy of SetPasswordRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? newPassword = null,}) {
  return _then(_self.copyWith(
newPassword: null == newPassword ? _self.newPassword : newPassword // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SetPasswordRequestDto].
extension SetPasswordRequestDtoPatterns on SetPasswordRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SetPasswordRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SetPasswordRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SetPasswordRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _SetPasswordRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SetPasswordRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _SetPasswordRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'new_password')  String newPassword)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SetPasswordRequestDto() when $default != null:
return $default(_that.newPassword);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'new_password')  String newPassword)  $default,) {final _that = this;
switch (_that) {
case _SetPasswordRequestDto():
return $default(_that.newPassword);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'new_password')  String newPassword)?  $default,) {final _that = this;
switch (_that) {
case _SetPasswordRequestDto() when $default != null:
return $default(_that.newPassword);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SetPasswordRequestDto implements SetPasswordRequestDto {
  const _SetPasswordRequestDto({@JsonKey(name: 'new_password') required this.newPassword});
  factory _SetPasswordRequestDto.fromJson(Map<String, dynamic> json) => _$SetPasswordRequestDtoFromJson(json);

@override@JsonKey(name: 'new_password') final  String newPassword;

/// Create a copy of SetPasswordRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetPasswordRequestDtoCopyWith<_SetPasswordRequestDto> get copyWith => __$SetPasswordRequestDtoCopyWithImpl<_SetPasswordRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SetPasswordRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetPasswordRequestDto&&(identical(other.newPassword, newPassword) || other.newPassword == newPassword));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,newPassword);

@override
String toString() {
  return 'SetPasswordRequestDto(newPassword: $newPassword)';
}


}

/// @nodoc
abstract mixin class _$SetPasswordRequestDtoCopyWith<$Res> implements $SetPasswordRequestDtoCopyWith<$Res> {
  factory _$SetPasswordRequestDtoCopyWith(_SetPasswordRequestDto value, $Res Function(_SetPasswordRequestDto) _then) = __$SetPasswordRequestDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'new_password') String newPassword
});




}
/// @nodoc
class __$SetPasswordRequestDtoCopyWithImpl<$Res>
    implements _$SetPasswordRequestDtoCopyWith<$Res> {
  __$SetPasswordRequestDtoCopyWithImpl(this._self, this._then);

  final _SetPasswordRequestDto _self;
  final $Res Function(_SetPasswordRequestDto) _then;

/// Create a copy of SetPasswordRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? newPassword = null,}) {
  return _then(_SetPasswordRequestDto(
newPassword: null == newPassword ? _self.newPassword : newPassword // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$DeleteAccountResponseDto {

 String get status;@JsonKey(name: 'user_id') int get userId; String get message;
/// Create a copy of DeleteAccountResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteAccountResponseDtoCopyWith<DeleteAccountResponseDto> get copyWith => _$DeleteAccountResponseDtoCopyWithImpl<DeleteAccountResponseDto>(this as DeleteAccountResponseDto, _$identity);

  /// Serializes this DeleteAccountResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteAccountResponseDto&&(identical(other.status, status) || other.status == status)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,userId,message);

@override
String toString() {
  return 'DeleteAccountResponseDto(status: $status, userId: $userId, message: $message)';
}


}

/// @nodoc
abstract mixin class $DeleteAccountResponseDtoCopyWith<$Res>  {
  factory $DeleteAccountResponseDtoCopyWith(DeleteAccountResponseDto value, $Res Function(DeleteAccountResponseDto) _then) = _$DeleteAccountResponseDtoCopyWithImpl;
@useResult
$Res call({
 String status,@JsonKey(name: 'user_id') int userId, String message
});




}
/// @nodoc
class _$DeleteAccountResponseDtoCopyWithImpl<$Res>
    implements $DeleteAccountResponseDtoCopyWith<$Res> {
  _$DeleteAccountResponseDtoCopyWithImpl(this._self, this._then);

  final DeleteAccountResponseDto _self;
  final $Res Function(DeleteAccountResponseDto) _then;

/// Create a copy of DeleteAccountResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? userId = null,Object? message = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DeleteAccountResponseDto].
extension DeleteAccountResponseDtoPatterns on DeleteAccountResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeleteAccountResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeleteAccountResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeleteAccountResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _DeleteAccountResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeleteAccountResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _DeleteAccountResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String status, @JsonKey(name: 'user_id')  int userId,  String message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeleteAccountResponseDto() when $default != null:
return $default(_that.status,_that.userId,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String status, @JsonKey(name: 'user_id')  int userId,  String message)  $default,) {final _that = this;
switch (_that) {
case _DeleteAccountResponseDto():
return $default(_that.status,_that.userId,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String status, @JsonKey(name: 'user_id')  int userId,  String message)?  $default,) {final _that = this;
switch (_that) {
case _DeleteAccountResponseDto() when $default != null:
return $default(_that.status,_that.userId,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeleteAccountResponseDto implements DeleteAccountResponseDto {
  const _DeleteAccountResponseDto({required this.status, @JsonKey(name: 'user_id') required this.userId, required this.message});
  factory _DeleteAccountResponseDto.fromJson(Map<String, dynamic> json) => _$DeleteAccountResponseDtoFromJson(json);

@override final  String status;
@override@JsonKey(name: 'user_id') final  int userId;
@override final  String message;

/// Create a copy of DeleteAccountResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteAccountResponseDtoCopyWith<_DeleteAccountResponseDto> get copyWith => __$DeleteAccountResponseDtoCopyWithImpl<_DeleteAccountResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeleteAccountResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteAccountResponseDto&&(identical(other.status, status) || other.status == status)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,status,userId,message);

@override
String toString() {
  return 'DeleteAccountResponseDto(status: $status, userId: $userId, message: $message)';
}


}

/// @nodoc
abstract mixin class _$DeleteAccountResponseDtoCopyWith<$Res> implements $DeleteAccountResponseDtoCopyWith<$Res> {
  factory _$DeleteAccountResponseDtoCopyWith(_DeleteAccountResponseDto value, $Res Function(_DeleteAccountResponseDto) _then) = __$DeleteAccountResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 String status,@JsonKey(name: 'user_id') int userId, String message
});




}
/// @nodoc
class __$DeleteAccountResponseDtoCopyWithImpl<$Res>
    implements _$DeleteAccountResponseDtoCopyWith<$Res> {
  __$DeleteAccountResponseDtoCopyWithImpl(this._self, this._then);

  final _DeleteAccountResponseDto _self;
  final $Res Function(_DeleteAccountResponseDto) _then;

/// Create a copy of DeleteAccountResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? userId = null,Object? message = null,}) {
  return _then(_DeleteAccountResponseDto(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
