// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChatListingSnapshotDto {

@JsonKey(name: 'listing_id') int get listingId; String get title;@JsonKey(name: 'price_amount') dynamic get priceAmount;@JsonKey(name: 'price_currency') String get priceCurrency;@JsonKey(name: 'thumbnail_url') String? get thumbnailUrl; String? get availability;// 'available', 'unavailable', 'deleted'
@JsonKey(name: 'availability_checked_at') String? get availabilityCheckedAt;
/// Create a copy of ChatListingSnapshotDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatListingSnapshotDtoCopyWith<ChatListingSnapshotDto> get copyWith => _$ChatListingSnapshotDtoCopyWithImpl<ChatListingSnapshotDto>(this as ChatListingSnapshotDto, _$identity);

  /// Serializes this ChatListingSnapshotDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatListingSnapshotDto&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other.priceAmount, priceAmount)&&(identical(other.priceCurrency, priceCurrency) || other.priceCurrency == priceCurrency)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&(identical(other.availability, availability) || other.availability == availability)&&(identical(other.availabilityCheckedAt, availabilityCheckedAt) || other.availabilityCheckedAt == availabilityCheckedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,listingId,title,const DeepCollectionEquality().hash(priceAmount),priceCurrency,thumbnailUrl,availability,availabilityCheckedAt);

@override
String toString() {
  return 'ChatListingSnapshotDto(listingId: $listingId, title: $title, priceAmount: $priceAmount, priceCurrency: $priceCurrency, thumbnailUrl: $thumbnailUrl, availability: $availability, availabilityCheckedAt: $availabilityCheckedAt)';
}


}

/// @nodoc
abstract mixin class $ChatListingSnapshotDtoCopyWith<$Res>  {
  factory $ChatListingSnapshotDtoCopyWith(ChatListingSnapshotDto value, $Res Function(ChatListingSnapshotDto) _then) = _$ChatListingSnapshotDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'listing_id') int listingId, String title,@JsonKey(name: 'price_amount') dynamic priceAmount,@JsonKey(name: 'price_currency') String priceCurrency,@JsonKey(name: 'thumbnail_url') String? thumbnailUrl, String? availability,@JsonKey(name: 'availability_checked_at') String? availabilityCheckedAt
});




}
/// @nodoc
class _$ChatListingSnapshotDtoCopyWithImpl<$Res>
    implements $ChatListingSnapshotDtoCopyWith<$Res> {
  _$ChatListingSnapshotDtoCopyWithImpl(this._self, this._then);

  final ChatListingSnapshotDto _self;
  final $Res Function(ChatListingSnapshotDto) _then;

/// Create a copy of ChatListingSnapshotDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? listingId = null,Object? title = null,Object? priceAmount = freezed,Object? priceCurrency = null,Object? thumbnailUrl = freezed,Object? availability = freezed,Object? availabilityCheckedAt = freezed,}) {
  return _then(_self.copyWith(
listingId: null == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,priceAmount: freezed == priceAmount ? _self.priceAmount : priceAmount // ignore: cast_nullable_to_non_nullable
as dynamic,priceCurrency: null == priceCurrency ? _self.priceCurrency : priceCurrency // ignore: cast_nullable_to_non_nullable
as String,thumbnailUrl: freezed == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,availability: freezed == availability ? _self.availability : availability // ignore: cast_nullable_to_non_nullable
as String?,availabilityCheckedAt: freezed == availabilityCheckedAt ? _self.availabilityCheckedAt : availabilityCheckedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ChatListingSnapshotDto].
extension ChatListingSnapshotDtoPatterns on ChatListingSnapshotDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatListingSnapshotDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatListingSnapshotDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatListingSnapshotDto value)  $default,){
final _that = this;
switch (_that) {
case _ChatListingSnapshotDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatListingSnapshotDto value)?  $default,){
final _that = this;
switch (_that) {
case _ChatListingSnapshotDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'listing_id')  int listingId,  String title, @JsonKey(name: 'price_amount')  dynamic priceAmount, @JsonKey(name: 'price_currency')  String priceCurrency, @JsonKey(name: 'thumbnail_url')  String? thumbnailUrl,  String? availability, @JsonKey(name: 'availability_checked_at')  String? availabilityCheckedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatListingSnapshotDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'listing_id')  int listingId,  String title, @JsonKey(name: 'price_amount')  dynamic priceAmount, @JsonKey(name: 'price_currency')  String priceCurrency, @JsonKey(name: 'thumbnail_url')  String? thumbnailUrl,  String? availability, @JsonKey(name: 'availability_checked_at')  String? availabilityCheckedAt)  $default,) {final _that = this;
switch (_that) {
case _ChatListingSnapshotDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'listing_id')  int listingId,  String title, @JsonKey(name: 'price_amount')  dynamic priceAmount, @JsonKey(name: 'price_currency')  String priceCurrency, @JsonKey(name: 'thumbnail_url')  String? thumbnailUrl,  String? availability, @JsonKey(name: 'availability_checked_at')  String? availabilityCheckedAt)?  $default,) {final _that = this;
switch (_that) {
case _ChatListingSnapshotDto() when $default != null:
return $default(_that.listingId,_that.title,_that.priceAmount,_that.priceCurrency,_that.thumbnailUrl,_that.availability,_that.availabilityCheckedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatListingSnapshotDto implements ChatListingSnapshotDto {
  const _ChatListingSnapshotDto({@JsonKey(name: 'listing_id') required this.listingId, required this.title, @JsonKey(name: 'price_amount') this.priceAmount, @JsonKey(name: 'price_currency') required this.priceCurrency, @JsonKey(name: 'thumbnail_url') this.thumbnailUrl, this.availability, @JsonKey(name: 'availability_checked_at') this.availabilityCheckedAt});
  factory _ChatListingSnapshotDto.fromJson(Map<String, dynamic> json) => _$ChatListingSnapshotDtoFromJson(json);

@override@JsonKey(name: 'listing_id') final  int listingId;
@override final  String title;
@override@JsonKey(name: 'price_amount') final  dynamic priceAmount;
@override@JsonKey(name: 'price_currency') final  String priceCurrency;
@override@JsonKey(name: 'thumbnail_url') final  String? thumbnailUrl;
@override final  String? availability;
// 'available', 'unavailable', 'deleted'
@override@JsonKey(name: 'availability_checked_at') final  String? availabilityCheckedAt;

/// Create a copy of ChatListingSnapshotDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatListingSnapshotDtoCopyWith<_ChatListingSnapshotDto> get copyWith => __$ChatListingSnapshotDtoCopyWithImpl<_ChatListingSnapshotDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatListingSnapshotDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatListingSnapshotDto&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other.priceAmount, priceAmount)&&(identical(other.priceCurrency, priceCurrency) || other.priceCurrency == priceCurrency)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&(identical(other.availability, availability) || other.availability == availability)&&(identical(other.availabilityCheckedAt, availabilityCheckedAt) || other.availabilityCheckedAt == availabilityCheckedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,listingId,title,const DeepCollectionEquality().hash(priceAmount),priceCurrency,thumbnailUrl,availability,availabilityCheckedAt);

@override
String toString() {
  return 'ChatListingSnapshotDto(listingId: $listingId, title: $title, priceAmount: $priceAmount, priceCurrency: $priceCurrency, thumbnailUrl: $thumbnailUrl, availability: $availability, availabilityCheckedAt: $availabilityCheckedAt)';
}


}

/// @nodoc
abstract mixin class _$ChatListingSnapshotDtoCopyWith<$Res> implements $ChatListingSnapshotDtoCopyWith<$Res> {
  factory _$ChatListingSnapshotDtoCopyWith(_ChatListingSnapshotDto value, $Res Function(_ChatListingSnapshotDto) _then) = __$ChatListingSnapshotDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'listing_id') int listingId, String title,@JsonKey(name: 'price_amount') dynamic priceAmount,@JsonKey(name: 'price_currency') String priceCurrency,@JsonKey(name: 'thumbnail_url') String? thumbnailUrl, String? availability,@JsonKey(name: 'availability_checked_at') String? availabilityCheckedAt
});




}
/// @nodoc
class __$ChatListingSnapshotDtoCopyWithImpl<$Res>
    implements _$ChatListingSnapshotDtoCopyWith<$Res> {
  __$ChatListingSnapshotDtoCopyWithImpl(this._self, this._then);

  final _ChatListingSnapshotDto _self;
  final $Res Function(_ChatListingSnapshotDto) _then;

/// Create a copy of ChatListingSnapshotDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? listingId = null,Object? title = null,Object? priceAmount = freezed,Object? priceCurrency = null,Object? thumbnailUrl = freezed,Object? availability = freezed,Object? availabilityCheckedAt = freezed,}) {
  return _then(_ChatListingSnapshotDto(
listingId: null == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,priceAmount: freezed == priceAmount ? _self.priceAmount : priceAmount // ignore: cast_nullable_to_non_nullable
as dynamic,priceCurrency: null == priceCurrency ? _self.priceCurrency : priceCurrency // ignore: cast_nullable_to_non_nullable
as String,thumbnailUrl: freezed == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,availability: freezed == availability ? _self.availability : availability // ignore: cast_nullable_to_non_nullable
as String?,availabilityCheckedAt: freezed == availabilityCheckedAt ? _self.availabilityCheckedAt : availabilityCheckedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ChatParticipantSummaryDto {

@JsonKey(name: 'user_id') int get userId; String get role;// 'buyer', 'seller'
@JsonKey(name: 'display_name') String get displayName;@JsonKey(name: 'avatar_url') String? get avatarUrl;
/// Create a copy of ChatParticipantSummaryDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatParticipantSummaryDtoCopyWith<ChatParticipantSummaryDto> get copyWith => _$ChatParticipantSummaryDtoCopyWithImpl<ChatParticipantSummaryDto>(this as ChatParticipantSummaryDto, _$identity);

  /// Serializes this ChatParticipantSummaryDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatParticipantSummaryDto&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.role, role) || other.role == role)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,role,displayName,avatarUrl);

@override
String toString() {
  return 'ChatParticipantSummaryDto(userId: $userId, role: $role, displayName: $displayName, avatarUrl: $avatarUrl)';
}


}

/// @nodoc
abstract mixin class $ChatParticipantSummaryDtoCopyWith<$Res>  {
  factory $ChatParticipantSummaryDtoCopyWith(ChatParticipantSummaryDto value, $Res Function(ChatParticipantSummaryDto) _then) = _$ChatParticipantSummaryDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'user_id') int userId, String role,@JsonKey(name: 'display_name') String displayName,@JsonKey(name: 'avatar_url') String? avatarUrl
});




}
/// @nodoc
class _$ChatParticipantSummaryDtoCopyWithImpl<$Res>
    implements $ChatParticipantSummaryDtoCopyWith<$Res> {
  _$ChatParticipantSummaryDtoCopyWithImpl(this._self, this._then);

  final ChatParticipantSummaryDto _self;
  final $Res Function(ChatParticipantSummaryDto) _then;

/// Create a copy of ChatParticipantSummaryDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? role = null,Object? displayName = null,Object? avatarUrl = freezed,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ChatParticipantSummaryDto].
extension ChatParticipantSummaryDtoPatterns on ChatParticipantSummaryDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatParticipantSummaryDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatParticipantSummaryDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatParticipantSummaryDto value)  $default,){
final _that = this;
switch (_that) {
case _ChatParticipantSummaryDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatParticipantSummaryDto value)?  $default,){
final _that = this;
switch (_that) {
case _ChatParticipantSummaryDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_id')  int userId,  String role, @JsonKey(name: 'display_name')  String displayName, @JsonKey(name: 'avatar_url')  String? avatarUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatParticipantSummaryDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'user_id')  int userId,  String role, @JsonKey(name: 'display_name')  String displayName, @JsonKey(name: 'avatar_url')  String? avatarUrl)  $default,) {final _that = this;
switch (_that) {
case _ChatParticipantSummaryDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'user_id')  int userId,  String role, @JsonKey(name: 'display_name')  String displayName, @JsonKey(name: 'avatar_url')  String? avatarUrl)?  $default,) {final _that = this;
switch (_that) {
case _ChatParticipantSummaryDto() when $default != null:
return $default(_that.userId,_that.role,_that.displayName,_that.avatarUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatParticipantSummaryDto implements ChatParticipantSummaryDto {
  const _ChatParticipantSummaryDto({@JsonKey(name: 'user_id') required this.userId, required this.role, @JsonKey(name: 'display_name') required this.displayName, @JsonKey(name: 'avatar_url') this.avatarUrl});
  factory _ChatParticipantSummaryDto.fromJson(Map<String, dynamic> json) => _$ChatParticipantSummaryDtoFromJson(json);

@override@JsonKey(name: 'user_id') final  int userId;
@override final  String role;
// 'buyer', 'seller'
@override@JsonKey(name: 'display_name') final  String displayName;
@override@JsonKey(name: 'avatar_url') final  String? avatarUrl;

/// Create a copy of ChatParticipantSummaryDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatParticipantSummaryDtoCopyWith<_ChatParticipantSummaryDto> get copyWith => __$ChatParticipantSummaryDtoCopyWithImpl<_ChatParticipantSummaryDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatParticipantSummaryDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatParticipantSummaryDto&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.role, role) || other.role == role)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,userId,role,displayName,avatarUrl);

@override
String toString() {
  return 'ChatParticipantSummaryDto(userId: $userId, role: $role, displayName: $displayName, avatarUrl: $avatarUrl)';
}


}

/// @nodoc
abstract mixin class _$ChatParticipantSummaryDtoCopyWith<$Res> implements $ChatParticipantSummaryDtoCopyWith<$Res> {
  factory _$ChatParticipantSummaryDtoCopyWith(_ChatParticipantSummaryDto value, $Res Function(_ChatParticipantSummaryDto) _then) = __$ChatParticipantSummaryDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'user_id') int userId, String role,@JsonKey(name: 'display_name') String displayName,@JsonKey(name: 'avatar_url') String? avatarUrl
});




}
/// @nodoc
class __$ChatParticipantSummaryDtoCopyWithImpl<$Res>
    implements _$ChatParticipantSummaryDtoCopyWith<$Res> {
  __$ChatParticipantSummaryDtoCopyWithImpl(this._self, this._then);

  final _ChatParticipantSummaryDto _self;
  final $Res Function(_ChatParticipantSummaryDto) _then;

/// Create a copy of ChatParticipantSummaryDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? role = null,Object? displayName = null,Object? avatarUrl = freezed,}) {
  return _then(_ChatParticipantSummaryDto(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ChatThreadDto {

 String get id;@JsonKey(name: 'buyer_id') int get buyerId;@JsonKey(name: 'seller_id') int get sellerId; String get status;// 'active', 'archived', 'closed'
 ChatListingSnapshotDto get listing;@JsonKey(name: 'other_participant') ChatParticipantSummaryDto? get otherParticipant;@JsonKey(name: 'last_message_at') String? get lastMessageAt;@JsonKey(name: 'last_message_preview') String get lastMessagePreview;@JsonKey(name: 'unread_count') int get unreadCount;@JsonKey(name: 'is_archived') bool get isArchived;@JsonKey(name: 'last_read_message_id') String? get lastReadMessageId;@JsonKey(name: 'last_read_at') String? get lastReadAt;@JsonKey(name: 'created_at') String get createdAt;@JsonKey(name: 'updated_at') String get updatedAt;
/// Create a copy of ChatThreadDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatThreadDtoCopyWith<ChatThreadDto> get copyWith => _$ChatThreadDtoCopyWithImpl<ChatThreadDto>(this as ChatThreadDto, _$identity);

  /// Serializes this ChatThreadDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatThreadDto&&(identical(other.id, id) || other.id == id)&&(identical(other.buyerId, buyerId) || other.buyerId == buyerId)&&(identical(other.sellerId, sellerId) || other.sellerId == sellerId)&&(identical(other.status, status) || other.status == status)&&(identical(other.listing, listing) || other.listing == listing)&&(identical(other.otherParticipant, otherParticipant) || other.otherParticipant == otherParticipant)&&(identical(other.lastMessageAt, lastMessageAt) || other.lastMessageAt == lastMessageAt)&&(identical(other.lastMessagePreview, lastMessagePreview) || other.lastMessagePreview == lastMessagePreview)&&(identical(other.unreadCount, unreadCount) || other.unreadCount == unreadCount)&&(identical(other.isArchived, isArchived) || other.isArchived == isArchived)&&(identical(other.lastReadMessageId, lastReadMessageId) || other.lastReadMessageId == lastReadMessageId)&&(identical(other.lastReadAt, lastReadAt) || other.lastReadAt == lastReadAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,buyerId,sellerId,status,listing,otherParticipant,lastMessageAt,lastMessagePreview,unreadCount,isArchived,lastReadMessageId,lastReadAt,createdAt,updatedAt);

@override
String toString() {
  return 'ChatThreadDto(id: $id, buyerId: $buyerId, sellerId: $sellerId, status: $status, listing: $listing, otherParticipant: $otherParticipant, lastMessageAt: $lastMessageAt, lastMessagePreview: $lastMessagePreview, unreadCount: $unreadCount, isArchived: $isArchived, lastReadMessageId: $lastReadMessageId, lastReadAt: $lastReadAt, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $ChatThreadDtoCopyWith<$Res>  {
  factory $ChatThreadDtoCopyWith(ChatThreadDto value, $Res Function(ChatThreadDto) _then) = _$ChatThreadDtoCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'buyer_id') int buyerId,@JsonKey(name: 'seller_id') int sellerId, String status, ChatListingSnapshotDto listing,@JsonKey(name: 'other_participant') ChatParticipantSummaryDto? otherParticipant,@JsonKey(name: 'last_message_at') String? lastMessageAt,@JsonKey(name: 'last_message_preview') String lastMessagePreview,@JsonKey(name: 'unread_count') int unreadCount,@JsonKey(name: 'is_archived') bool isArchived,@JsonKey(name: 'last_read_message_id') String? lastReadMessageId,@JsonKey(name: 'last_read_at') String? lastReadAt,@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'updated_at') String updatedAt
});


$ChatListingSnapshotDtoCopyWith<$Res> get listing;$ChatParticipantSummaryDtoCopyWith<$Res>? get otherParticipant;

}
/// @nodoc
class _$ChatThreadDtoCopyWithImpl<$Res>
    implements $ChatThreadDtoCopyWith<$Res> {
  _$ChatThreadDtoCopyWithImpl(this._self, this._then);

  final ChatThreadDto _self;
  final $Res Function(ChatThreadDto) _then;

/// Create a copy of ChatThreadDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? buyerId = null,Object? sellerId = null,Object? status = null,Object? listing = null,Object? otherParticipant = freezed,Object? lastMessageAt = freezed,Object? lastMessagePreview = null,Object? unreadCount = null,Object? isArchived = null,Object? lastReadMessageId = freezed,Object? lastReadAt = freezed,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,buyerId: null == buyerId ? _self.buyerId : buyerId // ignore: cast_nullable_to_non_nullable
as int,sellerId: null == sellerId ? _self.sellerId : sellerId // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,listing: null == listing ? _self.listing : listing // ignore: cast_nullable_to_non_nullable
as ChatListingSnapshotDto,otherParticipant: freezed == otherParticipant ? _self.otherParticipant : otherParticipant // ignore: cast_nullable_to_non_nullable
as ChatParticipantSummaryDto?,lastMessageAt: freezed == lastMessageAt ? _self.lastMessageAt : lastMessageAt // ignore: cast_nullable_to_non_nullable
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
/// Create a copy of ChatThreadDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatListingSnapshotDtoCopyWith<$Res> get listing {
  
  return $ChatListingSnapshotDtoCopyWith<$Res>(_self.listing, (value) {
    return _then(_self.copyWith(listing: value));
  });
}/// Create a copy of ChatThreadDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatParticipantSummaryDtoCopyWith<$Res>? get otherParticipant {
    if (_self.otherParticipant == null) {
    return null;
  }

  return $ChatParticipantSummaryDtoCopyWith<$Res>(_self.otherParticipant!, (value) {
    return _then(_self.copyWith(otherParticipant: value));
  });
}
}


/// Adds pattern-matching-related methods to [ChatThreadDto].
extension ChatThreadDtoPatterns on ChatThreadDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatThreadDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatThreadDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatThreadDto value)  $default,){
final _that = this;
switch (_that) {
case _ChatThreadDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatThreadDto value)?  $default,){
final _that = this;
switch (_that) {
case _ChatThreadDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'buyer_id')  int buyerId, @JsonKey(name: 'seller_id')  int sellerId,  String status,  ChatListingSnapshotDto listing, @JsonKey(name: 'other_participant')  ChatParticipantSummaryDto? otherParticipant, @JsonKey(name: 'last_message_at')  String? lastMessageAt, @JsonKey(name: 'last_message_preview')  String lastMessagePreview, @JsonKey(name: 'unread_count')  int unreadCount, @JsonKey(name: 'is_archived')  bool isArchived, @JsonKey(name: 'last_read_message_id')  String? lastReadMessageId, @JsonKey(name: 'last_read_at')  String? lastReadAt, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'updated_at')  String updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatThreadDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'buyer_id')  int buyerId, @JsonKey(name: 'seller_id')  int sellerId,  String status,  ChatListingSnapshotDto listing, @JsonKey(name: 'other_participant')  ChatParticipantSummaryDto? otherParticipant, @JsonKey(name: 'last_message_at')  String? lastMessageAt, @JsonKey(name: 'last_message_preview')  String lastMessagePreview, @JsonKey(name: 'unread_count')  int unreadCount, @JsonKey(name: 'is_archived')  bool isArchived, @JsonKey(name: 'last_read_message_id')  String? lastReadMessageId, @JsonKey(name: 'last_read_at')  String? lastReadAt, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'updated_at')  String updatedAt)  $default,) {final _that = this;
switch (_that) {
case _ChatThreadDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'buyer_id')  int buyerId, @JsonKey(name: 'seller_id')  int sellerId,  String status,  ChatListingSnapshotDto listing, @JsonKey(name: 'other_participant')  ChatParticipantSummaryDto? otherParticipant, @JsonKey(name: 'last_message_at')  String? lastMessageAt, @JsonKey(name: 'last_message_preview')  String lastMessagePreview, @JsonKey(name: 'unread_count')  int unreadCount, @JsonKey(name: 'is_archived')  bool isArchived, @JsonKey(name: 'last_read_message_id')  String? lastReadMessageId, @JsonKey(name: 'last_read_at')  String? lastReadAt, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'updated_at')  String updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _ChatThreadDto() when $default != null:
return $default(_that.id,_that.buyerId,_that.sellerId,_that.status,_that.listing,_that.otherParticipant,_that.lastMessageAt,_that.lastMessagePreview,_that.unreadCount,_that.isArchived,_that.lastReadMessageId,_that.lastReadAt,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatThreadDto implements ChatThreadDto {
  const _ChatThreadDto({required this.id, @JsonKey(name: 'buyer_id') required this.buyerId, @JsonKey(name: 'seller_id') required this.sellerId, required this.status, required this.listing, @JsonKey(name: 'other_participant') this.otherParticipant, @JsonKey(name: 'last_message_at') this.lastMessageAt, @JsonKey(name: 'last_message_preview') this.lastMessagePreview = '', @JsonKey(name: 'unread_count') this.unreadCount = 0, @JsonKey(name: 'is_archived') this.isArchived = false, @JsonKey(name: 'last_read_message_id') this.lastReadMessageId, @JsonKey(name: 'last_read_at') this.lastReadAt, @JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'updated_at') required this.updatedAt});
  factory _ChatThreadDto.fromJson(Map<String, dynamic> json) => _$ChatThreadDtoFromJson(json);

@override final  String id;
@override@JsonKey(name: 'buyer_id') final  int buyerId;
@override@JsonKey(name: 'seller_id') final  int sellerId;
@override final  String status;
// 'active', 'archived', 'closed'
@override final  ChatListingSnapshotDto listing;
@override@JsonKey(name: 'other_participant') final  ChatParticipantSummaryDto? otherParticipant;
@override@JsonKey(name: 'last_message_at') final  String? lastMessageAt;
@override@JsonKey(name: 'last_message_preview') final  String lastMessagePreview;
@override@JsonKey(name: 'unread_count') final  int unreadCount;
@override@JsonKey(name: 'is_archived') final  bool isArchived;
@override@JsonKey(name: 'last_read_message_id') final  String? lastReadMessageId;
@override@JsonKey(name: 'last_read_at') final  String? lastReadAt;
@override@JsonKey(name: 'created_at') final  String createdAt;
@override@JsonKey(name: 'updated_at') final  String updatedAt;

/// Create a copy of ChatThreadDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatThreadDtoCopyWith<_ChatThreadDto> get copyWith => __$ChatThreadDtoCopyWithImpl<_ChatThreadDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatThreadDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatThreadDto&&(identical(other.id, id) || other.id == id)&&(identical(other.buyerId, buyerId) || other.buyerId == buyerId)&&(identical(other.sellerId, sellerId) || other.sellerId == sellerId)&&(identical(other.status, status) || other.status == status)&&(identical(other.listing, listing) || other.listing == listing)&&(identical(other.otherParticipant, otherParticipant) || other.otherParticipant == otherParticipant)&&(identical(other.lastMessageAt, lastMessageAt) || other.lastMessageAt == lastMessageAt)&&(identical(other.lastMessagePreview, lastMessagePreview) || other.lastMessagePreview == lastMessagePreview)&&(identical(other.unreadCount, unreadCount) || other.unreadCount == unreadCount)&&(identical(other.isArchived, isArchived) || other.isArchived == isArchived)&&(identical(other.lastReadMessageId, lastReadMessageId) || other.lastReadMessageId == lastReadMessageId)&&(identical(other.lastReadAt, lastReadAt) || other.lastReadAt == lastReadAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,buyerId,sellerId,status,listing,otherParticipant,lastMessageAt,lastMessagePreview,unreadCount,isArchived,lastReadMessageId,lastReadAt,createdAt,updatedAt);

@override
String toString() {
  return 'ChatThreadDto(id: $id, buyerId: $buyerId, sellerId: $sellerId, status: $status, listing: $listing, otherParticipant: $otherParticipant, lastMessageAt: $lastMessageAt, lastMessagePreview: $lastMessagePreview, unreadCount: $unreadCount, isArchived: $isArchived, lastReadMessageId: $lastReadMessageId, lastReadAt: $lastReadAt, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$ChatThreadDtoCopyWith<$Res> implements $ChatThreadDtoCopyWith<$Res> {
  factory _$ChatThreadDtoCopyWith(_ChatThreadDto value, $Res Function(_ChatThreadDto) _then) = __$ChatThreadDtoCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'buyer_id') int buyerId,@JsonKey(name: 'seller_id') int sellerId, String status, ChatListingSnapshotDto listing,@JsonKey(name: 'other_participant') ChatParticipantSummaryDto? otherParticipant,@JsonKey(name: 'last_message_at') String? lastMessageAt,@JsonKey(name: 'last_message_preview') String lastMessagePreview,@JsonKey(name: 'unread_count') int unreadCount,@JsonKey(name: 'is_archived') bool isArchived,@JsonKey(name: 'last_read_message_id') String? lastReadMessageId,@JsonKey(name: 'last_read_at') String? lastReadAt,@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'updated_at') String updatedAt
});


@override $ChatListingSnapshotDtoCopyWith<$Res> get listing;@override $ChatParticipantSummaryDtoCopyWith<$Res>? get otherParticipant;

}
/// @nodoc
class __$ChatThreadDtoCopyWithImpl<$Res>
    implements _$ChatThreadDtoCopyWith<$Res> {
  __$ChatThreadDtoCopyWithImpl(this._self, this._then);

  final _ChatThreadDto _self;
  final $Res Function(_ChatThreadDto) _then;

/// Create a copy of ChatThreadDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? buyerId = null,Object? sellerId = null,Object? status = null,Object? listing = null,Object? otherParticipant = freezed,Object? lastMessageAt = freezed,Object? lastMessagePreview = null,Object? unreadCount = null,Object? isArchived = null,Object? lastReadMessageId = freezed,Object? lastReadAt = freezed,Object? createdAt = null,Object? updatedAt = null,}) {
  return _then(_ChatThreadDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,buyerId: null == buyerId ? _self.buyerId : buyerId // ignore: cast_nullable_to_non_nullable
as int,sellerId: null == sellerId ? _self.sellerId : sellerId // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,listing: null == listing ? _self.listing : listing // ignore: cast_nullable_to_non_nullable
as ChatListingSnapshotDto,otherParticipant: freezed == otherParticipant ? _self.otherParticipant : otherParticipant // ignore: cast_nullable_to_non_nullable
as ChatParticipantSummaryDto?,lastMessageAt: freezed == lastMessageAt ? _self.lastMessageAt : lastMessageAt // ignore: cast_nullable_to_non_nullable
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

/// Create a copy of ChatThreadDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatListingSnapshotDtoCopyWith<$Res> get listing {
  
  return $ChatListingSnapshotDtoCopyWith<$Res>(_self.listing, (value) {
    return _then(_self.copyWith(listing: value));
  });
}/// Create a copy of ChatThreadDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatParticipantSummaryDtoCopyWith<$Res>? get otherParticipant {
    if (_self.otherParticipant == null) {
    return null;
  }

  return $ChatParticipantSummaryDtoCopyWith<$Res>(_self.otherParticipant!, (value) {
    return _then(_self.copyWith(otherParticipant: value));
  });
}
}


/// @nodoc
mixin _$ChatAttachmentDto {

 String get type;// 'image', 'file'
 String get url; String? get name; int? get size;@JsonKey(name: 'content_type') String? get contentType; int? get width; int? get height;
/// Create a copy of ChatAttachmentDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatAttachmentDtoCopyWith<ChatAttachmentDto> get copyWith => _$ChatAttachmentDtoCopyWithImpl<ChatAttachmentDto>(this as ChatAttachmentDto, _$identity);

  /// Serializes this ChatAttachmentDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatAttachmentDto&&(identical(other.type, type) || other.type == type)&&(identical(other.url, url) || other.url == url)&&(identical(other.name, name) || other.name == name)&&(identical(other.size, size) || other.size == size)&&(identical(other.contentType, contentType) || other.contentType == contentType)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,url,name,size,contentType,width,height);

@override
String toString() {
  return 'ChatAttachmentDto(type: $type, url: $url, name: $name, size: $size, contentType: $contentType, width: $width, height: $height)';
}


}

/// @nodoc
abstract mixin class $ChatAttachmentDtoCopyWith<$Res>  {
  factory $ChatAttachmentDtoCopyWith(ChatAttachmentDto value, $Res Function(ChatAttachmentDto) _then) = _$ChatAttachmentDtoCopyWithImpl;
@useResult
$Res call({
 String type, String url, String? name, int? size,@JsonKey(name: 'content_type') String? contentType, int? width, int? height
});




}
/// @nodoc
class _$ChatAttachmentDtoCopyWithImpl<$Res>
    implements $ChatAttachmentDtoCopyWith<$Res> {
  _$ChatAttachmentDtoCopyWithImpl(this._self, this._then);

  final ChatAttachmentDto _self;
  final $Res Function(ChatAttachmentDto) _then;

/// Create a copy of ChatAttachmentDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? url = null,Object? name = freezed,Object? size = freezed,Object? contentType = freezed,Object? width = freezed,Object? height = freezed,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,size: freezed == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int?,contentType: freezed == contentType ? _self.contentType : contentType // ignore: cast_nullable_to_non_nullable
as String?,width: freezed == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as int?,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [ChatAttachmentDto].
extension ChatAttachmentDtoPatterns on ChatAttachmentDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatAttachmentDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatAttachmentDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatAttachmentDto value)  $default,){
final _that = this;
switch (_that) {
case _ChatAttachmentDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatAttachmentDto value)?  $default,){
final _that = this;
switch (_that) {
case _ChatAttachmentDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String type,  String url,  String? name,  int? size, @JsonKey(name: 'content_type')  String? contentType,  int? width,  int? height)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatAttachmentDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String type,  String url,  String? name,  int? size, @JsonKey(name: 'content_type')  String? contentType,  int? width,  int? height)  $default,) {final _that = this;
switch (_that) {
case _ChatAttachmentDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String type,  String url,  String? name,  int? size, @JsonKey(name: 'content_type')  String? contentType,  int? width,  int? height)?  $default,) {final _that = this;
switch (_that) {
case _ChatAttachmentDto() when $default != null:
return $default(_that.type,_that.url,_that.name,_that.size,_that.contentType,_that.width,_that.height);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatAttachmentDto implements ChatAttachmentDto {
  const _ChatAttachmentDto({required this.type, required this.url, this.name, this.size, @JsonKey(name: 'content_type') this.contentType, this.width, this.height});
  factory _ChatAttachmentDto.fromJson(Map<String, dynamic> json) => _$ChatAttachmentDtoFromJson(json);

@override final  String type;
// 'image', 'file'
@override final  String url;
@override final  String? name;
@override final  int? size;
@override@JsonKey(name: 'content_type') final  String? contentType;
@override final  int? width;
@override final  int? height;

/// Create a copy of ChatAttachmentDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatAttachmentDtoCopyWith<_ChatAttachmentDto> get copyWith => __$ChatAttachmentDtoCopyWithImpl<_ChatAttachmentDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatAttachmentDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatAttachmentDto&&(identical(other.type, type) || other.type == type)&&(identical(other.url, url) || other.url == url)&&(identical(other.name, name) || other.name == name)&&(identical(other.size, size) || other.size == size)&&(identical(other.contentType, contentType) || other.contentType == contentType)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,type,url,name,size,contentType,width,height);

@override
String toString() {
  return 'ChatAttachmentDto(type: $type, url: $url, name: $name, size: $size, contentType: $contentType, width: $width, height: $height)';
}


}

/// @nodoc
abstract mixin class _$ChatAttachmentDtoCopyWith<$Res> implements $ChatAttachmentDtoCopyWith<$Res> {
  factory _$ChatAttachmentDtoCopyWith(_ChatAttachmentDto value, $Res Function(_ChatAttachmentDto) _then) = __$ChatAttachmentDtoCopyWithImpl;
@override @useResult
$Res call({
 String type, String url, String? name, int? size,@JsonKey(name: 'content_type') String? contentType, int? width, int? height
});




}
/// @nodoc
class __$ChatAttachmentDtoCopyWithImpl<$Res>
    implements _$ChatAttachmentDtoCopyWith<$Res> {
  __$ChatAttachmentDtoCopyWithImpl(this._self, this._then);

  final _ChatAttachmentDto _self;
  final $Res Function(_ChatAttachmentDto) _then;

/// Create a copy of ChatAttachmentDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? url = null,Object? name = freezed,Object? size = freezed,Object? contentType = freezed,Object? width = freezed,Object? height = freezed,}) {
  return _then(_ChatAttachmentDto(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
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
mixin _$ChatMessageDto {

 String get id;@JsonKey(name: 'thread_id') String get threadId;@JsonKey(name: 'sender_id') int get senderId;@JsonKey(name: 'sender_display_name') String get senderDisplayName; String get body; List<ChatAttachmentDto> get attachments; Map<String, dynamic> get metadata;@JsonKey(name: 'client_message_id') String? get clientMessageId;@JsonKey(name: 'created_at') String get createdAt;@JsonKey(name: 'edited_at') String? get editedAt;@JsonKey(name: 'deleted_at') String? get deletedAt;@JsonKey(name: 'is_deleted') bool get isDeleted;
/// Create a copy of ChatMessageDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatMessageDtoCopyWith<ChatMessageDto> get copyWith => _$ChatMessageDtoCopyWithImpl<ChatMessageDto>(this as ChatMessageDto, _$identity);

  /// Serializes this ChatMessageDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatMessageDto&&(identical(other.id, id) || other.id == id)&&(identical(other.threadId, threadId) || other.threadId == threadId)&&(identical(other.senderId, senderId) || other.senderId == senderId)&&(identical(other.senderDisplayName, senderDisplayName) || other.senderDisplayName == senderDisplayName)&&(identical(other.body, body) || other.body == body)&&const DeepCollectionEquality().equals(other.attachments, attachments)&&const DeepCollectionEquality().equals(other.metadata, metadata)&&(identical(other.clientMessageId, clientMessageId) || other.clientMessageId == clientMessageId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.editedAt, editedAt) || other.editedAt == editedAt)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,threadId,senderId,senderDisplayName,body,const DeepCollectionEquality().hash(attachments),const DeepCollectionEquality().hash(metadata),clientMessageId,createdAt,editedAt,deletedAt,isDeleted);

@override
String toString() {
  return 'ChatMessageDto(id: $id, threadId: $threadId, senderId: $senderId, senderDisplayName: $senderDisplayName, body: $body, attachments: $attachments, metadata: $metadata, clientMessageId: $clientMessageId, createdAt: $createdAt, editedAt: $editedAt, deletedAt: $deletedAt, isDeleted: $isDeleted)';
}


}

/// @nodoc
abstract mixin class $ChatMessageDtoCopyWith<$Res>  {
  factory $ChatMessageDtoCopyWith(ChatMessageDto value, $Res Function(ChatMessageDto) _then) = _$ChatMessageDtoCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'thread_id') String threadId,@JsonKey(name: 'sender_id') int senderId,@JsonKey(name: 'sender_display_name') String senderDisplayName, String body, List<ChatAttachmentDto> attachments, Map<String, dynamic> metadata,@JsonKey(name: 'client_message_id') String? clientMessageId,@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'edited_at') String? editedAt,@JsonKey(name: 'deleted_at') String? deletedAt,@JsonKey(name: 'is_deleted') bool isDeleted
});




}
/// @nodoc
class _$ChatMessageDtoCopyWithImpl<$Res>
    implements $ChatMessageDtoCopyWith<$Res> {
  _$ChatMessageDtoCopyWithImpl(this._self, this._then);

  final ChatMessageDto _self;
  final $Res Function(ChatMessageDto) _then;

/// Create a copy of ChatMessageDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? threadId = null,Object? senderId = null,Object? senderDisplayName = null,Object? body = null,Object? attachments = null,Object? metadata = null,Object? clientMessageId = freezed,Object? createdAt = null,Object? editedAt = freezed,Object? deletedAt = freezed,Object? isDeleted = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,threadId: null == threadId ? _self.threadId : threadId // ignore: cast_nullable_to_non_nullable
as String,senderId: null == senderId ? _self.senderId : senderId // ignore: cast_nullable_to_non_nullable
as int,senderDisplayName: null == senderDisplayName ? _self.senderDisplayName : senderDisplayName // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,attachments: null == attachments ? _self.attachments : attachments // ignore: cast_nullable_to_non_nullable
as List<ChatAttachmentDto>,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,clientMessageId: freezed == clientMessageId ? _self.clientMessageId : clientMessageId // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,editedAt: freezed == editedAt ? _self.editedAt : editedAt // ignore: cast_nullable_to_non_nullable
as String?,deletedAt: freezed == deletedAt ? _self.deletedAt : deletedAt // ignore: cast_nullable_to_non_nullable
as String?,isDeleted: null == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ChatMessageDto].
extension ChatMessageDtoPatterns on ChatMessageDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatMessageDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatMessageDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatMessageDto value)  $default,){
final _that = this;
switch (_that) {
case _ChatMessageDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatMessageDto value)?  $default,){
final _that = this;
switch (_that) {
case _ChatMessageDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'thread_id')  String threadId, @JsonKey(name: 'sender_id')  int senderId, @JsonKey(name: 'sender_display_name')  String senderDisplayName,  String body,  List<ChatAttachmentDto> attachments,  Map<String, dynamic> metadata, @JsonKey(name: 'client_message_id')  String? clientMessageId, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'edited_at')  String? editedAt, @JsonKey(name: 'deleted_at')  String? deletedAt, @JsonKey(name: 'is_deleted')  bool isDeleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatMessageDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'thread_id')  String threadId, @JsonKey(name: 'sender_id')  int senderId, @JsonKey(name: 'sender_display_name')  String senderDisplayName,  String body,  List<ChatAttachmentDto> attachments,  Map<String, dynamic> metadata, @JsonKey(name: 'client_message_id')  String? clientMessageId, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'edited_at')  String? editedAt, @JsonKey(name: 'deleted_at')  String? deletedAt, @JsonKey(name: 'is_deleted')  bool isDeleted)  $default,) {final _that = this;
switch (_that) {
case _ChatMessageDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'thread_id')  String threadId, @JsonKey(name: 'sender_id')  int senderId, @JsonKey(name: 'sender_display_name')  String senderDisplayName,  String body,  List<ChatAttachmentDto> attachments,  Map<String, dynamic> metadata, @JsonKey(name: 'client_message_id')  String? clientMessageId, @JsonKey(name: 'created_at')  String createdAt, @JsonKey(name: 'edited_at')  String? editedAt, @JsonKey(name: 'deleted_at')  String? deletedAt, @JsonKey(name: 'is_deleted')  bool isDeleted)?  $default,) {final _that = this;
switch (_that) {
case _ChatMessageDto() when $default != null:
return $default(_that.id,_that.threadId,_that.senderId,_that.senderDisplayName,_that.body,_that.attachments,_that.metadata,_that.clientMessageId,_that.createdAt,_that.editedAt,_that.deletedAt,_that.isDeleted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatMessageDto implements ChatMessageDto {
  const _ChatMessageDto({required this.id, @JsonKey(name: 'thread_id') required this.threadId, @JsonKey(name: 'sender_id') required this.senderId, @JsonKey(name: 'sender_display_name') required this.senderDisplayName, required this.body, final  List<ChatAttachmentDto> attachments = const [], final  Map<String, dynamic> metadata = const {}, @JsonKey(name: 'client_message_id') this.clientMessageId, @JsonKey(name: 'created_at') required this.createdAt, @JsonKey(name: 'edited_at') this.editedAt, @JsonKey(name: 'deleted_at') this.deletedAt, @JsonKey(name: 'is_deleted') this.isDeleted = false}): _attachments = attachments,_metadata = metadata;
  factory _ChatMessageDto.fromJson(Map<String, dynamic> json) => _$ChatMessageDtoFromJson(json);

@override final  String id;
@override@JsonKey(name: 'thread_id') final  String threadId;
@override@JsonKey(name: 'sender_id') final  int senderId;
@override@JsonKey(name: 'sender_display_name') final  String senderDisplayName;
@override final  String body;
 final  List<ChatAttachmentDto> _attachments;
@override@JsonKey() List<ChatAttachmentDto> get attachments {
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

@override@JsonKey(name: 'client_message_id') final  String? clientMessageId;
@override@JsonKey(name: 'created_at') final  String createdAt;
@override@JsonKey(name: 'edited_at') final  String? editedAt;
@override@JsonKey(name: 'deleted_at') final  String? deletedAt;
@override@JsonKey(name: 'is_deleted') final  bool isDeleted;

/// Create a copy of ChatMessageDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatMessageDtoCopyWith<_ChatMessageDto> get copyWith => __$ChatMessageDtoCopyWithImpl<_ChatMessageDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatMessageDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatMessageDto&&(identical(other.id, id) || other.id == id)&&(identical(other.threadId, threadId) || other.threadId == threadId)&&(identical(other.senderId, senderId) || other.senderId == senderId)&&(identical(other.senderDisplayName, senderDisplayName) || other.senderDisplayName == senderDisplayName)&&(identical(other.body, body) || other.body == body)&&const DeepCollectionEquality().equals(other._attachments, _attachments)&&const DeepCollectionEquality().equals(other._metadata, _metadata)&&(identical(other.clientMessageId, clientMessageId) || other.clientMessageId == clientMessageId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.editedAt, editedAt) || other.editedAt == editedAt)&&(identical(other.deletedAt, deletedAt) || other.deletedAt == deletedAt)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,threadId,senderId,senderDisplayName,body,const DeepCollectionEquality().hash(_attachments),const DeepCollectionEquality().hash(_metadata),clientMessageId,createdAt,editedAt,deletedAt,isDeleted);

@override
String toString() {
  return 'ChatMessageDto(id: $id, threadId: $threadId, senderId: $senderId, senderDisplayName: $senderDisplayName, body: $body, attachments: $attachments, metadata: $metadata, clientMessageId: $clientMessageId, createdAt: $createdAt, editedAt: $editedAt, deletedAt: $deletedAt, isDeleted: $isDeleted)';
}


}

/// @nodoc
abstract mixin class _$ChatMessageDtoCopyWith<$Res> implements $ChatMessageDtoCopyWith<$Res> {
  factory _$ChatMessageDtoCopyWith(_ChatMessageDto value, $Res Function(_ChatMessageDto) _then) = __$ChatMessageDtoCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'thread_id') String threadId,@JsonKey(name: 'sender_id') int senderId,@JsonKey(name: 'sender_display_name') String senderDisplayName, String body, List<ChatAttachmentDto> attachments, Map<String, dynamic> metadata,@JsonKey(name: 'client_message_id') String? clientMessageId,@JsonKey(name: 'created_at') String createdAt,@JsonKey(name: 'edited_at') String? editedAt,@JsonKey(name: 'deleted_at') String? deletedAt,@JsonKey(name: 'is_deleted') bool isDeleted
});




}
/// @nodoc
class __$ChatMessageDtoCopyWithImpl<$Res>
    implements _$ChatMessageDtoCopyWith<$Res> {
  __$ChatMessageDtoCopyWithImpl(this._self, this._then);

  final _ChatMessageDto _self;
  final $Res Function(_ChatMessageDto) _then;

/// Create a copy of ChatMessageDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? threadId = null,Object? senderId = null,Object? senderDisplayName = null,Object? body = null,Object? attachments = null,Object? metadata = null,Object? clientMessageId = freezed,Object? createdAt = null,Object? editedAt = freezed,Object? deletedAt = freezed,Object? isDeleted = null,}) {
  return _then(_ChatMessageDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,threadId: null == threadId ? _self.threadId : threadId // ignore: cast_nullable_to_non_nullable
as String,senderId: null == senderId ? _self.senderId : senderId // ignore: cast_nullable_to_non_nullable
as int,senderDisplayName: null == senderDisplayName ? _self.senderDisplayName : senderDisplayName // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,attachments: null == attachments ? _self._attachments : attachments // ignore: cast_nullable_to_non_nullable
as List<ChatAttachmentDto>,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
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
mixin _$ChatMessagePageDto {

 List<ChatMessageDto> get messages;@JsonKey(name: 'has_more') bool get hasMore;
/// Create a copy of ChatMessagePageDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatMessagePageDtoCopyWith<ChatMessagePageDto> get copyWith => _$ChatMessagePageDtoCopyWithImpl<ChatMessagePageDto>(this as ChatMessagePageDto, _$identity);

  /// Serializes this ChatMessagePageDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChatMessagePageDto&&const DeepCollectionEquality().equals(other.messages, messages)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(messages),hasMore);

@override
String toString() {
  return 'ChatMessagePageDto(messages: $messages, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class $ChatMessagePageDtoCopyWith<$Res>  {
  factory $ChatMessagePageDtoCopyWith(ChatMessagePageDto value, $Res Function(ChatMessagePageDto) _then) = _$ChatMessagePageDtoCopyWithImpl;
@useResult
$Res call({
 List<ChatMessageDto> messages,@JsonKey(name: 'has_more') bool hasMore
});




}
/// @nodoc
class _$ChatMessagePageDtoCopyWithImpl<$Res>
    implements $ChatMessagePageDtoCopyWith<$Res> {
  _$ChatMessagePageDtoCopyWithImpl(this._self, this._then);

  final ChatMessagePageDto _self;
  final $Res Function(ChatMessagePageDto) _then;

/// Create a copy of ChatMessagePageDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? messages = null,Object? hasMore = null,}) {
  return _then(_self.copyWith(
messages: null == messages ? _self.messages : messages // ignore: cast_nullable_to_non_nullable
as List<ChatMessageDto>,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ChatMessagePageDto].
extension ChatMessagePageDtoPatterns on ChatMessagePageDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChatMessagePageDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChatMessagePageDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChatMessagePageDto value)  $default,){
final _that = this;
switch (_that) {
case _ChatMessagePageDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChatMessagePageDto value)?  $default,){
final _that = this;
switch (_that) {
case _ChatMessagePageDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ChatMessageDto> messages, @JsonKey(name: 'has_more')  bool hasMore)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChatMessagePageDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ChatMessageDto> messages, @JsonKey(name: 'has_more')  bool hasMore)  $default,) {final _that = this;
switch (_that) {
case _ChatMessagePageDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ChatMessageDto> messages, @JsonKey(name: 'has_more')  bool hasMore)?  $default,) {final _that = this;
switch (_that) {
case _ChatMessagePageDto() when $default != null:
return $default(_that.messages,_that.hasMore);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ChatMessagePageDto implements ChatMessagePageDto {
  const _ChatMessagePageDto({final  List<ChatMessageDto> messages = const [], @JsonKey(name: 'has_more') this.hasMore = false}): _messages = messages;
  factory _ChatMessagePageDto.fromJson(Map<String, dynamic> json) => _$ChatMessagePageDtoFromJson(json);

 final  List<ChatMessageDto> _messages;
@override@JsonKey() List<ChatMessageDto> get messages {
  if (_messages is EqualUnmodifiableListView) return _messages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_messages);
}

@override@JsonKey(name: 'has_more') final  bool hasMore;

/// Create a copy of ChatMessagePageDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatMessagePageDtoCopyWith<_ChatMessagePageDto> get copyWith => __$ChatMessagePageDtoCopyWithImpl<_ChatMessagePageDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatMessagePageDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChatMessagePageDto&&const DeepCollectionEquality().equals(other._messages, _messages)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_messages),hasMore);

@override
String toString() {
  return 'ChatMessagePageDto(messages: $messages, hasMore: $hasMore)';
}


}

/// @nodoc
abstract mixin class _$ChatMessagePageDtoCopyWith<$Res> implements $ChatMessagePageDtoCopyWith<$Res> {
  factory _$ChatMessagePageDtoCopyWith(_ChatMessagePageDto value, $Res Function(_ChatMessagePageDto) _then) = __$ChatMessagePageDtoCopyWithImpl;
@override @useResult
$Res call({
 List<ChatMessageDto> messages,@JsonKey(name: 'has_more') bool hasMore
});




}
/// @nodoc
class __$ChatMessagePageDtoCopyWithImpl<$Res>
    implements _$ChatMessagePageDtoCopyWith<$Res> {
  __$ChatMessagePageDtoCopyWithImpl(this._self, this._then);

  final _ChatMessagePageDto _self;
  final $Res Function(_ChatMessagePageDto) _then;

/// Create a copy of ChatMessagePageDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? messages = null,Object? hasMore = null,}) {
  return _then(_ChatMessagePageDto(
messages: null == messages ? _self._messages : messages // ignore: cast_nullable_to_non_nullable
as List<ChatMessageDto>,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$CreateThreadRequestDto {

@JsonKey(name: 'listing_id') int get listingId; String? get message;@JsonKey(name: 'client_message_id') String? get clientMessageId; List<ChatAttachmentDto>? get attachments;
/// Create a copy of CreateThreadRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateThreadRequestDtoCopyWith<CreateThreadRequestDto> get copyWith => _$CreateThreadRequestDtoCopyWithImpl<CreateThreadRequestDto>(this as CreateThreadRequestDto, _$identity);

  /// Serializes this CreateThreadRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateThreadRequestDto&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.message, message) || other.message == message)&&(identical(other.clientMessageId, clientMessageId) || other.clientMessageId == clientMessageId)&&const DeepCollectionEquality().equals(other.attachments, attachments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,listingId,message,clientMessageId,const DeepCollectionEquality().hash(attachments));

@override
String toString() {
  return 'CreateThreadRequestDto(listingId: $listingId, message: $message, clientMessageId: $clientMessageId, attachments: $attachments)';
}


}

/// @nodoc
abstract mixin class $CreateThreadRequestDtoCopyWith<$Res>  {
  factory $CreateThreadRequestDtoCopyWith(CreateThreadRequestDto value, $Res Function(CreateThreadRequestDto) _then) = _$CreateThreadRequestDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'listing_id') int listingId, String? message,@JsonKey(name: 'client_message_id') String? clientMessageId, List<ChatAttachmentDto>? attachments
});




}
/// @nodoc
class _$CreateThreadRequestDtoCopyWithImpl<$Res>
    implements $CreateThreadRequestDtoCopyWith<$Res> {
  _$CreateThreadRequestDtoCopyWithImpl(this._self, this._then);

  final CreateThreadRequestDto _self;
  final $Res Function(CreateThreadRequestDto) _then;

/// Create a copy of CreateThreadRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? listingId = null,Object? message = freezed,Object? clientMessageId = freezed,Object? attachments = freezed,}) {
  return _then(_self.copyWith(
listingId: null == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as int,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,clientMessageId: freezed == clientMessageId ? _self.clientMessageId : clientMessageId // ignore: cast_nullable_to_non_nullable
as String?,attachments: freezed == attachments ? _self.attachments : attachments // ignore: cast_nullable_to_non_nullable
as List<ChatAttachmentDto>?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateThreadRequestDto].
extension CreateThreadRequestDtoPatterns on CreateThreadRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateThreadRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateThreadRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateThreadRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _CreateThreadRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateThreadRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _CreateThreadRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'listing_id')  int listingId,  String? message, @JsonKey(name: 'client_message_id')  String? clientMessageId,  List<ChatAttachmentDto>? attachments)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateThreadRequestDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'listing_id')  int listingId,  String? message, @JsonKey(name: 'client_message_id')  String? clientMessageId,  List<ChatAttachmentDto>? attachments)  $default,) {final _that = this;
switch (_that) {
case _CreateThreadRequestDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'listing_id')  int listingId,  String? message, @JsonKey(name: 'client_message_id')  String? clientMessageId,  List<ChatAttachmentDto>? attachments)?  $default,) {final _that = this;
switch (_that) {
case _CreateThreadRequestDto() when $default != null:
return $default(_that.listingId,_that.message,_that.clientMessageId,_that.attachments);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateThreadRequestDto implements CreateThreadRequestDto {
  const _CreateThreadRequestDto({@JsonKey(name: 'listing_id') required this.listingId, this.message, @JsonKey(name: 'client_message_id') this.clientMessageId, final  List<ChatAttachmentDto>? attachments}): _attachments = attachments;
  factory _CreateThreadRequestDto.fromJson(Map<String, dynamic> json) => _$CreateThreadRequestDtoFromJson(json);

@override@JsonKey(name: 'listing_id') final  int listingId;
@override final  String? message;
@override@JsonKey(name: 'client_message_id') final  String? clientMessageId;
 final  List<ChatAttachmentDto>? _attachments;
@override List<ChatAttachmentDto>? get attachments {
  final value = _attachments;
  if (value == null) return null;
  if (_attachments is EqualUnmodifiableListView) return _attachments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of CreateThreadRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateThreadRequestDtoCopyWith<_CreateThreadRequestDto> get copyWith => __$CreateThreadRequestDtoCopyWithImpl<_CreateThreadRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateThreadRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateThreadRequestDto&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.message, message) || other.message == message)&&(identical(other.clientMessageId, clientMessageId) || other.clientMessageId == clientMessageId)&&const DeepCollectionEquality().equals(other._attachments, _attachments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,listingId,message,clientMessageId,const DeepCollectionEquality().hash(_attachments));

@override
String toString() {
  return 'CreateThreadRequestDto(listingId: $listingId, message: $message, clientMessageId: $clientMessageId, attachments: $attachments)';
}


}

/// @nodoc
abstract mixin class _$CreateThreadRequestDtoCopyWith<$Res> implements $CreateThreadRequestDtoCopyWith<$Res> {
  factory _$CreateThreadRequestDtoCopyWith(_CreateThreadRequestDto value, $Res Function(_CreateThreadRequestDto) _then) = __$CreateThreadRequestDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'listing_id') int listingId, String? message,@JsonKey(name: 'client_message_id') String? clientMessageId, List<ChatAttachmentDto>? attachments
});




}
/// @nodoc
class __$CreateThreadRequestDtoCopyWithImpl<$Res>
    implements _$CreateThreadRequestDtoCopyWith<$Res> {
  __$CreateThreadRequestDtoCopyWithImpl(this._self, this._then);

  final _CreateThreadRequestDto _self;
  final $Res Function(_CreateThreadRequestDto) _then;

/// Create a copy of CreateThreadRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? listingId = null,Object? message = freezed,Object? clientMessageId = freezed,Object? attachments = freezed,}) {
  return _then(_CreateThreadRequestDto(
listingId: null == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as int,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,clientMessageId: freezed == clientMessageId ? _self.clientMessageId : clientMessageId // ignore: cast_nullable_to_non_nullable
as String?,attachments: freezed == attachments ? _self._attachments : attachments // ignore: cast_nullable_to_non_nullable
as List<ChatAttachmentDto>?,
  ));
}


}


/// @nodoc
mixin _$SendMessageRequestDto {

 String? get body;@JsonKey(name: 'client_message_id') String? get clientMessageId; Map<String, dynamic>? get metadata; List<ChatAttachmentDto>? get attachments;
/// Create a copy of SendMessageRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SendMessageRequestDtoCopyWith<SendMessageRequestDto> get copyWith => _$SendMessageRequestDtoCopyWithImpl<SendMessageRequestDto>(this as SendMessageRequestDto, _$identity);

  /// Serializes this SendMessageRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendMessageRequestDto&&(identical(other.body, body) || other.body == body)&&(identical(other.clientMessageId, clientMessageId) || other.clientMessageId == clientMessageId)&&const DeepCollectionEquality().equals(other.metadata, metadata)&&const DeepCollectionEquality().equals(other.attachments, attachments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,body,clientMessageId,const DeepCollectionEquality().hash(metadata),const DeepCollectionEquality().hash(attachments));

@override
String toString() {
  return 'SendMessageRequestDto(body: $body, clientMessageId: $clientMessageId, metadata: $metadata, attachments: $attachments)';
}


}

/// @nodoc
abstract mixin class $SendMessageRequestDtoCopyWith<$Res>  {
  factory $SendMessageRequestDtoCopyWith(SendMessageRequestDto value, $Res Function(SendMessageRequestDto) _then) = _$SendMessageRequestDtoCopyWithImpl;
@useResult
$Res call({
 String? body,@JsonKey(name: 'client_message_id') String? clientMessageId, Map<String, dynamic>? metadata, List<ChatAttachmentDto>? attachments
});




}
/// @nodoc
class _$SendMessageRequestDtoCopyWithImpl<$Res>
    implements $SendMessageRequestDtoCopyWith<$Res> {
  _$SendMessageRequestDtoCopyWithImpl(this._self, this._then);

  final SendMessageRequestDto _self;
  final $Res Function(SendMessageRequestDto) _then;

/// Create a copy of SendMessageRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? body = freezed,Object? clientMessageId = freezed,Object? metadata = freezed,Object? attachments = freezed,}) {
  return _then(_self.copyWith(
body: freezed == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String?,clientMessageId: freezed == clientMessageId ? _self.clientMessageId : clientMessageId // ignore: cast_nullable_to_non_nullable
as String?,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,attachments: freezed == attachments ? _self.attachments : attachments // ignore: cast_nullable_to_non_nullable
as List<ChatAttachmentDto>?,
  ));
}

}


/// Adds pattern-matching-related methods to [SendMessageRequestDto].
extension SendMessageRequestDtoPatterns on SendMessageRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SendMessageRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SendMessageRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SendMessageRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _SendMessageRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SendMessageRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _SendMessageRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? body, @JsonKey(name: 'client_message_id')  String? clientMessageId,  Map<String, dynamic>? metadata,  List<ChatAttachmentDto>? attachments)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SendMessageRequestDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? body, @JsonKey(name: 'client_message_id')  String? clientMessageId,  Map<String, dynamic>? metadata,  List<ChatAttachmentDto>? attachments)  $default,) {final _that = this;
switch (_that) {
case _SendMessageRequestDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? body, @JsonKey(name: 'client_message_id')  String? clientMessageId,  Map<String, dynamic>? metadata,  List<ChatAttachmentDto>? attachments)?  $default,) {final _that = this;
switch (_that) {
case _SendMessageRequestDto() when $default != null:
return $default(_that.body,_that.clientMessageId,_that.metadata,_that.attachments);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SendMessageRequestDto implements SendMessageRequestDto {
  const _SendMessageRequestDto({this.body, @JsonKey(name: 'client_message_id') this.clientMessageId, final  Map<String, dynamic>? metadata, final  List<ChatAttachmentDto>? attachments}): _metadata = metadata,_attachments = attachments;
  factory _SendMessageRequestDto.fromJson(Map<String, dynamic> json) => _$SendMessageRequestDtoFromJson(json);

@override final  String? body;
@override@JsonKey(name: 'client_message_id') final  String? clientMessageId;
 final  Map<String, dynamic>? _metadata;
@override Map<String, dynamic>? get metadata {
  final value = _metadata;
  if (value == null) return null;
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  List<ChatAttachmentDto>? _attachments;
@override List<ChatAttachmentDto>? get attachments {
  final value = _attachments;
  if (value == null) return null;
  if (_attachments is EqualUnmodifiableListView) return _attachments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of SendMessageRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SendMessageRequestDtoCopyWith<_SendMessageRequestDto> get copyWith => __$SendMessageRequestDtoCopyWithImpl<_SendMessageRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SendMessageRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SendMessageRequestDto&&(identical(other.body, body) || other.body == body)&&(identical(other.clientMessageId, clientMessageId) || other.clientMessageId == clientMessageId)&&const DeepCollectionEquality().equals(other._metadata, _metadata)&&const DeepCollectionEquality().equals(other._attachments, _attachments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,body,clientMessageId,const DeepCollectionEquality().hash(_metadata),const DeepCollectionEquality().hash(_attachments));

@override
String toString() {
  return 'SendMessageRequestDto(body: $body, clientMessageId: $clientMessageId, metadata: $metadata, attachments: $attachments)';
}


}

/// @nodoc
abstract mixin class _$SendMessageRequestDtoCopyWith<$Res> implements $SendMessageRequestDtoCopyWith<$Res> {
  factory _$SendMessageRequestDtoCopyWith(_SendMessageRequestDto value, $Res Function(_SendMessageRequestDto) _then) = __$SendMessageRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String? body,@JsonKey(name: 'client_message_id') String? clientMessageId, Map<String, dynamic>? metadata, List<ChatAttachmentDto>? attachments
});




}
/// @nodoc
class __$SendMessageRequestDtoCopyWithImpl<$Res>
    implements _$SendMessageRequestDtoCopyWith<$Res> {
  __$SendMessageRequestDtoCopyWithImpl(this._self, this._then);

  final _SendMessageRequestDto _self;
  final $Res Function(_SendMessageRequestDto) _then;

/// Create a copy of SendMessageRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? body = freezed,Object? clientMessageId = freezed,Object? metadata = freezed,Object? attachments = freezed,}) {
  return _then(_SendMessageRequestDto(
body: freezed == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String?,clientMessageId: freezed == clientMessageId ? _self.clientMessageId : clientMessageId // ignore: cast_nullable_to_non_nullable
as String?,metadata: freezed == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,attachments: freezed == attachments ? _self._attachments : attachments // ignore: cast_nullable_to_non_nullable
as List<ChatAttachmentDto>?,
  ));
}


}


/// @nodoc
mixin _$MarkReadRequestDto {

@JsonKey(name: 'message_id') String? get messageId;
/// Create a copy of MarkReadRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MarkReadRequestDtoCopyWith<MarkReadRequestDto> get copyWith => _$MarkReadRequestDtoCopyWithImpl<MarkReadRequestDto>(this as MarkReadRequestDto, _$identity);

  /// Serializes this MarkReadRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MarkReadRequestDto&&(identical(other.messageId, messageId) || other.messageId == messageId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,messageId);

@override
String toString() {
  return 'MarkReadRequestDto(messageId: $messageId)';
}


}

/// @nodoc
abstract mixin class $MarkReadRequestDtoCopyWith<$Res>  {
  factory $MarkReadRequestDtoCopyWith(MarkReadRequestDto value, $Res Function(MarkReadRequestDto) _then) = _$MarkReadRequestDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'message_id') String? messageId
});




}
/// @nodoc
class _$MarkReadRequestDtoCopyWithImpl<$Res>
    implements $MarkReadRequestDtoCopyWith<$Res> {
  _$MarkReadRequestDtoCopyWithImpl(this._self, this._then);

  final MarkReadRequestDto _self;
  final $Res Function(MarkReadRequestDto) _then;

/// Create a copy of MarkReadRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? messageId = freezed,}) {
  return _then(_self.copyWith(
messageId: freezed == messageId ? _self.messageId : messageId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MarkReadRequestDto].
extension MarkReadRequestDtoPatterns on MarkReadRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MarkReadRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MarkReadRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MarkReadRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _MarkReadRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MarkReadRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _MarkReadRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'message_id')  String? messageId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MarkReadRequestDto() when $default != null:
return $default(_that.messageId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'message_id')  String? messageId)  $default,) {final _that = this;
switch (_that) {
case _MarkReadRequestDto():
return $default(_that.messageId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'message_id')  String? messageId)?  $default,) {final _that = this;
switch (_that) {
case _MarkReadRequestDto() when $default != null:
return $default(_that.messageId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MarkReadRequestDto implements MarkReadRequestDto {
  const _MarkReadRequestDto({@JsonKey(name: 'message_id') this.messageId});
  factory _MarkReadRequestDto.fromJson(Map<String, dynamic> json) => _$MarkReadRequestDtoFromJson(json);

@override@JsonKey(name: 'message_id') final  String? messageId;

/// Create a copy of MarkReadRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MarkReadRequestDtoCopyWith<_MarkReadRequestDto> get copyWith => __$MarkReadRequestDtoCopyWithImpl<_MarkReadRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MarkReadRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MarkReadRequestDto&&(identical(other.messageId, messageId) || other.messageId == messageId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,messageId);

@override
String toString() {
  return 'MarkReadRequestDto(messageId: $messageId)';
}


}

/// @nodoc
abstract mixin class _$MarkReadRequestDtoCopyWith<$Res> implements $MarkReadRequestDtoCopyWith<$Res> {
  factory _$MarkReadRequestDtoCopyWith(_MarkReadRequestDto value, $Res Function(_MarkReadRequestDto) _then) = __$MarkReadRequestDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'message_id') String? messageId
});




}
/// @nodoc
class __$MarkReadRequestDtoCopyWithImpl<$Res>
    implements _$MarkReadRequestDtoCopyWith<$Res> {
  __$MarkReadRequestDtoCopyWithImpl(this._self, this._then);

  final _MarkReadRequestDto _self;
  final $Res Function(_MarkReadRequestDto) _then;

/// Create a copy of MarkReadRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? messageId = freezed,}) {
  return _then(_MarkReadRequestDto(
messageId: freezed == messageId ? _self.messageId : messageId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$SyncAvailabilityResultDto {

 int get synced; int get updated;
/// Create a copy of SyncAvailabilityResultDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SyncAvailabilityResultDtoCopyWith<SyncAvailabilityResultDto> get copyWith => _$SyncAvailabilityResultDtoCopyWithImpl<SyncAvailabilityResultDto>(this as SyncAvailabilityResultDto, _$identity);

  /// Serializes this SyncAvailabilityResultDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SyncAvailabilityResultDto&&(identical(other.synced, synced) || other.synced == synced)&&(identical(other.updated, updated) || other.updated == updated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,synced,updated);

@override
String toString() {
  return 'SyncAvailabilityResultDto(synced: $synced, updated: $updated)';
}


}

/// @nodoc
abstract mixin class $SyncAvailabilityResultDtoCopyWith<$Res>  {
  factory $SyncAvailabilityResultDtoCopyWith(SyncAvailabilityResultDto value, $Res Function(SyncAvailabilityResultDto) _then) = _$SyncAvailabilityResultDtoCopyWithImpl;
@useResult
$Res call({
 int synced, int updated
});




}
/// @nodoc
class _$SyncAvailabilityResultDtoCopyWithImpl<$Res>
    implements $SyncAvailabilityResultDtoCopyWith<$Res> {
  _$SyncAvailabilityResultDtoCopyWithImpl(this._self, this._then);

  final SyncAvailabilityResultDto _self;
  final $Res Function(SyncAvailabilityResultDto) _then;

/// Create a copy of SyncAvailabilityResultDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? synced = null,Object? updated = null,}) {
  return _then(_self.copyWith(
synced: null == synced ? _self.synced : synced // ignore: cast_nullable_to_non_nullable
as int,updated: null == updated ? _self.updated : updated // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [SyncAvailabilityResultDto].
extension SyncAvailabilityResultDtoPatterns on SyncAvailabilityResultDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SyncAvailabilityResultDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SyncAvailabilityResultDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SyncAvailabilityResultDto value)  $default,){
final _that = this;
switch (_that) {
case _SyncAvailabilityResultDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SyncAvailabilityResultDto value)?  $default,){
final _that = this;
switch (_that) {
case _SyncAvailabilityResultDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int synced,  int updated)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SyncAvailabilityResultDto() when $default != null:
return $default(_that.synced,_that.updated);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int synced,  int updated)  $default,) {final _that = this;
switch (_that) {
case _SyncAvailabilityResultDto():
return $default(_that.synced,_that.updated);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int synced,  int updated)?  $default,) {final _that = this;
switch (_that) {
case _SyncAvailabilityResultDto() when $default != null:
return $default(_that.synced,_that.updated);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SyncAvailabilityResultDto implements SyncAvailabilityResultDto {
  const _SyncAvailabilityResultDto({this.synced = 0, this.updated = 0});
  factory _SyncAvailabilityResultDto.fromJson(Map<String, dynamic> json) => _$SyncAvailabilityResultDtoFromJson(json);

@override@JsonKey() final  int synced;
@override@JsonKey() final  int updated;

/// Create a copy of SyncAvailabilityResultDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SyncAvailabilityResultDtoCopyWith<_SyncAvailabilityResultDto> get copyWith => __$SyncAvailabilityResultDtoCopyWithImpl<_SyncAvailabilityResultDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SyncAvailabilityResultDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SyncAvailabilityResultDto&&(identical(other.synced, synced) || other.synced == synced)&&(identical(other.updated, updated) || other.updated == updated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,synced,updated);

@override
String toString() {
  return 'SyncAvailabilityResultDto(synced: $synced, updated: $updated)';
}


}

/// @nodoc
abstract mixin class _$SyncAvailabilityResultDtoCopyWith<$Res> implements $SyncAvailabilityResultDtoCopyWith<$Res> {
  factory _$SyncAvailabilityResultDtoCopyWith(_SyncAvailabilityResultDto value, $Res Function(_SyncAvailabilityResultDto) _then) = __$SyncAvailabilityResultDtoCopyWithImpl;
@override @useResult
$Res call({
 int synced, int updated
});




}
/// @nodoc
class __$SyncAvailabilityResultDtoCopyWithImpl<$Res>
    implements _$SyncAvailabilityResultDtoCopyWith<$Res> {
  __$SyncAvailabilityResultDtoCopyWithImpl(this._self, this._then);

  final _SyncAvailabilityResultDto _self;
  final $Res Function(_SyncAvailabilityResultDto) _then;

/// Create a copy of SyncAvailabilityResultDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? synced = null,Object? updated = null,}) {
  return _then(_SyncAvailabilityResultDto(
synced: null == synced ? _self.synced : synced // ignore: cast_nullable_to_non_nullable
as int,updated: null == updated ? _self.updated : updated // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$BulkListingStatusResultDto {

 Map<String, String> get statuses;
/// Create a copy of BulkListingStatusResultDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BulkListingStatusResultDtoCopyWith<BulkListingStatusResultDto> get copyWith => _$BulkListingStatusResultDtoCopyWithImpl<BulkListingStatusResultDto>(this as BulkListingStatusResultDto, _$identity);

  /// Serializes this BulkListingStatusResultDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BulkListingStatusResultDto&&const DeepCollectionEquality().equals(other.statuses, statuses));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(statuses));

@override
String toString() {
  return 'BulkListingStatusResultDto(statuses: $statuses)';
}


}

/// @nodoc
abstract mixin class $BulkListingStatusResultDtoCopyWith<$Res>  {
  factory $BulkListingStatusResultDtoCopyWith(BulkListingStatusResultDto value, $Res Function(BulkListingStatusResultDto) _then) = _$BulkListingStatusResultDtoCopyWithImpl;
@useResult
$Res call({
 Map<String, String> statuses
});




}
/// @nodoc
class _$BulkListingStatusResultDtoCopyWithImpl<$Res>
    implements $BulkListingStatusResultDtoCopyWith<$Res> {
  _$BulkListingStatusResultDtoCopyWithImpl(this._self, this._then);

  final BulkListingStatusResultDto _self;
  final $Res Function(BulkListingStatusResultDto) _then;

/// Create a copy of BulkListingStatusResultDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? statuses = null,}) {
  return _then(_self.copyWith(
statuses: null == statuses ? _self.statuses : statuses // ignore: cast_nullable_to_non_nullable
as Map<String, String>,
  ));
}

}


/// Adds pattern-matching-related methods to [BulkListingStatusResultDto].
extension BulkListingStatusResultDtoPatterns on BulkListingStatusResultDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BulkListingStatusResultDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BulkListingStatusResultDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BulkListingStatusResultDto value)  $default,){
final _that = this;
switch (_that) {
case _BulkListingStatusResultDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BulkListingStatusResultDto value)?  $default,){
final _that = this;
switch (_that) {
case _BulkListingStatusResultDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Map<String, String> statuses)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BulkListingStatusResultDto() when $default != null:
return $default(_that.statuses);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Map<String, String> statuses)  $default,) {final _that = this;
switch (_that) {
case _BulkListingStatusResultDto():
return $default(_that.statuses);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Map<String, String> statuses)?  $default,) {final _that = this;
switch (_that) {
case _BulkListingStatusResultDto() when $default != null:
return $default(_that.statuses);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BulkListingStatusResultDto implements BulkListingStatusResultDto {
  const _BulkListingStatusResultDto({final  Map<String, String> statuses = const {}}): _statuses = statuses;
  factory _BulkListingStatusResultDto.fromJson(Map<String, dynamic> json) => _$BulkListingStatusResultDtoFromJson(json);

 final  Map<String, String> _statuses;
@override@JsonKey() Map<String, String> get statuses {
  if (_statuses is EqualUnmodifiableMapView) return _statuses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_statuses);
}


/// Create a copy of BulkListingStatusResultDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BulkListingStatusResultDtoCopyWith<_BulkListingStatusResultDto> get copyWith => __$BulkListingStatusResultDtoCopyWithImpl<_BulkListingStatusResultDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BulkListingStatusResultDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BulkListingStatusResultDto&&const DeepCollectionEquality().equals(other._statuses, _statuses));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_statuses));

@override
String toString() {
  return 'BulkListingStatusResultDto(statuses: $statuses)';
}


}

/// @nodoc
abstract mixin class _$BulkListingStatusResultDtoCopyWith<$Res> implements $BulkListingStatusResultDtoCopyWith<$Res> {
  factory _$BulkListingStatusResultDtoCopyWith(_BulkListingStatusResultDto value, $Res Function(_BulkListingStatusResultDto) _then) = __$BulkListingStatusResultDtoCopyWithImpl;
@override @useResult
$Res call({
 Map<String, String> statuses
});




}
/// @nodoc
class __$BulkListingStatusResultDtoCopyWithImpl<$Res>
    implements _$BulkListingStatusResultDtoCopyWith<$Res> {
  __$BulkListingStatusResultDtoCopyWithImpl(this._self, this._then);

  final _BulkListingStatusResultDto _self;
  final $Res Function(_BulkListingStatusResultDto) _then;

/// Create a copy of BulkListingStatusResultDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? statuses = null,}) {
  return _then(_BulkListingStatusResultDto(
statuses: null == statuses ? _self._statuses : statuses // ignore: cast_nullable_to_non_nullable
as Map<String, String>,
  ));
}


}

// dart format on
