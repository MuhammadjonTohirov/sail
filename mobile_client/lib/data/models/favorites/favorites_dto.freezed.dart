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

 int get id; int get listing;@JsonKey(name: 'listing_title') String get listingTitle;@JsonKey(name: 'listing_price', fromJson: _parsePrice) double? get listingPrice;@JsonKey(name: 'listing_location') String? get listingLocation;@JsonKey(name: 'listing_media_urls') List<String>? get listingMediaUrls;@JsonKey(name: 'created_at') String? get createdAt;
/// Create a copy of FavoriteDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FavoriteDtoCopyWith<FavoriteDto> get copyWith => _$FavoriteDtoCopyWithImpl<FavoriteDto>(this as FavoriteDto, _$identity);

  /// Serializes this FavoriteDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoriteDto&&(identical(other.id, id) || other.id == id)&&(identical(other.listing, listing) || other.listing == listing)&&(identical(other.listingTitle, listingTitle) || other.listingTitle == listingTitle)&&(identical(other.listingPrice, listingPrice) || other.listingPrice == listingPrice)&&(identical(other.listingLocation, listingLocation) || other.listingLocation == listingLocation)&&const DeepCollectionEquality().equals(other.listingMediaUrls, listingMediaUrls)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,listing,listingTitle,listingPrice,listingLocation,const DeepCollectionEquality().hash(listingMediaUrls),createdAt);

@override
String toString() {
  return 'FavoriteDto(id: $id, listing: $listing, listingTitle: $listingTitle, listingPrice: $listingPrice, listingLocation: $listingLocation, listingMediaUrls: $listingMediaUrls, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $FavoriteDtoCopyWith<$Res>  {
  factory $FavoriteDtoCopyWith(FavoriteDto value, $Res Function(FavoriteDto) _then) = _$FavoriteDtoCopyWithImpl;
@useResult
$Res call({
 int id, int listing,@JsonKey(name: 'listing_title') String listingTitle,@JsonKey(name: 'listing_price', fromJson: _parsePrice) double? listingPrice,@JsonKey(name: 'listing_location') String? listingLocation,@JsonKey(name: 'listing_media_urls') List<String>? listingMediaUrls,@JsonKey(name: 'created_at') String? createdAt
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? listing = null,Object? listingTitle = null,Object? listingPrice = freezed,Object? listingLocation = freezed,Object? listingMediaUrls = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,listing: null == listing ? _self.listing : listing // ignore: cast_nullable_to_non_nullable
as int,listingTitle: null == listingTitle ? _self.listingTitle : listingTitle // ignore: cast_nullable_to_non_nullable
as String,listingPrice: freezed == listingPrice ? _self.listingPrice : listingPrice // ignore: cast_nullable_to_non_nullable
as double?,listingLocation: freezed == listingLocation ? _self.listingLocation : listingLocation // ignore: cast_nullable_to_non_nullable
as String?,listingMediaUrls: freezed == listingMediaUrls ? _self.listingMediaUrls : listingMediaUrls // ignore: cast_nullable_to_non_nullable
as List<String>?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int listing, @JsonKey(name: 'listing_title')  String listingTitle, @JsonKey(name: 'listing_price', fromJson: _parsePrice)  double? listingPrice, @JsonKey(name: 'listing_location')  String? listingLocation, @JsonKey(name: 'listing_media_urls')  List<String>? listingMediaUrls, @JsonKey(name: 'created_at')  String? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FavoriteDto() when $default != null:
return $default(_that.id,_that.listing,_that.listingTitle,_that.listingPrice,_that.listingLocation,_that.listingMediaUrls,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int listing, @JsonKey(name: 'listing_title')  String listingTitle, @JsonKey(name: 'listing_price', fromJson: _parsePrice)  double? listingPrice, @JsonKey(name: 'listing_location')  String? listingLocation, @JsonKey(name: 'listing_media_urls')  List<String>? listingMediaUrls, @JsonKey(name: 'created_at')  String? createdAt)  $default,) {final _that = this;
switch (_that) {
case _FavoriteDto():
return $default(_that.id,_that.listing,_that.listingTitle,_that.listingPrice,_that.listingLocation,_that.listingMediaUrls,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int listing, @JsonKey(name: 'listing_title')  String listingTitle, @JsonKey(name: 'listing_price', fromJson: _parsePrice)  double? listingPrice, @JsonKey(name: 'listing_location')  String? listingLocation, @JsonKey(name: 'listing_media_urls')  List<String>? listingMediaUrls, @JsonKey(name: 'created_at')  String? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _FavoriteDto() when $default != null:
return $default(_that.id,_that.listing,_that.listingTitle,_that.listingPrice,_that.listingLocation,_that.listingMediaUrls,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FavoriteDto implements FavoriteDto {
  const _FavoriteDto({required this.id, required this.listing, @JsonKey(name: 'listing_title') required this.listingTitle, @JsonKey(name: 'listing_price', fromJson: _parsePrice) this.listingPrice, @JsonKey(name: 'listing_location') this.listingLocation, @JsonKey(name: 'listing_media_urls') final  List<String>? listingMediaUrls, @JsonKey(name: 'created_at') this.createdAt}): _listingMediaUrls = listingMediaUrls;
  factory _FavoriteDto.fromJson(Map<String, dynamic> json) => _$FavoriteDtoFromJson(json);

@override final  int id;
@override final  int listing;
@override@JsonKey(name: 'listing_title') final  String listingTitle;
@override@JsonKey(name: 'listing_price', fromJson: _parsePrice) final  double? listingPrice;
@override@JsonKey(name: 'listing_location') final  String? listingLocation;
 final  List<String>? _listingMediaUrls;
@override@JsonKey(name: 'listing_media_urls') List<String>? get listingMediaUrls {
  final value = _listingMediaUrls;
  if (value == null) return null;
  if (_listingMediaUrls is EqualUnmodifiableListView) return _listingMediaUrls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'created_at') final  String? createdAt;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FavoriteDto&&(identical(other.id, id) || other.id == id)&&(identical(other.listing, listing) || other.listing == listing)&&(identical(other.listingTitle, listingTitle) || other.listingTitle == listingTitle)&&(identical(other.listingPrice, listingPrice) || other.listingPrice == listingPrice)&&(identical(other.listingLocation, listingLocation) || other.listingLocation == listingLocation)&&const DeepCollectionEquality().equals(other._listingMediaUrls, _listingMediaUrls)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,listing,listingTitle,listingPrice,listingLocation,const DeepCollectionEquality().hash(_listingMediaUrls),createdAt);

@override
String toString() {
  return 'FavoriteDto(id: $id, listing: $listing, listingTitle: $listingTitle, listingPrice: $listingPrice, listingLocation: $listingLocation, listingMediaUrls: $listingMediaUrls, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$FavoriteDtoCopyWith<$Res> implements $FavoriteDtoCopyWith<$Res> {
  factory _$FavoriteDtoCopyWith(_FavoriteDto value, $Res Function(_FavoriteDto) _then) = __$FavoriteDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, int listing,@JsonKey(name: 'listing_title') String listingTitle,@JsonKey(name: 'listing_price', fromJson: _parsePrice) double? listingPrice,@JsonKey(name: 'listing_location') String? listingLocation,@JsonKey(name: 'listing_media_urls') List<String>? listingMediaUrls,@JsonKey(name: 'created_at') String? createdAt
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? listing = null,Object? listingTitle = null,Object? listingPrice = freezed,Object? listingLocation = freezed,Object? listingMediaUrls = freezed,Object? createdAt = freezed,}) {
  return _then(_FavoriteDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,listing: null == listing ? _self.listing : listing // ignore: cast_nullable_to_non_nullable
as int,listingTitle: null == listingTitle ? _self.listingTitle : listingTitle // ignore: cast_nullable_to_non_nullable
as String,listingPrice: freezed == listingPrice ? _self.listingPrice : listingPrice // ignore: cast_nullable_to_non_nullable
as double?,listingLocation: freezed == listingLocation ? _self.listingLocation : listingLocation // ignore: cast_nullable_to_non_nullable
as String?,listingMediaUrls: freezed == listingMediaUrls ? _self._listingMediaUrls : listingMediaUrls // ignore: cast_nullable_to_non_nullable
as List<String>?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$FavoriteToggleResponseDto {

 bool get favorited;
/// Create a copy of FavoriteToggleResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FavoriteToggleResponseDtoCopyWith<FavoriteToggleResponseDto> get copyWith => _$FavoriteToggleResponseDtoCopyWithImpl<FavoriteToggleResponseDto>(this as FavoriteToggleResponseDto, _$identity);

  /// Serializes this FavoriteToggleResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoriteToggleResponseDto&&(identical(other.favorited, favorited) || other.favorited == favorited));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,favorited);

@override
String toString() {
  return 'FavoriteToggleResponseDto(favorited: $favorited)';
}


}

/// @nodoc
abstract mixin class $FavoriteToggleResponseDtoCopyWith<$Res>  {
  factory $FavoriteToggleResponseDtoCopyWith(FavoriteToggleResponseDto value, $Res Function(FavoriteToggleResponseDto) _then) = _$FavoriteToggleResponseDtoCopyWithImpl;
@useResult
$Res call({
 bool favorited
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
@pragma('vm:prefer-inline') @override $Res call({Object? favorited = null,}) {
  return _then(_self.copyWith(
favorited: null == favorited ? _self.favorited : favorited // ignore: cast_nullable_to_non_nullable
as bool,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool favorited)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FavoriteToggleResponseDto() when $default != null:
return $default(_that.favorited);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool favorited)  $default,) {final _that = this;
switch (_that) {
case _FavoriteToggleResponseDto():
return $default(_that.favorited);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool favorited)?  $default,) {final _that = this;
switch (_that) {
case _FavoriteToggleResponseDto() when $default != null:
return $default(_that.favorited);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FavoriteToggleResponseDto implements FavoriteToggleResponseDto {
  const _FavoriteToggleResponseDto({required this.favorited});
  factory _FavoriteToggleResponseDto.fromJson(Map<String, dynamic> json) => _$FavoriteToggleResponseDtoFromJson(json);

@override final  bool favorited;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FavoriteToggleResponseDto&&(identical(other.favorited, favorited) || other.favorited == favorited));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,favorited);

@override
String toString() {
  return 'FavoriteToggleResponseDto(favorited: $favorited)';
}


}

/// @nodoc
abstract mixin class _$FavoriteToggleResponseDtoCopyWith<$Res> implements $FavoriteToggleResponseDtoCopyWith<$Res> {
  factory _$FavoriteToggleResponseDtoCopyWith(_FavoriteToggleResponseDto value, $Res Function(_FavoriteToggleResponseDto) _then) = __$FavoriteToggleResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 bool favorited
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
@override @pragma('vm:prefer-inline') $Res call({Object? favorited = null,}) {
  return _then(_FavoriteToggleResponseDto(
favorited: null == favorited ? _self.favorited : favorited // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$RecentlyViewedDto {

 int get id; int get listing;@JsonKey(name: 'listing_title') String get listingTitle;@JsonKey(name: 'listing_price', fromJson: _parsePrice) double? get listingPrice;@JsonKey(name: 'listing_location') String? get listingLocation;@JsonKey(name: 'listing_media_urls') List<String>? get listingMediaUrls;@JsonKey(name: 'viewed_at') String? get viewedAt;
/// Create a copy of RecentlyViewedDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecentlyViewedDtoCopyWith<RecentlyViewedDto> get copyWith => _$RecentlyViewedDtoCopyWithImpl<RecentlyViewedDto>(this as RecentlyViewedDto, _$identity);

  /// Serializes this RecentlyViewedDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecentlyViewedDto&&(identical(other.id, id) || other.id == id)&&(identical(other.listing, listing) || other.listing == listing)&&(identical(other.listingTitle, listingTitle) || other.listingTitle == listingTitle)&&(identical(other.listingPrice, listingPrice) || other.listingPrice == listingPrice)&&(identical(other.listingLocation, listingLocation) || other.listingLocation == listingLocation)&&const DeepCollectionEquality().equals(other.listingMediaUrls, listingMediaUrls)&&(identical(other.viewedAt, viewedAt) || other.viewedAt == viewedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,listing,listingTitle,listingPrice,listingLocation,const DeepCollectionEquality().hash(listingMediaUrls),viewedAt);

@override
String toString() {
  return 'RecentlyViewedDto(id: $id, listing: $listing, listingTitle: $listingTitle, listingPrice: $listingPrice, listingLocation: $listingLocation, listingMediaUrls: $listingMediaUrls, viewedAt: $viewedAt)';
}


}

/// @nodoc
abstract mixin class $RecentlyViewedDtoCopyWith<$Res>  {
  factory $RecentlyViewedDtoCopyWith(RecentlyViewedDto value, $Res Function(RecentlyViewedDto) _then) = _$RecentlyViewedDtoCopyWithImpl;
@useResult
$Res call({
 int id, int listing,@JsonKey(name: 'listing_title') String listingTitle,@JsonKey(name: 'listing_price', fromJson: _parsePrice) double? listingPrice,@JsonKey(name: 'listing_location') String? listingLocation,@JsonKey(name: 'listing_media_urls') List<String>? listingMediaUrls,@JsonKey(name: 'viewed_at') String? viewedAt
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? listing = null,Object? listingTitle = null,Object? listingPrice = freezed,Object? listingLocation = freezed,Object? listingMediaUrls = freezed,Object? viewedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,listing: null == listing ? _self.listing : listing // ignore: cast_nullable_to_non_nullable
as int,listingTitle: null == listingTitle ? _self.listingTitle : listingTitle // ignore: cast_nullable_to_non_nullable
as String,listingPrice: freezed == listingPrice ? _self.listingPrice : listingPrice // ignore: cast_nullable_to_non_nullable
as double?,listingLocation: freezed == listingLocation ? _self.listingLocation : listingLocation // ignore: cast_nullable_to_non_nullable
as String?,listingMediaUrls: freezed == listingMediaUrls ? _self.listingMediaUrls : listingMediaUrls // ignore: cast_nullable_to_non_nullable
as List<String>?,viewedAt: freezed == viewedAt ? _self.viewedAt : viewedAt // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int listing, @JsonKey(name: 'listing_title')  String listingTitle, @JsonKey(name: 'listing_price', fromJson: _parsePrice)  double? listingPrice, @JsonKey(name: 'listing_location')  String? listingLocation, @JsonKey(name: 'listing_media_urls')  List<String>? listingMediaUrls, @JsonKey(name: 'viewed_at')  String? viewedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecentlyViewedDto() when $default != null:
return $default(_that.id,_that.listing,_that.listingTitle,_that.listingPrice,_that.listingLocation,_that.listingMediaUrls,_that.viewedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int listing, @JsonKey(name: 'listing_title')  String listingTitle, @JsonKey(name: 'listing_price', fromJson: _parsePrice)  double? listingPrice, @JsonKey(name: 'listing_location')  String? listingLocation, @JsonKey(name: 'listing_media_urls')  List<String>? listingMediaUrls, @JsonKey(name: 'viewed_at')  String? viewedAt)  $default,) {final _that = this;
switch (_that) {
case _RecentlyViewedDto():
return $default(_that.id,_that.listing,_that.listingTitle,_that.listingPrice,_that.listingLocation,_that.listingMediaUrls,_that.viewedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int listing, @JsonKey(name: 'listing_title')  String listingTitle, @JsonKey(name: 'listing_price', fromJson: _parsePrice)  double? listingPrice, @JsonKey(name: 'listing_location')  String? listingLocation, @JsonKey(name: 'listing_media_urls')  List<String>? listingMediaUrls, @JsonKey(name: 'viewed_at')  String? viewedAt)?  $default,) {final _that = this;
switch (_that) {
case _RecentlyViewedDto() when $default != null:
return $default(_that.id,_that.listing,_that.listingTitle,_that.listingPrice,_that.listingLocation,_that.listingMediaUrls,_that.viewedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RecentlyViewedDto implements RecentlyViewedDto {
  const _RecentlyViewedDto({required this.id, required this.listing, @JsonKey(name: 'listing_title') required this.listingTitle, @JsonKey(name: 'listing_price', fromJson: _parsePrice) this.listingPrice, @JsonKey(name: 'listing_location') this.listingLocation, @JsonKey(name: 'listing_media_urls') final  List<String>? listingMediaUrls, @JsonKey(name: 'viewed_at') this.viewedAt}): _listingMediaUrls = listingMediaUrls;
  factory _RecentlyViewedDto.fromJson(Map<String, dynamic> json) => _$RecentlyViewedDtoFromJson(json);

@override final  int id;
@override final  int listing;
@override@JsonKey(name: 'listing_title') final  String listingTitle;
@override@JsonKey(name: 'listing_price', fromJson: _parsePrice) final  double? listingPrice;
@override@JsonKey(name: 'listing_location') final  String? listingLocation;
 final  List<String>? _listingMediaUrls;
@override@JsonKey(name: 'listing_media_urls') List<String>? get listingMediaUrls {
  final value = _listingMediaUrls;
  if (value == null) return null;
  if (_listingMediaUrls is EqualUnmodifiableListView) return _listingMediaUrls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecentlyViewedDto&&(identical(other.id, id) || other.id == id)&&(identical(other.listing, listing) || other.listing == listing)&&(identical(other.listingTitle, listingTitle) || other.listingTitle == listingTitle)&&(identical(other.listingPrice, listingPrice) || other.listingPrice == listingPrice)&&(identical(other.listingLocation, listingLocation) || other.listingLocation == listingLocation)&&const DeepCollectionEquality().equals(other._listingMediaUrls, _listingMediaUrls)&&(identical(other.viewedAt, viewedAt) || other.viewedAt == viewedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,listing,listingTitle,listingPrice,listingLocation,const DeepCollectionEquality().hash(_listingMediaUrls),viewedAt);

@override
String toString() {
  return 'RecentlyViewedDto(id: $id, listing: $listing, listingTitle: $listingTitle, listingPrice: $listingPrice, listingLocation: $listingLocation, listingMediaUrls: $listingMediaUrls, viewedAt: $viewedAt)';
}


}

/// @nodoc
abstract mixin class _$RecentlyViewedDtoCopyWith<$Res> implements $RecentlyViewedDtoCopyWith<$Res> {
  factory _$RecentlyViewedDtoCopyWith(_RecentlyViewedDto value, $Res Function(_RecentlyViewedDto) _then) = __$RecentlyViewedDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, int listing,@JsonKey(name: 'listing_title') String listingTitle,@JsonKey(name: 'listing_price', fromJson: _parsePrice) double? listingPrice,@JsonKey(name: 'listing_location') String? listingLocation,@JsonKey(name: 'listing_media_urls') List<String>? listingMediaUrls,@JsonKey(name: 'viewed_at') String? viewedAt
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? listing = null,Object? listingTitle = null,Object? listingPrice = freezed,Object? listingLocation = freezed,Object? listingMediaUrls = freezed,Object? viewedAt = freezed,}) {
  return _then(_RecentlyViewedDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,listing: null == listing ? _self.listing : listing // ignore: cast_nullable_to_non_nullable
as int,listingTitle: null == listingTitle ? _self.listingTitle : listingTitle // ignore: cast_nullable_to_non_nullable
as String,listingPrice: freezed == listingPrice ? _self.listingPrice : listingPrice // ignore: cast_nullable_to_non_nullable
as double?,listingLocation: freezed == listingLocation ? _self.listingLocation : listingLocation // ignore: cast_nullable_to_non_nullable
as String?,listingMediaUrls: freezed == listingMediaUrls ? _self._listingMediaUrls : listingMediaUrls // ignore: cast_nullable_to_non_nullable
as List<String>?,viewedAt: freezed == viewedAt ? _self.viewedAt : viewedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
