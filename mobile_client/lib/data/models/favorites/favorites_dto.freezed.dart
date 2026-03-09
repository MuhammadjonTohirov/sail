// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorites_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FavoriteDto {

 int get id;@JsonKey(name: 'listing_id') int get listingId; String get title; double? get price; String? get currency;@JsonKey(name: 'thumbnail_url') String? get thumbnailUrl;@JsonKey(name: 'location_name') String? get locationName; String? get status;// 'active', 'sold', 'expired', etc.
@JsonKey(name: 'added_at') String? get addedAt;
/// Create a copy of FavoriteDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FavoriteDtoCopyWith<FavoriteDto> get copyWith => _$FavoriteDtoCopyWithImpl<FavoriteDto>(this as FavoriteDto, _$identity);

  /// Serializes this FavoriteDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoriteDto&&(identical(other.id, id) || other.id == id)&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.title, title) || other.title == title)&&(identical(other.price, price) || other.price == price)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&(identical(other.locationName, locationName) || other.locationName == locationName)&&(identical(other.status, status) || other.status == status)&&(identical(other.addedAt, addedAt) || other.addedAt == addedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,listingId,title,price,currency,thumbnailUrl,locationName,status,addedAt);

@override
String toString() {
  return 'FavoriteDto(id: $id, listingId: $listingId, title: $title, price: $price, currency: $currency, thumbnailUrl: $thumbnailUrl, locationName: $locationName, status: $status, addedAt: $addedAt)';
}


}

/// @nodoc
abstract mixin class $FavoriteDtoCopyWith<$Res>  {
  factory $FavoriteDtoCopyWith(FavoriteDto value, $Res Function(FavoriteDto) _then) = _$FavoriteDtoCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'listing_id') int listingId, String title, double? price, String? currency,@JsonKey(name: 'thumbnail_url') String? thumbnailUrl,@JsonKey(name: 'location_name') String? locationName, String? status,@JsonKey(name: 'added_at') String? addedAt
});




}
/// @nodoc
class _$FavoriteDtoCopyWithImpl<$Res>
    implements $FavoriteDtoCopyWith<$Res> {
  _$FavoriteDtoCopyWithImpl(this._self, this._then);

  final FavoriteDto _self;
  final $Res Function(FavoriteDto) _then;

/// Create a copy of FavoriteDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? listingId = null,Object? title = null,Object? price = freezed,Object? currency = freezed,Object? thumbnailUrl = freezed,Object? locationName = freezed,Object? status = freezed,Object? addedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,listingId: null == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,thumbnailUrl: freezed == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,locationName: freezed == locationName ? _self.locationName : locationName // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,addedAt: freezed == addedAt ? _self.addedAt : addedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [FavoriteDto].
extension FavoriteDtoPatterns on FavoriteDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FavoriteDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FavoriteDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FavoriteDto value)  $default,){
final _that = this;
switch (_that) {
case _FavoriteDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FavoriteDto value)?  $default,){
final _that = this;
switch (_that) {
case _FavoriteDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'listing_id')  int listingId,  String title,  double? price,  String? currency, @JsonKey(name: 'thumbnail_url')  String? thumbnailUrl, @JsonKey(name: 'location_name')  String? locationName,  String? status, @JsonKey(name: 'added_at')  String? addedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FavoriteDto() when $default != null:
return $default(_that.id,_that.listingId,_that.title,_that.price,_that.currency,_that.thumbnailUrl,_that.locationName,_that.status,_that.addedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'listing_id')  int listingId,  String title,  double? price,  String? currency, @JsonKey(name: 'thumbnail_url')  String? thumbnailUrl, @JsonKey(name: 'location_name')  String? locationName,  String? status, @JsonKey(name: 'added_at')  String? addedAt)  $default,) {final _that = this;
switch (_that) {
case _FavoriteDto():
return $default(_that.id,_that.listingId,_that.title,_that.price,_that.currency,_that.thumbnailUrl,_that.locationName,_that.status,_that.addedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'listing_id')  int listingId,  String title,  double? price,  String? currency, @JsonKey(name: 'thumbnail_url')  String? thumbnailUrl, @JsonKey(name: 'location_name')  String? locationName,  String? status, @JsonKey(name: 'added_at')  String? addedAt)?  $default,) {final _that = this;
switch (_that) {
case _FavoriteDto() when $default != null:
return $default(_that.id,_that.listingId,_that.title,_that.price,_that.currency,_that.thumbnailUrl,_that.locationName,_that.status,_that.addedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FavoriteDto implements FavoriteDto {
  const _FavoriteDto({required this.id, @JsonKey(name: 'listing_id') required this.listingId, required this.title, this.price, this.currency, @JsonKey(name: 'thumbnail_url') this.thumbnailUrl, @JsonKey(name: 'location_name') this.locationName, this.status, @JsonKey(name: 'added_at') this.addedAt});
  factory _FavoriteDto.fromJson(Map<String, dynamic> json) => _$FavoriteDtoFromJson(json);

@override final  int id;
@override@JsonKey(name: 'listing_id') final  int listingId;
@override final  String title;
@override final  double? price;
@override final  String? currency;
@override@JsonKey(name: 'thumbnail_url') final  String? thumbnailUrl;
@override@JsonKey(name: 'location_name') final  String? locationName;
@override final  String? status;
// 'active', 'sold', 'expired', etc.
@override@JsonKey(name: 'added_at') final  String? addedAt;

/// Create a copy of FavoriteDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FavoriteDtoCopyWith<_FavoriteDto> get copyWith => __$FavoriteDtoCopyWithImpl<_FavoriteDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FavoriteDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FavoriteDto&&(identical(other.id, id) || other.id == id)&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.title, title) || other.title == title)&&(identical(other.price, price) || other.price == price)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&(identical(other.locationName, locationName) || other.locationName == locationName)&&(identical(other.status, status) || other.status == status)&&(identical(other.addedAt, addedAt) || other.addedAt == addedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,listingId,title,price,currency,thumbnailUrl,locationName,status,addedAt);

@override
String toString() {
  return 'FavoriteDto(id: $id, listingId: $listingId, title: $title, price: $price, currency: $currency, thumbnailUrl: $thumbnailUrl, locationName: $locationName, status: $status, addedAt: $addedAt)';
}


}

/// @nodoc
abstract mixin class _$FavoriteDtoCopyWith<$Res> implements $FavoriteDtoCopyWith<$Res> {
  factory _$FavoriteDtoCopyWith(_FavoriteDto value, $Res Function(_FavoriteDto) _then) = __$FavoriteDtoCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'listing_id') int listingId, String title, double? price, String? currency,@JsonKey(name: 'thumbnail_url') String? thumbnailUrl,@JsonKey(name: 'location_name') String? locationName, String? status,@JsonKey(name: 'added_at') String? addedAt
});




}
/// @nodoc
class __$FavoriteDtoCopyWithImpl<$Res>
    implements _$FavoriteDtoCopyWith<$Res> {
  __$FavoriteDtoCopyWithImpl(this._self, this._then);

  final _FavoriteDto _self;
  final $Res Function(_FavoriteDto) _then;

/// Create a copy of FavoriteDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? listingId = null,Object? title = null,Object? price = freezed,Object? currency = freezed,Object? thumbnailUrl = freezed,Object? locationName = freezed,Object? status = freezed,Object? addedAt = freezed,}) {
  return _then(_FavoriteDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,listingId: null == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,thumbnailUrl: freezed == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,locationName: freezed == locationName ? _self.locationName : locationName // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,addedAt: freezed == addedAt ? _self.addedAt : addedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$FavoriteToggleResponseDto {

@JsonKey(name: 'is_favorite') bool get isFavorite;@JsonKey(name: 'listing_id') int get listingId;
/// Create a copy of FavoriteToggleResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FavoriteToggleResponseDtoCopyWith<FavoriteToggleResponseDto> get copyWith => _$FavoriteToggleResponseDtoCopyWithImpl<FavoriteToggleResponseDto>(this as FavoriteToggleResponseDto, _$identity);

  /// Serializes this FavoriteToggleResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoriteToggleResponseDto&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite)&&(identical(other.listingId, listingId) || other.listingId == listingId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isFavorite,listingId);

@override
String toString() {
  return 'FavoriteToggleResponseDto(isFavorite: $isFavorite, listingId: $listingId)';
}


}

/// @nodoc
abstract mixin class $FavoriteToggleResponseDtoCopyWith<$Res>  {
  factory $FavoriteToggleResponseDtoCopyWith(FavoriteToggleResponseDto value, $Res Function(FavoriteToggleResponseDto) _then) = _$FavoriteToggleResponseDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'is_favorite') bool isFavorite,@JsonKey(name: 'listing_id') int listingId
});




}
/// @nodoc
class _$FavoriteToggleResponseDtoCopyWithImpl<$Res>
    implements $FavoriteToggleResponseDtoCopyWith<$Res> {
  _$FavoriteToggleResponseDtoCopyWithImpl(this._self, this._then);

  final FavoriteToggleResponseDto _self;
  final $Res Function(FavoriteToggleResponseDto) _then;

/// Create a copy of FavoriteToggleResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isFavorite = null,Object? listingId = null,}) {
  return _then(_self.copyWith(
isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,listingId: null == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [FavoriteToggleResponseDto].
extension FavoriteToggleResponseDtoPatterns on FavoriteToggleResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FavoriteToggleResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FavoriteToggleResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FavoriteToggleResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _FavoriteToggleResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FavoriteToggleResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _FavoriteToggleResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'is_favorite')  bool isFavorite, @JsonKey(name: 'listing_id')  int listingId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FavoriteToggleResponseDto() when $default != null:
return $default(_that.isFavorite,_that.listingId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'is_favorite')  bool isFavorite, @JsonKey(name: 'listing_id')  int listingId)  $default,) {final _that = this;
switch (_that) {
case _FavoriteToggleResponseDto():
return $default(_that.isFavorite,_that.listingId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'is_favorite')  bool isFavorite, @JsonKey(name: 'listing_id')  int listingId)?  $default,) {final _that = this;
switch (_that) {
case _FavoriteToggleResponseDto() when $default != null:
return $default(_that.isFavorite,_that.listingId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FavoriteToggleResponseDto implements FavoriteToggleResponseDto {
  const _FavoriteToggleResponseDto({@JsonKey(name: 'is_favorite') required this.isFavorite, @JsonKey(name: 'listing_id') required this.listingId});
  factory _FavoriteToggleResponseDto.fromJson(Map<String, dynamic> json) => _$FavoriteToggleResponseDtoFromJson(json);

@override@JsonKey(name: 'is_favorite') final  bool isFavorite;
@override@JsonKey(name: 'listing_id') final  int listingId;

/// Create a copy of FavoriteToggleResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FavoriteToggleResponseDtoCopyWith<_FavoriteToggleResponseDto> get copyWith => __$FavoriteToggleResponseDtoCopyWithImpl<_FavoriteToggleResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FavoriteToggleResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FavoriteToggleResponseDto&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite)&&(identical(other.listingId, listingId) || other.listingId == listingId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isFavorite,listingId);

@override
String toString() {
  return 'FavoriteToggleResponseDto(isFavorite: $isFavorite, listingId: $listingId)';
}


}

/// @nodoc
abstract mixin class _$FavoriteToggleResponseDtoCopyWith<$Res> implements $FavoriteToggleResponseDtoCopyWith<$Res> {
  factory _$FavoriteToggleResponseDtoCopyWith(_FavoriteToggleResponseDto value, $Res Function(_FavoriteToggleResponseDto) _then) = __$FavoriteToggleResponseDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'is_favorite') bool isFavorite,@JsonKey(name: 'listing_id') int listingId
});




}
/// @nodoc
class __$FavoriteToggleResponseDtoCopyWithImpl<$Res>
    implements _$FavoriteToggleResponseDtoCopyWith<$Res> {
  __$FavoriteToggleResponseDtoCopyWithImpl(this._self, this._then);

  final _FavoriteToggleResponseDto _self;
  final $Res Function(_FavoriteToggleResponseDto) _then;

/// Create a copy of FavoriteToggleResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isFavorite = null,Object? listingId = null,}) {
  return _then(_FavoriteToggleResponseDto(
isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,listingId: null == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$RecentlyViewedDto {

 int get id;@JsonKey(name: 'listing_id') int get listingId; String get title; double? get price; String? get currency;@JsonKey(name: 'thumbnail_url') String? get thumbnailUrl;@JsonKey(name: 'location_name') String? get locationName;@JsonKey(name: 'viewed_at') String? get viewedAt;
/// Create a copy of RecentlyViewedDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecentlyViewedDtoCopyWith<RecentlyViewedDto> get copyWith => _$RecentlyViewedDtoCopyWithImpl<RecentlyViewedDto>(this as RecentlyViewedDto, _$identity);

  /// Serializes this RecentlyViewedDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecentlyViewedDto&&(identical(other.id, id) || other.id == id)&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.title, title) || other.title == title)&&(identical(other.price, price) || other.price == price)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&(identical(other.locationName, locationName) || other.locationName == locationName)&&(identical(other.viewedAt, viewedAt) || other.viewedAt == viewedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,listingId,title,price,currency,thumbnailUrl,locationName,viewedAt);

@override
String toString() {
  return 'RecentlyViewedDto(id: $id, listingId: $listingId, title: $title, price: $price, currency: $currency, thumbnailUrl: $thumbnailUrl, locationName: $locationName, viewedAt: $viewedAt)';
}


}

/// @nodoc
abstract mixin class $RecentlyViewedDtoCopyWith<$Res>  {
  factory $RecentlyViewedDtoCopyWith(RecentlyViewedDto value, $Res Function(RecentlyViewedDto) _then) = _$RecentlyViewedDtoCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'listing_id') int listingId, String title, double? price, String? currency,@JsonKey(name: 'thumbnail_url') String? thumbnailUrl,@JsonKey(name: 'location_name') String? locationName,@JsonKey(name: 'viewed_at') String? viewedAt
});




}
/// @nodoc
class _$RecentlyViewedDtoCopyWithImpl<$Res>
    implements $RecentlyViewedDtoCopyWith<$Res> {
  _$RecentlyViewedDtoCopyWithImpl(this._self, this._then);

  final RecentlyViewedDto _self;
  final $Res Function(RecentlyViewedDto) _then;

/// Create a copy of RecentlyViewedDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? listingId = null,Object? title = null,Object? price = freezed,Object? currency = freezed,Object? thumbnailUrl = freezed,Object? locationName = freezed,Object? viewedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,listingId: null == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,thumbnailUrl: freezed == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,locationName: freezed == locationName ? _self.locationName : locationName // ignore: cast_nullable_to_non_nullable
as String?,viewedAt: freezed == viewedAt ? _self.viewedAt : viewedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RecentlyViewedDto].
extension RecentlyViewedDtoPatterns on RecentlyViewedDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecentlyViewedDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecentlyViewedDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecentlyViewedDto value)  $default,){
final _that = this;
switch (_that) {
case _RecentlyViewedDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecentlyViewedDto value)?  $default,){
final _that = this;
switch (_that) {
case _RecentlyViewedDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'listing_id')  int listingId,  String title,  double? price,  String? currency, @JsonKey(name: 'thumbnail_url')  String? thumbnailUrl, @JsonKey(name: 'location_name')  String? locationName, @JsonKey(name: 'viewed_at')  String? viewedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecentlyViewedDto() when $default != null:
return $default(_that.id,_that.listingId,_that.title,_that.price,_that.currency,_that.thumbnailUrl,_that.locationName,_that.viewedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'listing_id')  int listingId,  String title,  double? price,  String? currency, @JsonKey(name: 'thumbnail_url')  String? thumbnailUrl, @JsonKey(name: 'location_name')  String? locationName, @JsonKey(name: 'viewed_at')  String? viewedAt)  $default,) {final _that = this;
switch (_that) {
case _RecentlyViewedDto():
return $default(_that.id,_that.listingId,_that.title,_that.price,_that.currency,_that.thumbnailUrl,_that.locationName,_that.viewedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'listing_id')  int listingId,  String title,  double? price,  String? currency, @JsonKey(name: 'thumbnail_url')  String? thumbnailUrl, @JsonKey(name: 'location_name')  String? locationName, @JsonKey(name: 'viewed_at')  String? viewedAt)?  $default,) {final _that = this;
switch (_that) {
case _RecentlyViewedDto() when $default != null:
return $default(_that.id,_that.listingId,_that.title,_that.price,_that.currency,_that.thumbnailUrl,_that.locationName,_that.viewedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RecentlyViewedDto implements RecentlyViewedDto {
  const _RecentlyViewedDto({required this.id, @JsonKey(name: 'listing_id') required this.listingId, required this.title, this.price, this.currency, @JsonKey(name: 'thumbnail_url') this.thumbnailUrl, @JsonKey(name: 'location_name') this.locationName, @JsonKey(name: 'viewed_at') this.viewedAt});
  factory _RecentlyViewedDto.fromJson(Map<String, dynamic> json) => _$RecentlyViewedDtoFromJson(json);

@override final  int id;
@override@JsonKey(name: 'listing_id') final  int listingId;
@override final  String title;
@override final  double? price;
@override final  String? currency;
@override@JsonKey(name: 'thumbnail_url') final  String? thumbnailUrl;
@override@JsonKey(name: 'location_name') final  String? locationName;
@override@JsonKey(name: 'viewed_at') final  String? viewedAt;

/// Create a copy of RecentlyViewedDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecentlyViewedDtoCopyWith<_RecentlyViewedDto> get copyWith => __$RecentlyViewedDtoCopyWithImpl<_RecentlyViewedDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecentlyViewedDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecentlyViewedDto&&(identical(other.id, id) || other.id == id)&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.title, title) || other.title == title)&&(identical(other.price, price) || other.price == price)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&(identical(other.locationName, locationName) || other.locationName == locationName)&&(identical(other.viewedAt, viewedAt) || other.viewedAt == viewedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,listingId,title,price,currency,thumbnailUrl,locationName,viewedAt);

@override
String toString() {
  return 'RecentlyViewedDto(id: $id, listingId: $listingId, title: $title, price: $price, currency: $currency, thumbnailUrl: $thumbnailUrl, locationName: $locationName, viewedAt: $viewedAt)';
}


}

/// @nodoc
abstract mixin class _$RecentlyViewedDtoCopyWith<$Res> implements $RecentlyViewedDtoCopyWith<$Res> {
  factory _$RecentlyViewedDtoCopyWith(_RecentlyViewedDto value, $Res Function(_RecentlyViewedDto) _then) = __$RecentlyViewedDtoCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'listing_id') int listingId, String title, double? price, String? currency,@JsonKey(name: 'thumbnail_url') String? thumbnailUrl,@JsonKey(name: 'location_name') String? locationName,@JsonKey(name: 'viewed_at') String? viewedAt
});




}
/// @nodoc
class __$RecentlyViewedDtoCopyWithImpl<$Res>
    implements _$RecentlyViewedDtoCopyWith<$Res> {
  __$RecentlyViewedDtoCopyWithImpl(this._self, this._then);

  final _RecentlyViewedDto _self;
  final $Res Function(_RecentlyViewedDto) _then;

/// Create a copy of RecentlyViewedDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? listingId = null,Object? title = null,Object? price = freezed,Object? currency = freezed,Object? thumbnailUrl = freezed,Object? locationName = freezed,Object? viewedAt = freezed,}) {
  return _then(_RecentlyViewedDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,listingId: null == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,thumbnailUrl: freezed == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,locationName: freezed == locationName ? _self.locationName : locationName // ignore: cast_nullable_to_non_nullable
as String?,viewedAt: freezed == viewedAt ? _self.viewedAt : viewedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
