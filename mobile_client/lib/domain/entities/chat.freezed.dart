// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChatListingSnapshot {

 int get listingId; String get title; dynamic get priceAmount; String get priceCurrency; String? get thumbnailUrl; ListingAvailability get availability; String? get availabilityCheckedAt;
/// Create a copy of ChatListingSnapshot
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatListingSnapshotCopyWith<ChatListingSnapshot> get copyWith => _$ChatListingSnapshotCopyWithImpl<ChatListingSnapshot>(this as ChatListingSnapshot, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatListingSnapshot&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other.priceAmount, priceAmount)&&(identical(other.priceCurrency, priceCurrency) || other.priceCurrency == priceCurrency)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&(identical(other.availability, availability) || other.availability == availability)&&(identical(other.availabilityCheckedAt, availabilityCheckedAt) || other.availabilityCheckedAt == availabilityCheckedAt));
}


@override
int get hashCode => Object.hash(runtimeType,listingId,title,const DeepCollectionEquality().hash(priceAmount),priceCurrency,thumbnailUrl,availability,availabilityCheckedAt);

@override
String toString() {
  return 'ChatListingSnapshot(listingId: $listingId, title: $title, priceAmount: $priceAmount, priceCurrency: $priceCurrency, thumbnailUrl: $thumbnailUrl, availability: $availability, availabilityCheckedAt: $availabilityCheckedAt)';
}


}

/// @nodoc
abstract mixin class $ChatListingSnapshotCopyWith<$Res>  {
  factory $ChatListingSnapshotCopyWith(ChatListingSnapshot value, $Res Function(ChatListingSnapshot) _then) = _$ChatListingSnapshotCopyWithImpl;
@useResult
$Res call({
 int listingId, String title, dynamic priceAmount, String priceCurrency, String? thumbnailUrl, ListingAvailability availability, String? availabilityCheckedAt
});




}
/// @nodoc
class _$ChatListingSnapshotCopyWithImpl<$Res>
    implements $ChatListingSnapshotCopyWith<$Res> {
  _$ChatListingSnapshotCopyWithImpl(this._self, this._then);

  final ChatListingSnapshot _self;
  final $Res Function(ChatListingSnapshot) _then;

/// Create a copy of ChatListingSnapshot
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? listingId = null,Object? title = null,Object? priceAmount = freezed,Object? priceCurrency = null,Object? thumbnailUrl = freezed,Object? availability = null,Object? availabilityCheckedAt = freezed,}) {
  return _then(_self.copyWith(
listingId: null == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,priceAmount: freezed == priceAmount ? _self.priceAmount : priceAmount // ignore: cast_nullable_to_non_nullable
as dynamic,priceCurrency: null == priceCurrency ? _self.priceCurrency : priceCurrency // ignore: cast_nullable_to_non_nullable
as String,thumbnailUrl: freezed == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,availability: null == availability ? _self.availability : availability // ignore: cast_nullable_to_non_nullable
as ListingAvailability,availabilityCheckedAt: freezed == availabilityCheckedAt ? _self.availabilityCheckedAt : availabilityCheckedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ChatListingSnapshot].
extension ChatListingSnapshotPatterns on ChatListingSnapshot {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatListingSnapshot value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatListingSnapshot() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatListingSnapshot value)  $default,){
final _that = this;
switch (_that) {
case _ChatListingSnapshot():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatListingSnapshot value)?  $default,){
final _that = this;
switch (_that) {
case _ChatListingSnapshot() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int listingId,  String title,  dynamic priceAmount,  String priceCurrency,  String? thumbnailUrl,  ListingAvailability availability,  String? availabilityCheckedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatListingSnapshot() when $default != null:
return $default(_that.listingId,_that.title,_that.priceAmount,_that.priceCurrency,_that.thumbnailUrl,_that.availability,_that.availabilityCheckedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int listingId,  String title,  dynamic priceAmount,  String priceCurrency,  String? thumbnailUrl,  ListingAvailability availability,  String? availabilityCheckedAt)  $default,) {final _that = this;
switch (_that) {
case _ChatListingSnapshot():
return $default(_that.listingId,_that.title,_that.priceAmount,_that.priceCurrency,_that.thumbnailUrl,_that.availability,_that.availabilityCheckedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int listingId,  String title,  dynamic priceAmount,  String priceCurrency,  String? thumbnailUrl,  ListingAvailability availability,  String? availabilityCheckedAt)?  $default,) {final _that = this;
switch (_that) {
case _ChatListingSnapshot() when $default != null:
return $default(_that.listingId,_that.title,_that.priceAmount,_that.priceCurrency,_that.thumbnailUrl,_that.availability,_that.availabilityCheckedAt);case _:
  return null;

}
}

}

/// @nodoc


class _ChatListingSnapshot implements ChatListingSnapshot {
  const _ChatListingSnapshot({required this.listingId, required this.title, this.priceAmount, required this.priceCurrency, this.thumbnailUrl, this.availability = ListingAvailability.available, this.availabilityCheckedAt});
  

@override final  int listingId;
@override final  String title;
@override final  dynamic priceAmount;
@override final  String priceCurrency;
@override final  String? thumbnailUrl;
@override@JsonKey() final  ListingAvailability availability;
@override final  String? availabilityCheckedAt;

/// Create a copy of ChatListingSnapshot
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatListingSnapshotCopyWith<_ChatListingSnapshot> get copyWith => __$ChatListingSnapshotCopyWithImpl<_ChatListingSnapshot>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatListingSnapshot&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other.priceAmount, priceAmount)&&(identical(other.priceCurrency, priceCurrency) || other.priceCurrency == priceCurrency)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&(identical(other.availability, availability) || other.availability == availability)&&(identical(other.availabilityCheckedAt, availabilityCheckedAt) || other.availabilityCheckedAt == availabilityCheckedAt));
}


@override
int get hashCode => Object.hash(runtimeType,listingId,title,const DeepCollectionEquality().hash(priceAmount),priceCurrency,thumbnailUrl,availability,availabilityCheckedAt);

@override
String toString() {
  return 'ChatListingSnapshot(listingId: $listingId, title: $title, priceAmount: $priceAmount, priceCurrency: $priceCurrency, thumbnailUrl: $thumbnailUrl, availability: $availability, availabilityCheckedAt: $availabilityCheckedAt)';
}


}

/// @nodoc
abstract mixin class _$ChatListingSnapshotCopyWith<$Res> implements $ChatListingSnapshotCopyWith<$Res> {
  factory _$ChatListingSnapshotCopyWith(_ChatListingSnapshot value, $Res Function(_ChatListingSnapshot) _then) = __$ChatListingSnapshotCopyWithImpl;
@override @useResult
$Res call({
 int listingId, String title, dynamic priceAmount, String priceCurrency, String? thumbnailUrl, ListingAvailability availability, String? availabilityCheckedAt
});




}
/// @nodoc
class __$ChatListingSnapshotCopyWithImpl<$Res>
    implements _$ChatListingSnapshotCopyWith<$Res> {
  __$ChatListingSnapshotCopyWithImpl(this._self, this._then);

  final _ChatListingSnapshot _self;
  final $Res Function(_ChatListingSnapshot) _then;

/// Create a copy of ChatListingSnapshot
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? listingId = null,Object? title = null,Object? priceAmount = freezed,Object? priceCurrency = null,Object? thumbnailUrl = freezed,Object? availability = null,Object? availabilityCheckedAt = freezed,}) {
  return _then(_ChatListingSnapshot(
listingId: null == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,priceAmount: freezed == priceAmount ? _self.priceAmount : priceAmount // ignore: cast_nullable_to_non_nullable
as dynamic,priceCurrency: null == priceCurrency ? _self.priceCurrency : priceCurrency // ignore: cast_nullable_to_non_nullable
as String,thumbnailUrl: freezed == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,availability: null == availability ? _self.availability : availability // ignore: cast_nullable_to_non_nullable
as ListingAvailability,availabilityCheckedAt: freezed == availabilityCheckedAt ? _self.availabilityCheckedAt : availabilityCheckedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$ChatParticipantSummary {

 int get userId; ChatParticipantRole get role; String get displayName; String? get avatarUrl;
/// Create a copy of ChatParticipantSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatParticipantSummaryCopyWith<ChatParticipantSummary> get copyWith => _$ChatParticipantSummaryCopyWithImpl<ChatParticipantSummary>(this as ChatParticipantSummary, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatParticipantSummary&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.role, role) || other.role == role)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl));
}


@override
int get hashCode => Object.hash(runtimeType,userId,role,displayName,avatarUrl);

@override
String toString() {
  return 'ChatParticipantSummary(userId: $userId, role: $role, displayName: $displayName, avatarUrl: $avatarUrl)';
}


}

/// @nodoc
abstract mixin class $ChatParticipantSummaryCopyWith<$Res>  {
  factory $ChatParticipantSummaryCopyWith(ChatParticipantSummary value, $Res Function(ChatParticipantSummary) _then) = _$ChatParticipantSummaryCopyWithImpl;
@useResult
$Res call({
 int userId, ChatParticipantRole role, String displayName, String? avatarUrl
});




}
/// @nodoc
class _$ChatParticipantSummaryCopyWithImpl<$Res>
    implements $ChatParticipantSummaryCopyWith<$Res> {
  _$ChatParticipantSummaryCopyWithImpl(this._self, this._then);

  final ChatParticipantSummary _self;
  final $Res Function(ChatParticipantSummary) _then;

/// Create a copy of ChatParticipantSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? role = null,Object? displayName = null,Object? avatarUrl = freezed,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as ChatParticipantRole,displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ChatParticipantSummary].
extension ChatParticipantSummaryPatterns on ChatParticipantSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatParticipantSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatParticipantSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatParticipantSummary value)  $default,){
final _that = this;
switch (_that) {
case _ChatParticipantSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatParticipantSummary value)?  $default,){
final _that = this;
switch (_that) {
case _ChatParticipantSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int userId,  ChatParticipantRole role,  String displayName,  String? avatarUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatParticipantSummary() when $default != null:
return $default(_that.userId,_that.role,_that.displayName,_that.avatarUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int userId,  ChatParticipantRole role,  String displayName,  String? avatarUrl)  $default,) {final _that = this;
switch (_that) {
case _ChatParticipantSummary():
return $default(_that.userId,_that.role,_that.displayName,_that.avatarUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int userId,  ChatParticipantRole role,  String displayName,  String? avatarUrl)?  $default,) {final _that = this;
switch (_that) {
case _ChatParticipantSummary() when $default != null:
return $default(_that.userId,_that.role,_that.displayName,_that.avatarUrl);case _:
  return null;

}
}

}

/// @nodoc


class _ChatParticipantSummary implements ChatParticipantSummary {
  const _ChatParticipantSummary({required this.userId, required this.role, required this.displayName, this.avatarUrl});
  

@override final  int userId;
@override final  ChatParticipantRole role;
@override final  String displayName;
@override final  String? avatarUrl;

/// Create a copy of ChatParticipantSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatParticipantSummaryCopyWith<_ChatParticipantSummary> get copyWith => __$ChatParticipantSummaryCopyWithImpl<_ChatParticipantSummary>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatParticipantSummary&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.role, role) || other.role == role)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl));
}


@override
int get hashCode => Object.hash(runtimeType,userId,role,displayName,avatarUrl);

@override
String toString() {
  return 'ChatParticipantSummary(userId: $userId, role: $role, displayName: $displayName, avatarUrl: $avatarUrl)';
}


}

/// @nodoc
abstract mixin class _$ChatParticipantSummaryCopyWith<$Res> implements $ChatParticipantSummaryCopyWith<$Res> {
  factory _$ChatParticipantSummaryCopyWith(_ChatParticipantSummary value, $Res Function(_ChatParticipantSummary) _then) = __$ChatParticipantSummaryCopyWithImpl;
@override @useResult
$Res call({
 int userId, ChatParticipantRole role, String displayName, String? avatarUrl
});




}
/// @nodoc
class __$ChatParticipantSummaryCopyWithImpl<$Res>
    implements _$ChatParticipantSummaryCopyWith<$Res> {
  __$ChatParticipantSummaryCopyWithImpl(this._self, this._then);

  final _ChatParticipantSummary _self;
  final $Res Function(_ChatParticipantSummary) _then;

/// Create a copy of ChatParticipantSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? role = null,Object? displayName = null,Object? avatarUrl = freezed,}) {
  return _then(_ChatParticipantSummary(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as ChatParticipantRole,displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$ChatAttachment {

 ChatAttachmentType get type; String get url; String? get name; int? get size; String? get contentType; int? get width; int? get height;
/// Create a copy of ChatAttachment
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatAttachmentCopyWith<ChatAttachment> get copyWith => _$ChatAttachmentCopyWithImpl<ChatAttachment>(this as ChatAttachment, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatAttachment&&(identical(other.type, type) || other.type == type)&&(identical(other.url, url) || other.url == url)&&(identical(other.name, name) || other.name == name)&&(identical(other.size, size) || other.size == size)&&(identical(other.contentType, contentType) || other.contentType == contentType)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height));
}


@override
int get hashCode => Object.hash(runtimeType,type,url,name,size,contentType,width,height);

@override
String toString() {
  return 'ChatAttachment(type: $type, url: $url, name: $name, size: $size, contentType: $contentType, width: $width, height: $height)';
}


}

/// @nodoc
abstract mixin class $ChatAttachmentCopyWith<$Res>  {
  factory $ChatAttachmentCopyWith(ChatAttachment value, $Res Function(ChatAttachment) _then) = _$ChatAttachmentCopyWithImpl;
@useResult
$Res call({
 ChatAttachmentType type, String url, String? name, int? size, String? contentType, int? width, int? height
});




}
/// @nodoc
class _$ChatAttachmentCopyWithImpl<$Res>
    implements $ChatAttachmentCopyWith<$Res> {
  _$ChatAttachmentCopyWithImpl(this._self, this._then);

  final ChatAttachment _self;
  final $Res Function(ChatAttachment) _then;

/// Create a copy of ChatAttachment
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? url = null,Object? name = freezed,Object? size = freezed,Object? contentType = freezed,Object? width = freezed,Object? height = freezed,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ChatAttachmentType,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,size: freezed == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int?,contentType: freezed == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as String?,width: freezed == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as int?,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [ChatAttachment].
extension ChatAttachmentPatterns on ChatAttachment {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatAttachment value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatAttachment() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatAttachment value)  $default,){
final _that = this;
switch (_that) {
case _ChatAttachment():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatAttachment value)?  $default,){
final _that = this;
switch (_that) {
case _ChatAttachment() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ChatAttachmentType type,  String url,  String? name,  int? size,  String? contentType,  int? width,  int? height)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatAttachment() when $default != null:
return $default(_that.type,_that.url,_that.name,_that.size,_that.contentType,_that.width,_that.height);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ChatAttachmentType type,  String url,  String? name,  int? size,  String? contentType,  int? width,  int? height)  $default,) {final _that = this;
switch (_that) {
case _ChatAttachment():
return $default(_that.type,_that.url,_that.name,_that.size,_that.contentType,_that.width,_that.height);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ChatAttachmentType type,  String url,  String? name,  int? size,  String? contentType,  int? width,  int? height)?  $default,) {final _that = this;
switch (_that) {
case _ChatAttachment() when $default != null:
return $default(_that.type,_that.url,_that.name,_that.size,_that.contentType,_that.width,_that.height);case _:
  return null;

}
}

}

/// @nodoc


class _ChatAttachment implements ChatAttachment {
  const _ChatAttachment({required this.type, required this.url, this.name, this.size, this.contentType, this.width, this.height});
  

@override final  ChatAttachmentType type;
@override final  String url;
@override final  String? name;
@override final  int? size;
@override final  String? contentType;
@override final  int? width;
@override final  int? height;

/// Create a copy of ChatAttachment
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatAttachmentCopyWith<_ChatAttachment> get copyWith => __$ChatAttachmentCopyWithImpl<_ChatAttachment>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatAttachment&&(identical(other.type, type) || other.type == type)&&(identical(other.url, url) || other.url == url)&&(identical(other.name, name) || other.name == name)&&(identical(other.size, size) || other.size == size)&&(identical(other.contentType, contentType) || other.contentType == contentType)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height));
}


@override
int get hashCode => Object.hash(runtimeType,type,url,name,size,contentType,width,height);

@override
String toString() {
  return 'ChatAttachment(type: $type, url: $url, name: $name, size: $size, contentType: $contentType, width: $width, height: $height)';
}


}

/// @nodoc
abstract mixin class _$ChatAttachmentCopyWith<$Res> implements $ChatAttachmentCopyWith<$Res> {
  factory _$ChatAttachmentCopyWith(_ChatAttachment value, $Res Function(_ChatAttachment) _then) = __$ChatAttachmentCopyWithImpl;
@override @useResult
$Res call({
 ChatAttachmentType type, String url, String? name, int? size, String? contentType, int? width, int? height
});




}
/// @nodoc
class __$ChatAttachmentCopyWithImpl<$Res>
    implements _$ChatAttachmentCopyWith<$Res> {
  __$ChatAttachmentCopyWithImpl(this._self, this._then);

  final _ChatAttachment _self;
  final $Res Function(_ChatAttachment) _then;

/// Create a copy of ChatAttachment
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? url = null,Object? name = freezed,Object? size = freezed,Object? contentType = freezed,Object? width = freezed,Object? height = freezed,}) {
  return _then(_ChatAttachment(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as ChatAttachmentType,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,size: freezed == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int?,contentType: freezed == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as String?,width: freezed == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as int?,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc
mixin _$ChatThread {

 String get id; int get buyerId; int get sellerId; ChatThreadStatus get status; ChatListingSnapshot get listing; ChatParticipantSummary? get otherParticipant; String? get lastMessageAt; String get lastMessagePreview; int get unreadCount; bool get isArchived; String? get lastReadMessageId; String? get lastReadAt; String get createdAt; String get updatedAt;
/// Create a copy of ChatThread
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatThreadCopyWith<ChatThread> get copyWith => _$ChatThreadCopyWithImpl<ChatThread>(this as ChatThread, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatThread&&(identical(other.id, id) || other.id == id)&&(identical(other.buyerId, buyerId) || other.buyerId == buyerId)&&(identical(other.sellerId, sellerId) || other.sellerId == sellerId)&&(identical(other.status, status) || other.status == status)&&(identical(other.listing, listing) || other.listing == listing)&&(identical(other.otherParticipant, otherParticipant) || other.otherParticipant == otherParticipant)&&(identical(other.lastMessageAt, lastMessageAt) || other.lastMessageAt == lastMessageAt)&&(identical(other.lastMessagePreview, lastMessagePreview) || other.lastMessagePreview == lastMessagePreview)&&(identical(other.unreadCount, unreadCount) || other.unreadCount == unreadCount)&&(identical(other.isArchived, isArchived) || other.isArchived == isArchived)&&(identical(other.lastReadMessageId, lastReadMessageId) || other.lastReadMessageId == lastReadMessageId)&&(identical(other.lastReadAt, lastReadAt) || other.lastReadAt == lastReadAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,buyerId,sellerId,status,listing,otherParticipant,lastMessageAt,lastMessagePreview,unreadCount,isArchived,lastReadMessageId,lastReadAt,createdAt,updatedAt);

@override
String toString() {
  return 'ChatThread(id: $id, buyerId: $buyerId, sellerId: $sellerId, status: $status, listing: $listing, otherParticipant: $otherParticipant, lastMessageAt: $lastMessageAt, lastMessagePreview: $lastMessagePreview, unreadCount: $unreadCount, isArchived: $isArchived, lastReadMessageId: $lastReadMessageId, lastReadAt: $lastReadAt, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $ChatThreadCopyWith<$Res>  {
  factory $ChatThreadCopyWith(ChatThread value, $Res Function(ChatThread) _then) = _$ChatThreadCopyWithImpl;
@useResult
$Res call({
 String id, int buyerId, int sellerId, ChatThreadStatus status, ChatListingSnapshot listing, ChatParticipantSummary? otherParticipant, String? lastMessageAt, String lastMessagePreview, int unreadCount, bool isArchived, String? lastReadMessageId, String? lastReadAt, String createdAt, String updatedAt
});


$ChatListingSnapshotCopyWith<$Res> get listing;$ChatParticipantSummaryCopyWith<$Res>? get otherParticipant;

}
/// @nodoc
class _$ChatThreadCopyWithImpl<$Res>
    implements $ChatThreadCopyWith<$Res> {
  _$ChatThreadCopyWithImpl(this._self, this._then);

  final ChatThread _self;
  final $Res Function(ChatThread) _then;

/// Create a copy of ChatThread
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? buyerId = null,Object? sellerId = null,Object? status = null,Object? listing = null,Object? otherParticipant = freezed,Object? lastMessageAt = freezed,Object? lastMessagePreview = null,Object? unreadCount = null,Object? isArchived = null,Object? lastReadMessageId = freezed,Object? lastReadAt = freezed,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,buyerId: null == buyerId ? _self.buyerId : buyerId // ignore: cast_nullable_to_non_nullable
as int,sellerId: null == sellerId ? _self.sellerId : sellerId // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ChatThreadStatus,listing: null == listing ? _self.listing : listing // ignore: cast_nullable_to_non_nullable
as ChatListingSnapshot,otherParticipant: freezed == otherParticipant ? _self.otherParticipant : otherParticipant // ignore: cast_nullable_to_non_nullable
as ChatParticipantSummary?,lastMessageAt: freezed == lastMessageAt ? _self.lastMessageAt : lastMessageAt // ignore: cast_nullable_to_non_nullable
as String?,lastMessagePreview: null == lastMessagePreview ? _self.lastMessagePreview : lastMessagePreview // ignore: cast_nullable_to_non_nullable
as String,unreadCount: null == unreadCount ? _self.unreadCount : unreadCount // ignore: cast_nullable_to_non_nullable
as int,isArchived: null == isArchived ? _self.isArchived : isArchived // ignore: cast_nullable_to_non_nullable
as bool,lastReadMessageId: freezed == lastReadMessageId ? _self.lastReadMessageId : lastReadMessageId // ignore: cast_nullable_to_non_nullable
as String?,lastReadAt: freezed == lastReadAt ? _self.lastReadAt : lastReadAt // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of ChatThread
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatListingSnapshotCopyWith<$Res> get listing {
  
  return $ChatListingSnapshotCopyWith<$Res>(_self.listing, (value) {
    return _then(_self.copyWith(listing: value));
  });
}/// Create a copy of ChatThread
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatParticipantSummaryCopyWith<$Res>? get otherParticipant {
    if (_self.otherParticipant == null) {
    return null;
  }

  return $ChatParticipantSummaryCopyWith<$Res>(_self.otherParticipant!, (value) {
    return _then(_self.copyWith(otherParticipant: value));
  });
}
}


/// Adds pattern-matching-related methods to [ChatThread].
extension ChatThreadPatterns on ChatThread {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatThread value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatThread() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatThread value)  $default,){
final _that = this;
switch (_that) {
case _ChatThread():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatThread value)?  $default,){
final _that = this;
switch (_that) {
case _ChatThread() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  int buyerId,  int sellerId,  ChatThreadStatus status,  ChatListingSnapshot listing,  ChatParticipantSummary? otherParticipant,  String? lastMessageAt,  String lastMessagePreview,  int unreadCount,  bool isArchived,  String? lastReadMessageId,  String? lastReadAt,  String createdAt,  String updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatThread() when $default != null:
return $default(_that.id,_that.buyerId,_that.sellerId,_that.status,_that.listing,_that.otherParticipant,_that.lastMessageAt,_that.lastMessagePreview,_that.unreadCount,_that.isArchived,_that.lastReadMessageId,_that.lastReadAt,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  int buyerId,  int sellerId,  ChatThreadStatus status,  ChatListingSnapshot listing,  ChatParticipantSummary? otherParticipant,  String? lastMessageAt,  String lastMessagePreview,  int unreadCount,  bool isArchived,  String? lastReadMessageId,  String? lastReadAt,  String createdAt,  String updatedAt)  $default,) {final _that = this;
switch (_that) {
case _ChatThread():
return $default(_that.id,_that.buyerId,_that.sellerId,_that.status,_that.listing,_that.otherParticipant,_that.lastMessageAt,_that.lastMessagePreview,_that.unreadCount,_that.isArchived,_that.lastReadMessageId,_that.lastReadAt,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  int buyerId,  int sellerId,  ChatThreadStatus status,  ChatListingSnapshot listing,  ChatParticipantSummary? otherParticipant,  String? lastMessageAt,  String lastMessagePreview,  int unreadCount,  bool isArchived,  String? lastReadMessageId,  String? lastReadAt,  String createdAt,  String updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _ChatThread() when $default != null:
return $default(_that.id,_that.buyerId,_that.sellerId,_that.status,_that.listing,_that.otherParticipant,_that.lastMessageAt,_that.lastMessagePreview,_that.unreadCount,_that.isArchived,_that.lastReadMessageId,_that.lastReadAt,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc


class _ChatThread implements ChatThread {
  const _ChatThread({required this.id, required this.buyerId, required this.sellerId, required this.status, required this.listing, this.otherParticipant, this.lastMessageAt, this.lastMessagePreview = '', this.unreadCount = 0, this.isArchived = false, this.lastReadMessageId, this.lastReadAt, required this.createdAt, required this.updatedAt});
  

@override final  String id;
@override final  int buyerId;
@override final  int sellerId;
@override final  ChatThreadStatus status;
@override final  ChatListingSnapshot listing;
@override final  ChatParticipantSummary? otherParticipant;
@override final  String? lastMessageAt;
@override@JsonKey() final  String lastMessagePreview;
@override@JsonKey() final  int unreadCount;
@override@JsonKey() final  bool isArchived;
@override final  String? lastReadMessageId;
@override final  String? lastReadAt;
@override final  String createdAt;
@override final  String updatedAt;

/// Create a copy of ChatThread
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatThreadCopyWith<_ChatThread> get copyWith => __$ChatThreadCopyWithImpl<_ChatThread>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatThread&&(identical(other.id, id) || other.id == id)&&(identical(other.buyerId, buyerId) || other.buyerId == buyerId)&&(identical(other.sellerId, sellerId) || other.sellerId == sellerId)&&(identical(other.status, status) || other.status == status)&&(identical(other.listing, listing) || other.listing == listing)&&(identical(other.otherParticipant, otherParticipant) || other.otherParticipant == otherParticipant)&&(identical(other.lastMessageAt, lastMessageAt) || other.lastMessageAt == lastMessageAt)&&(identical(other.lastMessagePreview, lastMessagePreview) || other.lastMessagePreview == lastMessagePreview)&&(identical(other.unreadCount, unreadCount) || other.unreadCount == unreadCount)&&(identical(other.isArchived, isArchived) || other.isArchived == isArchived)&&(identical(other.lastReadMessageId, lastReadMessageId) || other.lastReadMessageId == lastReadMessageId)&&(identical(other.lastReadAt, lastReadAt) || other.lastReadAt == lastReadAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,buyerId,sellerId,status,listing,otherParticipant,lastMessageAt,lastMessagePreview,unreadCount,isArchived,lastReadMessageId,lastReadAt,createdAt,updatedAt);

@override
String toString() {
  return 'ChatThread(id: $id, buyerId: $buyerId, sellerId: $sellerId, status: $status, listing: $listing, otherParticipant: $otherParticipant, lastMessageAt: $lastMessageAt, lastMessagePreview: $lastMessagePreview, unreadCount: $unreadCount, isArchived: $isArchived, lastReadMessageId: $lastReadMessageId, lastReadAt: $lastReadAt, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$ChatThreadCopyWith<$Res> implements $ChatThreadCopyWith<$Res> {
  factory _$ChatThreadCopyWith(_ChatThread value, $Res Function(_ChatThread) _then) = __$ChatThreadCopyWithImpl;
@override @useResult
$Res call({
 String id, int buyerId, int sellerId, ChatThreadStatus status, ChatListingSnapshot listing, ChatParticipantSummary? otherParticipant, String? lastMessageAt, String lastMessagePreview, int unreadCount, bool isArchived, String? lastReadMessageId, String? lastReadAt, String createdAt, String updatedAt
});


@override $ChatListingSnapshotCopyWith<$Res> get listing;@override $ChatParticipantSummaryCopyWith<$Res>? get otherParticipant;

}
/// @nodoc
class __$ChatThreadCopyWithImpl<$Res>
    implements _$ChatThreadCopyWith<$Res> {
  __$ChatThreadCopyWithImpl(this._self, this._then);

  final _ChatThread _self;
  final $Res Function(_ChatThread) _then;

/// Create a copy of ChatThread
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? buyerId = null,Object? sellerId = null,Object? status = null,Object? listing = null,Object? otherParticipant = freezed,Object? lastMessageAt = freezed,Object? lastMessagePreview = null,Object? unreadCount = null,Object? isArchived = null,Object? lastReadMessageId = freezed,Object? lastReadAt = freezed,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_ChatThread(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,buyerId: null == buyerId ? _self.buyerId : buyerId // ignore: cast_nullable_to_non_nullable
as int,sellerId: null == sellerId ? _self.sellerId : sellerId // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ChatThreadStatus,listing: null == listing ? _self.listing : listing // ignore: cast_nullable_to_non_nullable
as ChatListingSnapshot,otherParticipant: freezed == otherParticipant ? _self.otherParticipant : otherParticipant // ignore: cast_nullable_to_non_nullable
as ChatParticipantSummary?,lastMessageAt: freezed == lastMessageAt ? _self.lastMessageAt : lastMessageAt // ignore: cast_nullable_to_non_nullable
as String?,lastMessagePreview: null == lastMessagePreview ? _self.lastMessagePreview : lastMessagePreview // ignore: cast_nullable_to_non_nullable
as String,unreadCount: null == unreadCount ? _self.unreadCount : unreadCount // ignore: cast_nullable_to_non_nullable
as int,isArchived: null == isArchived ? _self.isArchived : isArchived // ignore: cast_nullable_to_non_nullable
as bool,lastReadMessageId: freezed == lastReadMessageId ? _self.lastReadMessageId : lastReadMessageId // ignore: cast_nullable_to_non_nullable
as String?,lastReadAt: freezed == lastReadAt ? _self.lastReadAt : lastReadAt // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,updatedAt: null == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of ChatThread
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatListingSnapshotCopyWith<$Res> get listing {
  
  return $ChatListingSnapshotCopyWith<$Res>(_self.listing, (value) {
    return _then(_self.copyWith(listing: value));
  });
}/// Create a copy of ChatThread
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatParticipantSummaryCopyWith<$Res>? get otherParticipant {
    if (_self.otherParticipant == null) {
    return null;
  }

  return $ChatParticipantSummaryCopyWith<$Res>(_self.otherParticipant!, (value) {
    return _then(_self.copyWith(otherParticipant: value));
  });
}
}

/// @nodoc
mixin _$ChatMessage {

 String get id; String get threadId; int get senderId; String get senderDisplayName; String get body; List<ChatAttachment> get attachments; Map<String, dynamic> get metadata; String? get clientMessageId; String get createdAt; String? get editedAt; String? get deletedAt; bool get isDeleted;
/// Create a copy of ChatMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatMessageCopyWith<ChatMessage> get copyWith => _$ChatMessageCopyWithImpl<ChatMessage>(this as ChatMessage, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatMessage&&(identical(other.id, id) || other.id == id)&&(identical(other.threadId, threadId) || other.threadId == threadId)&&(identical(other.senderId, senderId) || other.senderId == senderId)&&(identical(other.senderDisplayName, senderDisplayName) || other.senderDisplayName == senderDisplayName)&&(identical(other.body, body) || other.body == body)&&const DeepCollectionEquality().equals(other.attachments, attachments)&&const DeepCollectionEquality().equals(other.metadata, metadata)&&(identical(other.clientMessageId, clientMessageId) || other.clientMessageId == clientMessageId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.editedAt, editedAt) || other.editedAt == editedAt)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted));
}


@override
int get hashCode => Object.hash(runtimeType,id,threadId,senderId,senderDisplayName,body,const DeepCollectionEquality().hash(attachments),const DeepCollectionEquality().hash(metadata),clientMessageId,createdAt,editedAt,deletedAt,isDeleted);

@override
String toString() {
  return 'ChatMessage(id: $id, threadId: $threadId, senderId: $senderId, senderDisplayName: $senderDisplayName, body: $body, attachments: $attachments, metadata: $metadata, clientMessageId: $clientMessageId, createdAt: $createdAt, editedAt: $editedAt, deletedAt: $deletedAt, isDeleted: $isDeleted)';
}


}

/// @nodoc
abstract mixin class $ChatMessageCopyWith<$Res>  {
  factory $ChatMessageCopyWith(ChatMessage value, $Res Function(ChatMessage) _then) = _$ChatMessageCopyWithImpl;
@useResult
$Res call({
 String id, String threadId, int senderId, String senderDisplayName, String body, List<ChatAttachment> attachments, Map<String, dynamic> metadata, String? clientMessageId, String createdAt, String? editedAt, String? deletedAt, bool isDeleted
});




}
/// @nodoc
class _$ChatMessageCopyWithImpl<$Res>
    implements $ChatMessageCopyWith<$Res> {
  _$ChatMessageCopyWithImpl(this._self, this._then);

  final ChatMessage _self;
  final $Res Function(ChatMessage) _then;

/// Create a copy of ChatMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? threadId = null,Object? senderId = null,Object? senderDisplayName = null,Object? body = null,Object? attachments = null,Object? metadata = null,Object? clientMessageId = freezed,Object? createdAt = null,Object? editedAt = freezed,Object? deletedAt = freezed,Object? isDeleted = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,threadId: null == threadId ? _self.threadId : threadId // ignore: cast_nullable_to_non_nullable
as String,senderId: null == senderId ? _self.senderId : senderId // ignore: cast_nullable_to_non_nullable
as int,senderDisplayName: null == senderDisplayName ? _self.senderDisplayName : senderDisplayName // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,attachments: null == attachments ? _self.attachments : attachments // ignore: cast_nullable_to_non_nullable
as List<ChatAttachment>,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,clientMessageId: freezed == clientMessageId ? _self.clientMessageId : clientMessageId // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,editedAt: freezed == editedAt ? _self.editedAt : editedAt // ignore: cast_nullable_to_non_nullable
as String?,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as String?,isDeleted: null == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ChatMessage].
extension ChatMessagePatterns on ChatMessage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatMessage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatMessage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatMessage value)  $default,){
final _that = this;
switch (_that) {
case _ChatMessage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatMessage value)?  $default,){
final _that = this;
switch (_that) {
case _ChatMessage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String threadId,  int senderId,  String senderDisplayName,  String body,  List<ChatAttachment> attachments,  Map<String, dynamic> metadata,  String? clientMessageId,  String createdAt,  String? editedAt,  String? deletedAt,  bool isDeleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatMessage() when $default != null:
return $default(_that.id,_that.threadId,_that.senderId,_that.senderDisplayName,_that.body,_that.attachments,_that.metadata,_that.clientMessageId,_that.createdAt,_that.editedAt,_that.deletedAt,_that.isDeleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String threadId,  int senderId,  String senderDisplayName,  String body,  List<ChatAttachment> attachments,  Map<String, dynamic> metadata,  String? clientMessageId,  String createdAt,  String? editedAt,  String? deletedAt,  bool isDeleted)  $default,) {final _that = this;
switch (_that) {
case _ChatMessage():
return $default(_that.id,_that.threadId,_that.senderId,_that.senderDisplayName,_that.body,_that.attachments,_that.metadata,_that.clientMessageId,_that.createdAt,_that.editedAt,_that.deletedAt,_that.isDeleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String threadId,  int senderId,  String senderDisplayName,  String body,  List<ChatAttachment> attachments,  Map<String, dynamic> metadata,  String? clientMessageId,  String createdAt,  String? editedAt,  String? deletedAt,  bool isDeleted)?  $default,) {final _that = this;
switch (_that) {
case _ChatMessage() when $default != null:
return $default(_that.id,_that.threadId,_that.senderId,_that.senderDisplayName,_that.body,_that.attachments,_that.metadata,_that.clientMessageId,_that.createdAt,_that.editedAt,_that.deletedAt,_that.isDeleted);case _:
  return null;

}
}

}

/// @nodoc


class _ChatMessage implements ChatMessage {
  const _ChatMessage({required this.id, required this.threadId, required this.senderId, required this.senderDisplayName, required this.body, final  List<ChatAttachment> attachments = const [], final  Map<String, dynamic> metadata = const {}, this.clientMessageId, required this.createdAt, this.editedAt, this.deletedAt, this.isDeleted = false}): _attachments = attachments,_metadata = metadata;
  

@override final  String id;
@override final  String threadId;
@override final  int senderId;
@override final  String senderDisplayName;
@override final  String body;
 final  List<ChatAttachment> _attachments;
@override@JsonKey() List<ChatAttachment> get attachments {
  if (_attachments is EqualUnmodifiableListView) return _attachments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_attachments);
}

 final  Map<String, dynamic> _metadata;
@override@JsonKey() Map<String, dynamic> get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}

@override final  String? clientMessageId;
@override final  String createdAt;
@override final  String? editedAt;
@override final  String? deletedAt;
@override@JsonKey() final  bool isDeleted;

/// Create a copy of ChatMessage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatMessageCopyWith<_ChatMessage> get copyWith => __$ChatMessageCopyWithImpl<_ChatMessage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatMessage&&(identical(other.id, id) || other.id == id)&&(identical(other.threadId, threadId) || other.threadId == threadId)&&(identical(other.senderId, senderId) || other.senderId == senderId)&&(identical(other.senderDisplayName, senderDisplayName) || other.senderDisplayName == senderDisplayName)&&(identical(other.body, body) || other.body == body)&&const DeepCollectionEquality().equals(other._attachments, _attachments)&&const DeepCollectionEquality().equals(other._metadata, _metadata)&&(identical(other.clientMessageId, clientMessageId) || other.clientMessageId == clientMessageId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.editedAt, editedAt) || other.editedAt == editedAt)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted));
}


@override
int get hashCode => Object.hash(runtimeType,id,threadId,senderId,senderDisplayName,body,const DeepCollectionEquality().hash(_attachments),const DeepCollectionEquality().hash(_metadata),clientMessageId,createdAt,editedAt,deletedAt,isDeleted);

@override
String toString() {
  return 'ChatMessage(id: $id, threadId: $threadId, senderId: $senderId, senderDisplayName: $senderDisplayName, body: $body, attachments: $attachments, metadata: $metadata, clientMessageId: $clientMessageId, createdAt: $createdAt, editedAt: $editedAt, deletedAt: $deletedAt, isDeleted: $isDeleted)';
}


}

/// @nodoc
abstract mixin class _$ChatMessageCopyWith<$Res> implements $ChatMessageCopyWith<$Res> {
  factory _$ChatMessageCopyWith(_ChatMessage value, $Res Function(_ChatMessage) _then) = __$ChatMessageCopyWithImpl;
@override @useResult
$Res call({
 String id, String threadId, int senderId, String senderDisplayName, String body, List<ChatAttachment> attachments, Map<String, dynamic> metadata, String? clientMessageId, String createdAt, String? editedAt, String? deletedAt, bool isDeleted
});




}
/// @nodoc
class __$ChatMessageCopyWithImpl<$Res>
    implements _$ChatMessageCopyWith<$Res> {
  __$ChatMessageCopyWithImpl(this._self, this._then);

  final _ChatMessage _self;
  final $Res Function(_ChatMessage) _then;

/// Create a copy of ChatMessage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? threadId = null,Object? senderId = null,Object? senderDisplayName = null,Object? body = null,Object? attachments = null,Object? metadata = null,Object? clientMessageId = freezed,Object? createdAt = null,Object? editedAt = freezed,Object? deletedAt = freezed,Object? isDeleted = null,}) {
  return _then(_ChatMessage(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,threadId: null == threadId ? _self.threadId : threadId // ignore: cast_nullable_to_non_nullable
as String,senderId: null == senderId ? _self.senderId : senderId // ignore: cast_nullable_to_non_nullable
as int,senderDisplayName: null == senderDisplayName ? _self.senderDisplayName : senderDisplayName // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,attachments: null == attachments ? _self._attachments : attachments // ignore: cast_nullable_to_non_nullable
as List<ChatAttachment>,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,clientMessageId: freezed == clientMessageId ? _self.clientMessageId : clientMessageId // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,editedAt: freezed == editedAt ? _self.editedAt : editedAt // ignore: cast_nullable_to_non_nullable
as String?,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as String?,isDeleted: null == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$ChatMessagePage {

 List<ChatMessage> get messages; bool get hasMore;
/// Create a copy of ChatMessagePage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatMessagePageCopyWith<ChatMessagePage> get copyWith => _$ChatMessagePageCopyWithImpl<ChatMessagePage>(this as ChatMessagePage, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatMessagePage&&const DeepCollectionEquality().equals(other.messages, messages)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(messages),hasMore);

@override
String toString() {
  return 'ChatMessagePage(messages: $messages, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class $ChatMessagePageCopyWith<$Res>  {
  factory $ChatMessagePageCopyWith(ChatMessagePage value, $Res Function(ChatMessagePage) _then) = _$ChatMessagePageCopyWithImpl;
@useResult
$Res call({
 List<ChatMessage> messages, bool hasMore
});




}
/// @nodoc
class _$ChatMessagePageCopyWithImpl<$Res>
    implements $ChatMessagePageCopyWith<$Res> {
  _$ChatMessagePageCopyWithImpl(this._self, this._then);

  final ChatMessagePage _self;
  final $Res Function(ChatMessagePage) _then;

/// Create a copy of ChatMessagePage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? messages = null,Object? hasMore = null,}) {
  return _then(_self.copyWith(
messages: null == messages ? _self.messages : messages // ignore: cast_nullable_to_non_nullable
as List<ChatMessage>,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ChatMessagePage].
extension ChatMessagePagePatterns on ChatMessagePage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatMessagePage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatMessagePage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatMessagePage value)  $default,){
final _that = this;
switch (_that) {
case _ChatMessagePage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatMessagePage value)?  $default,){
final _that = this;
switch (_that) {
case _ChatMessagePage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ChatMessage> messages,  bool hasMore)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatMessagePage() when $default != null:
return $default(_that.messages,_that.hasMore);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ChatMessage> messages,  bool hasMore)  $default,) {final _that = this;
switch (_that) {
case _ChatMessagePage():
return $default(_that.messages,_that.hasMore);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ChatMessage> messages,  bool hasMore)?  $default,) {final _that = this;
switch (_that) {
case _ChatMessagePage() when $default != null:
return $default(_that.messages,_that.hasMore);case _:
  return null;

}
}

}

/// @nodoc


class _ChatMessagePage implements ChatMessagePage {
  const _ChatMessagePage({final  List<ChatMessage> messages = const [], this.hasMore = false}): _messages = messages;
  

 final  List<ChatMessage> _messages;
@override@JsonKey() List<ChatMessage> get messages {
  if (_messages is EqualUnmodifiableListView) return _messages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_messages);
}

@override@JsonKey() final  bool hasMore;

/// Create a copy of ChatMessagePage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatMessagePageCopyWith<_ChatMessagePage> get copyWith => __$ChatMessagePageCopyWithImpl<_ChatMessagePage>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatMessagePage&&const DeepCollectionEquality().equals(other._messages, _messages)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_messages),hasMore);

@override
String toString() {
  return 'ChatMessagePage(messages: $messages, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class _$ChatMessagePageCopyWith<$Res> implements $ChatMessagePageCopyWith<$Res> {
  factory _$ChatMessagePageCopyWith(_ChatMessagePage value, $Res Function(_ChatMessagePage) _then) = __$ChatMessagePageCopyWithImpl;
@override @useResult
$Res call({
 List<ChatMessage> messages, bool hasMore
});




}
/// @nodoc
class __$ChatMessagePageCopyWithImpl<$Res>
    implements _$ChatMessagePageCopyWith<$Res> {
  __$ChatMessagePageCopyWithImpl(this._self, this._then);

  final _ChatMessagePage _self;
  final $Res Function(_ChatMessagePage) _then;

/// Create a copy of ChatMessagePage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? messages = null,Object? hasMore = null,}) {
  return _then(_ChatMessagePage(
messages: null == messages ? _self._messages : messages // ignore: cast_nullable_to_non_nullable
as List<ChatMessage>,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc
mixin _$CreateThreadInput {

 int get listingId; String? get message; String? get clientMessageId; List<ChatAttachment>? get attachments;
/// Create a copy of CreateThreadInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateThreadInputCopyWith<CreateThreadInput> get copyWith => _$CreateThreadInputCopyWithImpl<CreateThreadInput>(this as CreateThreadInput, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateThreadInput&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.message, message) || other.message == message)&&(identical(other.clientMessageId, clientMessageId) || other.clientMessageId == clientMessageId)&&const DeepCollectionEquality().equals(other.attachments, attachments));
}


@override
int get hashCode => Object.hash(runtimeType,listingId,message,clientMessageId,const DeepCollectionEquality().hash(attachments));

@override
String toString() {
  return 'CreateThreadInput(listingId: $listingId, message: $message, clientMessageId: $clientMessageId, attachments: $attachments)';
}


}

/// @nodoc
abstract mixin class $CreateThreadInputCopyWith<$Res>  {
  factory $CreateThreadInputCopyWith(CreateThreadInput value, $Res Function(CreateThreadInput) _then) = _$CreateThreadInputCopyWithImpl;
@useResult
$Res call({
 int listingId, String? message, String? clientMessageId, List<ChatAttachment>? attachments
});




}
/// @nodoc
class _$CreateThreadInputCopyWithImpl<$Res>
    implements $CreateThreadInputCopyWith<$Res> {
  _$CreateThreadInputCopyWithImpl(this._self, this._then);

  final CreateThreadInput _self;
  final $Res Function(CreateThreadInput) _then;

/// Create a copy of CreateThreadInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? listingId = null,Object? message = freezed,Object? clientMessageId = freezed,Object? attachments = freezed,}) {
  return _then(_self.copyWith(
listingId: null == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as int,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,clientMessageId: freezed == clientMessageId ? _self.clientMessageId : clientMessageId // ignore: cast_nullable_to_non_nullable
as String?,attachments: freezed == attachments ? _self.attachments : attachments // ignore: cast_nullable_to_non_nullable
as List<ChatAttachment>?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateThreadInput].
extension CreateThreadInputPatterns on CreateThreadInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateThreadInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateThreadInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateThreadInput value)  $default,){
final _that = this;
switch (_that) {
case _CreateThreadInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateThreadInput value)?  $default,){
final _that = this;
switch (_that) {
case _CreateThreadInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int listingId,  String? message,  String? clientMessageId,  List<ChatAttachment>? attachments)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateThreadInput() when $default != null:
return $default(_that.listingId,_that.message,_that.clientMessageId,_that.attachments);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int listingId,  String? message,  String? clientMessageId,  List<ChatAttachment>? attachments)  $default,) {final _that = this;
switch (_that) {
case _CreateThreadInput():
return $default(_that.listingId,_that.message,_that.clientMessageId,_that.attachments);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int listingId,  String? message,  String? clientMessageId,  List<ChatAttachment>? attachments)?  $default,) {final _that = this;
switch (_that) {
case _CreateThreadInput() when $default != null:
return $default(_that.listingId,_that.message,_that.clientMessageId,_that.attachments);case _:
  return null;

}
}

}

/// @nodoc


class _CreateThreadInput implements CreateThreadInput {
  const _CreateThreadInput({required this.listingId, this.message, this.clientMessageId, final  List<ChatAttachment>? attachments}): _attachments = attachments;
  

@override final  int listingId;
@override final  String? message;
@override final  String? clientMessageId;
 final  List<ChatAttachment>? _attachments;
@override List<ChatAttachment>? get attachments {
  final value = _attachments;
  if (value == null) return null;
  if (_attachments is EqualUnmodifiableListView) return _attachments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of CreateThreadInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateThreadInputCopyWith<_CreateThreadInput> get copyWith => __$CreateThreadInputCopyWithImpl<_CreateThreadInput>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateThreadInput&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.message, message) || other.message == message)&&(identical(other.clientMessageId, clientMessageId) || other.clientMessageId == clientMessageId)&&const DeepCollectionEquality().equals(other._attachments, _attachments));
}


@override
int get hashCode => Object.hash(runtimeType,listingId,message,clientMessageId,const DeepCollectionEquality().hash(_attachments));

@override
String toString() {
  return 'CreateThreadInput(listingId: $listingId, message: $message, clientMessageId: $clientMessageId, attachments: $attachments)';
}


}

/// @nodoc
abstract mixin class _$CreateThreadInputCopyWith<$Res> implements $CreateThreadInputCopyWith<$Res> {
  factory _$CreateThreadInputCopyWith(_CreateThreadInput value, $Res Function(_CreateThreadInput) _then) = __$CreateThreadInputCopyWithImpl;
@override @useResult
$Res call({
 int listingId, String? message, String? clientMessageId, List<ChatAttachment>? attachments
});




}
/// @nodoc
class __$CreateThreadInputCopyWithImpl<$Res>
    implements _$CreateThreadInputCopyWith<$Res> {
  __$CreateThreadInputCopyWithImpl(this._self, this._then);

  final _CreateThreadInput _self;
  final $Res Function(_CreateThreadInput) _then;

/// Create a copy of CreateThreadInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? listingId = null,Object? message = freezed,Object? clientMessageId = freezed,Object? attachments = freezed,}) {
  return _then(_CreateThreadInput(
listingId: null == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as int,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,clientMessageId: freezed == clientMessageId ? _self.clientMessageId : clientMessageId // ignore: cast_nullable_to_non_nullable
as String?,attachments: freezed == attachments ? _self._attachments : attachments // ignore: cast_nullable_to_non_nullable
as List<ChatAttachment>?,
  ));
}


}

/// @nodoc
mixin _$SendMessageInput {

 String? get body; String? get clientMessageId; Map<String, dynamic>? get metadata; List<ChatAttachment>? get attachments;
/// Create a copy of SendMessageInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SendMessageInputCopyWith<SendMessageInput> get copyWith => _$SendMessageInputCopyWithImpl<SendMessageInput>(this as SendMessageInput, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendMessageInput&&(identical(other.body, body) || other.body == body)&&(identical(other.clientMessageId, clientMessageId) || other.clientMessageId == clientMessageId)&&const DeepCollectionEquality().equals(other.metadata, metadata)&&const DeepCollectionEquality().equals(other.attachments, attachments));
}


@override
int get hashCode => Object.hash(runtimeType,body,clientMessageId,const DeepCollectionEquality().hash(metadata),const DeepCollectionEquality().hash(attachments));

@override
String toString() {
  return 'SendMessageInput(body: $body, clientMessageId: $clientMessageId, metadata: $metadata, attachments: $attachments)';
}


}

/// @nodoc
abstract mixin class $SendMessageInputCopyWith<$Res>  {
  factory $SendMessageInputCopyWith(SendMessageInput value, $Res Function(SendMessageInput) _then) = _$SendMessageInputCopyWithImpl;
@useResult
$Res call({
 String? body, String? clientMessageId, Map<String, dynamic>? metadata, List<ChatAttachment>? attachments
});




}
/// @nodoc
class _$SendMessageInputCopyWithImpl<$Res>
    implements $SendMessageInputCopyWith<$Res> {
  _$SendMessageInputCopyWithImpl(this._self, this._then);

  final SendMessageInput _self;
  final $Res Function(SendMessageInput) _then;

/// Create a copy of SendMessageInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? body = freezed,Object? clientMessageId = freezed,Object? metadata = freezed,Object? attachments = freezed,}) {
  return _then(_self.copyWith(
body: freezed == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String?,clientMessageId: freezed == clientMessageId ? _self.clientMessageId : clientMessageId // ignore: cast_nullable_to_non_nullable
as String?,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,attachments: freezed == attachments ? _self.attachments : attachments // ignore: cast_nullable_to_non_nullable
as List<ChatAttachment>?,
  ));
}

}


/// Adds pattern-matching-related methods to [SendMessageInput].
extension SendMessageInputPatterns on SendMessageInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SendMessageInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SendMessageInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SendMessageInput value)  $default,){
final _that = this;
switch (_that) {
case _SendMessageInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SendMessageInput value)?  $default,){
final _that = this;
switch (_that) {
case _SendMessageInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? body,  String? clientMessageId,  Map<String, dynamic>? metadata,  List<ChatAttachment>? attachments)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SendMessageInput() when $default != null:
return $default(_that.body,_that.clientMessageId,_that.metadata,_that.attachments);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? body,  String? clientMessageId,  Map<String, dynamic>? metadata,  List<ChatAttachment>? attachments)  $default,) {final _that = this;
switch (_that) {
case _SendMessageInput():
return $default(_that.body,_that.clientMessageId,_that.metadata,_that.attachments);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? body,  String? clientMessageId,  Map<String, dynamic>? metadata,  List<ChatAttachment>? attachments)?  $default,) {final _that = this;
switch (_that) {
case _SendMessageInput() when $default != null:
return $default(_that.body,_that.clientMessageId,_that.metadata,_that.attachments);case _:
  return null;

}
}

}

/// @nodoc


class _SendMessageInput implements SendMessageInput {
  const _SendMessageInput({this.body, this.clientMessageId, final  Map<String, dynamic>? metadata, final  List<ChatAttachment>? attachments}): _metadata = metadata,_attachments = attachments;
  

@override final  String? body;
@override final  String? clientMessageId;
 final  Map<String, dynamic>? _metadata;
@override Map<String, dynamic>? get metadata {
  final value = _metadata;
  if (value == null) return null;
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  List<ChatAttachment>? _attachments;
@override List<ChatAttachment>? get attachments {
  final value = _attachments;
  if (value == null) return null;
  if (_attachments is EqualUnmodifiableListView) return _attachments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of SendMessageInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SendMessageInputCopyWith<_SendMessageInput> get copyWith => __$SendMessageInputCopyWithImpl<_SendMessageInput>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SendMessageInput&&(identical(other.body, body) || other.body == body)&&(identical(other.clientMessageId, clientMessageId) || other.clientMessageId == clientMessageId)&&const DeepCollectionEquality().equals(other._metadata, _metadata)&&const DeepCollectionEquality().equals(other._attachments, _attachments));
}


@override
int get hashCode => Object.hash(runtimeType,body,clientMessageId,const DeepCollectionEquality().hash(_metadata),const DeepCollectionEquality().hash(_attachments));

@override
String toString() {
  return 'SendMessageInput(body: $body, clientMessageId: $clientMessageId, metadata: $metadata, attachments: $attachments)';
}


}

/// @nodoc
abstract mixin class _$SendMessageInputCopyWith<$Res> implements $SendMessageInputCopyWith<$Res> {
  factory _$SendMessageInputCopyWith(_SendMessageInput value, $Res Function(_SendMessageInput) _then) = __$SendMessageInputCopyWithImpl;
@override @useResult
$Res call({
 String? body, String? clientMessageId, Map<String, dynamic>? metadata, List<ChatAttachment>? attachments
});




}
/// @nodoc
class __$SendMessageInputCopyWithImpl<$Res>
    implements _$SendMessageInputCopyWith<$Res> {
  __$SendMessageInputCopyWithImpl(this._self, this._then);

  final _SendMessageInput _self;
  final $Res Function(_SendMessageInput) _then;

/// Create a copy of SendMessageInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? body = freezed,Object? clientMessageId = freezed,Object? metadata = freezed,Object? attachments = freezed,}) {
  return _then(_SendMessageInput(
body: freezed == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String?,clientMessageId: freezed == clientMessageId ? _self.clientMessageId : clientMessageId // ignore: cast_nullable_to_non_nullable
as String?,metadata: freezed == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,attachments: freezed == attachments ? _self._attachments : attachments // ignore: cast_nullable_to_non_nullable
as List<ChatAttachment>?,
  ));
}


}

// dart format on
