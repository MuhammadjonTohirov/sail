// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'telegram_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TelegramChatDto {

 int get id;@JsonKey(name: 'chat_id') String get chatId;@JsonKey(name: 'chat_title') String? get chatTitle;@JsonKey(name: 'chat_username') String? get chatUsername;@JsonKey(name: 'chat_photo') String? get chatPhoto;@JsonKey(name: 'chat_type') String? get chatType;@JsonKey(name: 'is_active') bool get isActive;
/// Create a copy of TelegramChatDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TelegramChatDtoCopyWith<TelegramChatDto> get copyWith => _$TelegramChatDtoCopyWithImpl<TelegramChatDto>(this as TelegramChatDto, _$identity);

  /// Serializes this TelegramChatDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TelegramChatDto&&(identical(other.id, id) || other.id == id)&&(identical(other.chatId, chatId) || other.chatId == chatId)&&(identical(other.chatTitle, chatTitle) || other.chatTitle == chatTitle)&&(identical(other.chatUsername, chatUsername) || other.chatUsername == chatUsername)&&(identical(other.chatPhoto, chatPhoto) || other.chatPhoto == chatPhoto)&&(identical(other.chatType, chatType) || other.chatType == chatType)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,chatId,chatTitle,chatUsername,chatPhoto,chatType,isActive);

@override
String toString() {
  return 'TelegramChatDto(id: $id, chatId: $chatId, chatTitle: $chatTitle, chatUsername: $chatUsername, chatPhoto: $chatPhoto, chatType: $chatType, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class $TelegramChatDtoCopyWith<$Res>  {
  factory $TelegramChatDtoCopyWith(TelegramChatDto value, $Res Function(TelegramChatDto) _then) = _$TelegramChatDtoCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'chat_id') String chatId,@JsonKey(name: 'chat_title') String? chatTitle,@JsonKey(name: 'chat_username') String? chatUsername,@JsonKey(name: 'chat_photo') String? chatPhoto,@JsonKey(name: 'chat_type') String? chatType,@JsonKey(name: 'is_active') bool isActive
});




}
/// @nodoc
class _$TelegramChatDtoCopyWithImpl<$Res>
    implements $TelegramChatDtoCopyWith<$Res> {
  _$TelegramChatDtoCopyWithImpl(this._self, this._then);

  final TelegramChatDto _self;
  final $Res Function(TelegramChatDto) _then;

/// Create a copy of TelegramChatDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? chatId = null,Object? chatTitle = freezed,Object? chatUsername = freezed,Object? chatPhoto = freezed,Object? chatType = freezed,Object? isActive = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,chatId: null == chatId ? _self.chatId : chatId // ignore: cast_nullable_to_non_nullable
as String,chatTitle: freezed == chatTitle ? _self.chatTitle : chatTitle // ignore: cast_nullable_to_non_nullable
as String?,chatUsername: freezed == chatUsername ? _self.chatUsername : chatUsername // ignore: cast_nullable_to_non_nullable
as String?,chatPhoto: freezed == chatPhoto ? _self.chatPhoto : chatPhoto // ignore: cast_nullable_to_non_nullable
as String?,chatType: freezed == chatType ? _self.chatType : chatType // ignore: cast_nullable_to_non_nullable
as String?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [TelegramChatDto].
extension TelegramChatDtoPatterns on TelegramChatDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TelegramChatDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TelegramChatDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TelegramChatDto value)  $default,){
final _that = this;
switch (_that) {
case _TelegramChatDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TelegramChatDto value)?  $default,){
final _that = this;
switch (_that) {
case _TelegramChatDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'chat_id')  String chatId, @JsonKey(name: 'chat_title')  String? chatTitle, @JsonKey(name: 'chat_username')  String? chatUsername, @JsonKey(name: 'chat_photo')  String? chatPhoto, @JsonKey(name: 'chat_type')  String? chatType, @JsonKey(name: 'is_active')  bool isActive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TelegramChatDto() when $default != null:
return $default(_that.id,_that.chatId,_that.chatTitle,_that.chatUsername,_that.chatPhoto,_that.chatType,_that.isActive);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'chat_id')  String chatId, @JsonKey(name: 'chat_title')  String? chatTitle, @JsonKey(name: 'chat_username')  String? chatUsername, @JsonKey(name: 'chat_photo')  String? chatPhoto, @JsonKey(name: 'chat_type')  String? chatType, @JsonKey(name: 'is_active')  bool isActive)  $default,) {final _that = this;
switch (_that) {
case _TelegramChatDto():
return $default(_that.id,_that.chatId,_that.chatTitle,_that.chatUsername,_that.chatPhoto,_that.chatType,_that.isActive);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'chat_id')  String chatId, @JsonKey(name: 'chat_title')  String? chatTitle, @JsonKey(name: 'chat_username')  String? chatUsername, @JsonKey(name: 'chat_photo')  String? chatPhoto, @JsonKey(name: 'chat_type')  String? chatType, @JsonKey(name: 'is_active')  bool isActive)?  $default,) {final _that = this;
switch (_that) {
case _TelegramChatDto() when $default != null:
return $default(_that.id,_that.chatId,_that.chatTitle,_that.chatUsername,_that.chatPhoto,_that.chatType,_that.isActive);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TelegramChatDto implements TelegramChatDto {
  const _TelegramChatDto({required this.id, @JsonKey(name: 'chat_id') required this.chatId, @JsonKey(name: 'chat_title') this.chatTitle, @JsonKey(name: 'chat_username') this.chatUsername, @JsonKey(name: 'chat_photo') this.chatPhoto, @JsonKey(name: 'chat_type') this.chatType, @JsonKey(name: 'is_active') this.isActive = true});
  factory _TelegramChatDto.fromJson(Map<String, dynamic> json) => _$TelegramChatDtoFromJson(json);

@override final  int id;
@override@JsonKey(name: 'chat_id') final  String chatId;
@override@JsonKey(name: 'chat_title') final  String? chatTitle;
@override@JsonKey(name: 'chat_username') final  String? chatUsername;
@override@JsonKey(name: 'chat_photo') final  String? chatPhoto;
@override@JsonKey(name: 'chat_type') final  String? chatType;
@override@JsonKey(name: 'is_active') final  bool isActive;

/// Create a copy of TelegramChatDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TelegramChatDtoCopyWith<_TelegramChatDto> get copyWith => __$TelegramChatDtoCopyWithImpl<_TelegramChatDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TelegramChatDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TelegramChatDto&&(identical(other.id, id) || other.id == id)&&(identical(other.chatId, chatId) || other.chatId == chatId)&&(identical(other.chatTitle, chatTitle) || other.chatTitle == chatTitle)&&(identical(other.chatUsername, chatUsername) || other.chatUsername == chatUsername)&&(identical(other.chatPhoto, chatPhoto) || other.chatPhoto == chatPhoto)&&(identical(other.chatType, chatType) || other.chatType == chatType)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,chatId,chatTitle,chatUsername,chatPhoto,chatType,isActive);

@override
String toString() {
  return 'TelegramChatDto(id: $id, chatId: $chatId, chatTitle: $chatTitle, chatUsername: $chatUsername, chatPhoto: $chatPhoto, chatType: $chatType, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class _$TelegramChatDtoCopyWith<$Res> implements $TelegramChatDtoCopyWith<$Res> {
  factory _$TelegramChatDtoCopyWith(_TelegramChatDto value, $Res Function(_TelegramChatDto) _then) = __$TelegramChatDtoCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'chat_id') String chatId,@JsonKey(name: 'chat_title') String? chatTitle,@JsonKey(name: 'chat_username') String? chatUsername,@JsonKey(name: 'chat_photo') String? chatPhoto,@JsonKey(name: 'chat_type') String? chatType,@JsonKey(name: 'is_active') bool isActive
});




}
/// @nodoc
class __$TelegramChatDtoCopyWithImpl<$Res>
    implements _$TelegramChatDtoCopyWith<$Res> {
  __$TelegramChatDtoCopyWithImpl(this._self, this._then);

  final _TelegramChatDto _self;
  final $Res Function(_TelegramChatDto) _then;

/// Create a copy of TelegramChatDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? chatId = null,Object? chatTitle = freezed,Object? chatUsername = freezed,Object? chatPhoto = freezed,Object? chatType = freezed,Object? isActive = null,}) {
  return _then(_TelegramChatDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,chatId: null == chatId ? _self.chatId : chatId // ignore: cast_nullable_to_non_nullable
as String,chatTitle: freezed == chatTitle ? _self.chatTitle : chatTitle // ignore: cast_nullable_to_non_nullable
as String?,chatUsername: freezed == chatUsername ? _self.chatUsername : chatUsername // ignore: cast_nullable_to_non_nullable
as String?,chatPhoto: freezed == chatPhoto ? _self.chatPhoto : chatPhoto // ignore: cast_nullable_to_non_nullable
as String?,chatType: freezed == chatType ? _self.chatType : chatType // ignore: cast_nullable_to_non_nullable
as String?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$VerifyChatsResponseDto {

 int get verified; int get removed;
/// Create a copy of VerifyChatsResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerifyChatsResponseDtoCopyWith<VerifyChatsResponseDto> get copyWith => _$VerifyChatsResponseDtoCopyWithImpl<VerifyChatsResponseDto>(this as VerifyChatsResponseDto, _$identity);

  /// Serializes this VerifyChatsResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifyChatsResponseDto&&(identical(other.verified, verified) || other.verified == verified)&&(identical(other.removed, removed) || other.removed == removed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,verified,removed);

@override
String toString() {
  return 'VerifyChatsResponseDto(verified: $verified, removed: $removed)';
}


}

/// @nodoc
abstract mixin class $VerifyChatsResponseDtoCopyWith<$Res>  {
  factory $VerifyChatsResponseDtoCopyWith(VerifyChatsResponseDto value, $Res Function(VerifyChatsResponseDto) _then) = _$VerifyChatsResponseDtoCopyWithImpl;
@useResult
$Res call({
 int verified, int removed
});




}
/// @nodoc
class _$VerifyChatsResponseDtoCopyWithImpl<$Res>
    implements $VerifyChatsResponseDtoCopyWith<$Res> {
  _$VerifyChatsResponseDtoCopyWithImpl(this._self, this._then);

  final VerifyChatsResponseDto _self;
  final $Res Function(VerifyChatsResponseDto) _then;

/// Create a copy of VerifyChatsResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? verified = null,Object? removed = null,}) {
  return _then(_self.copyWith(
verified: null == verified ? _self.verified : verified // ignore: cast_nullable_to_non_nullable
as int,removed: null == removed ? _self.removed : removed // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [VerifyChatsResponseDto].
extension VerifyChatsResponseDtoPatterns on VerifyChatsResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VerifyChatsResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VerifyChatsResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VerifyChatsResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _VerifyChatsResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VerifyChatsResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _VerifyChatsResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int verified,  int removed)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VerifyChatsResponseDto() when $default != null:
return $default(_that.verified,_that.removed);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int verified,  int removed)  $default,) {final _that = this;
switch (_that) {
case _VerifyChatsResponseDto():
return $default(_that.verified,_that.removed);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int verified,  int removed)?  $default,) {final _that = this;
switch (_that) {
case _VerifyChatsResponseDto() when $default != null:
return $default(_that.verified,_that.removed);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VerifyChatsResponseDto implements VerifyChatsResponseDto {
  const _VerifyChatsResponseDto({this.verified = 0, this.removed = 0});
  factory _VerifyChatsResponseDto.fromJson(Map<String, dynamic> json) => _$VerifyChatsResponseDtoFromJson(json);

@override@JsonKey() final  int verified;
@override@JsonKey() final  int removed;

/// Create a copy of VerifyChatsResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VerifyChatsResponseDtoCopyWith<_VerifyChatsResponseDto> get copyWith => __$VerifyChatsResponseDtoCopyWithImpl<_VerifyChatsResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VerifyChatsResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VerifyChatsResponseDto&&(identical(other.verified, verified) || other.verified == verified)&&(identical(other.removed, removed) || other.removed == removed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,verified,removed);

@override
String toString() {
  return 'VerifyChatsResponseDto(verified: $verified, removed: $removed)';
}


}

/// @nodoc
abstract mixin class _$VerifyChatsResponseDtoCopyWith<$Res> implements $VerifyChatsResponseDtoCopyWith<$Res> {
  factory _$VerifyChatsResponseDtoCopyWith(_VerifyChatsResponseDto value, $Res Function(_VerifyChatsResponseDto) _then) = __$VerifyChatsResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 int verified, int removed
});




}
/// @nodoc
class __$VerifyChatsResponseDtoCopyWithImpl<$Res>
    implements _$VerifyChatsResponseDtoCopyWith<$Res> {
  __$VerifyChatsResponseDtoCopyWithImpl(this._self, this._then);

  final _VerifyChatsResponseDto _self;
  final $Res Function(_VerifyChatsResponseDto) _then;

/// Create a copy of VerifyChatsResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? verified = null,Object? removed = null,}) {
  return _then(_VerifyChatsResponseDto(
verified: null == verified ? _self.verified : verified // ignore: cast_nullable_to_non_nullable
as int,removed: null == removed ? _self.removed : removed // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
