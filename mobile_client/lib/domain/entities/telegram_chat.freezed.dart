// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'telegram_chat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TelegramChat {

 int get id; String get chatId; String? get chatTitle; String? get chatUsername; String? get chatPhoto; String? get chatType; bool get isActive;
/// Create a copy of TelegramChat
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TelegramChatCopyWith<TelegramChat> get copyWith => _$TelegramChatCopyWithImpl<TelegramChat>(this as TelegramChat, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TelegramChat&&(identical(other.id, id) || other.id == id)&&(identical(other.chatId, chatId) || other.chatId == chatId)&&(identical(other.chatTitle, chatTitle) || other.chatTitle == chatTitle)&&(identical(other.chatUsername, chatUsername) || other.chatUsername == chatUsername)&&(identical(other.chatPhoto, chatPhoto) || other.chatPhoto == chatPhoto)&&(identical(other.chatType, chatType) || other.chatType == chatType)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}


@override
int get hashCode => Object.hash(runtimeType,id,chatId,chatTitle,chatUsername,chatPhoto,chatType,isActive);

@override
String toString() {
  return 'TelegramChat(id: $id, chatId: $chatId, chatTitle: $chatTitle, chatUsername: $chatUsername, chatPhoto: $chatPhoto, chatType: $chatType, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class $TelegramChatCopyWith<$Res>  {
  factory $TelegramChatCopyWith(TelegramChat value, $Res Function(TelegramChat) _then) = _$TelegramChatCopyWithImpl;
@useResult
$Res call({
 int id, String chatId, String? chatTitle, String? chatUsername, String? chatPhoto, String? chatType, bool isActive
});




}
/// @nodoc
class _$TelegramChatCopyWithImpl<$Res>
    implements $TelegramChatCopyWith<$Res> {
  _$TelegramChatCopyWithImpl(this._self, this._then);

  final TelegramChat _self;
  final $Res Function(TelegramChat) _then;

/// Create a copy of TelegramChat
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


/// Adds pattern-matching-related methods to [TelegramChat].
extension TelegramChatPatterns on TelegramChat {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TelegramChat value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TelegramChat() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TelegramChat value)  $default,){
final _that = this;
switch (_that) {
case _TelegramChat():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TelegramChat value)?  $default,){
final _that = this;
switch (_that) {
case _TelegramChat() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String chatId,  String? chatTitle,  String? chatUsername,  String? chatPhoto,  String? chatType,  bool isActive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TelegramChat() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String chatId,  String? chatTitle,  String? chatUsername,  String? chatPhoto,  String? chatType,  bool isActive)  $default,) {final _that = this;
switch (_that) {
case _TelegramChat():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String chatId,  String? chatTitle,  String? chatUsername,  String? chatPhoto,  String? chatType,  bool isActive)?  $default,) {final _that = this;
switch (_that) {
case _TelegramChat() when $default != null:
return $default(_that.id,_that.chatId,_that.chatTitle,_that.chatUsername,_that.chatPhoto,_that.chatType,_that.isActive);case _:
  return null;

}
}

}

/// @nodoc


class _TelegramChat implements TelegramChat {
  const _TelegramChat({required this.id, required this.chatId, this.chatTitle, this.chatUsername, this.chatPhoto, this.chatType, this.isActive = true});
  

@override final  int id;
@override final  String chatId;
@override final  String? chatTitle;
@override final  String? chatUsername;
@override final  String? chatPhoto;
@override final  String? chatType;
@override@JsonKey() final  bool isActive;

/// Create a copy of TelegramChat
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TelegramChatCopyWith<_TelegramChat> get copyWith => __$TelegramChatCopyWithImpl<_TelegramChat>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TelegramChat&&(identical(other.id, id) || other.id == id)&&(identical(other.chatId, chatId) || other.chatId == chatId)&&(identical(other.chatTitle, chatTitle) || other.chatTitle == chatTitle)&&(identical(other.chatUsername, chatUsername) || other.chatUsername == chatUsername)&&(identical(other.chatPhoto, chatPhoto) || other.chatPhoto == chatPhoto)&&(identical(other.chatType, chatType) || other.chatType == chatType)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}


@override
int get hashCode => Object.hash(runtimeType,id,chatId,chatTitle,chatUsername,chatPhoto,chatType,isActive);

@override
String toString() {
  return 'TelegramChat(id: $id, chatId: $chatId, chatTitle: $chatTitle, chatUsername: $chatUsername, chatPhoto: $chatPhoto, chatType: $chatType, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class _$TelegramChatCopyWith<$Res> implements $TelegramChatCopyWith<$Res> {
  factory _$TelegramChatCopyWith(_TelegramChat value, $Res Function(_TelegramChat) _then) = __$TelegramChatCopyWithImpl;
@override @useResult
$Res call({
 int id, String chatId, String? chatTitle, String? chatUsername, String? chatPhoto, String? chatType, bool isActive
});




}
/// @nodoc
class __$TelegramChatCopyWithImpl<$Res>
    implements _$TelegramChatCopyWith<$Res> {
  __$TelegramChatCopyWithImpl(this._self, this._then);

  final _TelegramChat _self;
  final $Res Function(_TelegramChat) _then;

/// Create a copy of TelegramChat
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? chatId = null,Object? chatTitle = freezed,Object? chatUsername = freezed,Object? chatPhoto = freezed,Object? chatType = freezed,Object? isActive = null,}) {
  return _then(_TelegramChat(
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
mixin _$VerifyChatsResult {

 int get verified; int get removed;
/// Create a copy of VerifyChatsResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerifyChatsResultCopyWith<VerifyChatsResult> get copyWith => _$VerifyChatsResultCopyWithImpl<VerifyChatsResult>(this as VerifyChatsResult, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifyChatsResult&&(identical(other.verified, verified) || other.verified == verified)&&(identical(other.removed, removed) || other.removed == removed));
}


@override
int get hashCode => Object.hash(runtimeType,verified,removed);

@override
String toString() {
  return 'VerifyChatsResult(verified: $verified, removed: $removed)';
}


}

/// @nodoc
abstract mixin class $VerifyChatsResultCopyWith<$Res>  {
  factory $VerifyChatsResultCopyWith(VerifyChatsResult value, $Res Function(VerifyChatsResult) _then) = _$VerifyChatsResultCopyWithImpl;
@useResult
$Res call({
 int verified, int removed
});




}
/// @nodoc
class _$VerifyChatsResultCopyWithImpl<$Res>
    implements $VerifyChatsResultCopyWith<$Res> {
  _$VerifyChatsResultCopyWithImpl(this._self, this._then);

  final VerifyChatsResult _self;
  final $Res Function(VerifyChatsResult) _then;

/// Create a copy of VerifyChatsResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? verified = null,Object? removed = null,}) {
  return _then(_self.copyWith(
verified: null == verified ? _self.verified : verified // ignore: cast_nullable_to_non_nullable
as int,removed: null == removed ? _self.removed : removed // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [VerifyChatsResult].
extension VerifyChatsResultPatterns on VerifyChatsResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VerifyChatsResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VerifyChatsResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VerifyChatsResult value)  $default,){
final _that = this;
switch (_that) {
case _VerifyChatsResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VerifyChatsResult value)?  $default,){
final _that = this;
switch (_that) {
case _VerifyChatsResult() when $default != null:
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
case _VerifyChatsResult() when $default != null:
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
case _VerifyChatsResult():
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
case _VerifyChatsResult() when $default != null:
return $default(_that.verified,_that.removed);case _:
  return null;

}
}

}

/// @nodoc


class _VerifyChatsResult implements VerifyChatsResult {
  const _VerifyChatsResult({this.verified = 0, this.removed = 0});
  

@override@JsonKey() final  int verified;
@override@JsonKey() final  int removed;

/// Create a copy of VerifyChatsResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VerifyChatsResultCopyWith<_VerifyChatsResult> get copyWith => __$VerifyChatsResultCopyWithImpl<_VerifyChatsResult>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VerifyChatsResult&&(identical(other.verified, verified) || other.verified == verified)&&(identical(other.removed, removed) || other.removed == removed));
}


@override
int get hashCode => Object.hash(runtimeType,verified,removed);

@override
String toString() {
  return 'VerifyChatsResult(verified: $verified, removed: $removed)';
}


}

/// @nodoc
abstract mixin class _$VerifyChatsResultCopyWith<$Res> implements $VerifyChatsResultCopyWith<$Res> {
  factory _$VerifyChatsResultCopyWith(_VerifyChatsResult value, $Res Function(_VerifyChatsResult) _then) = __$VerifyChatsResultCopyWithImpl;
@override @useResult
$Res call({
 int verified, int removed
});




}
/// @nodoc
class __$VerifyChatsResultCopyWithImpl<$Res>
    implements _$VerifyChatsResultCopyWith<$Res> {
  __$VerifyChatsResultCopyWithImpl(this._self, this._then);

  final _VerifyChatsResult _self;
  final $Res Function(_VerifyChatsResult) _then;

/// Create a copy of VerifyChatsResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? verified = null,Object? removed = null,}) {
  return _then(_VerifyChatsResult(
verified: null == verified ? _self.verified : verified // ignore: cast_nullable_to_non_nullable
as int,removed: null == removed ? _self.removed : removed // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
