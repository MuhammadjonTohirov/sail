// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SearchListingDto {

 String get id; String get title; double? get price; String? get description; String? get condition;@JsonKey(name: 'quality_score') double? get qualityScore; double? get score; String? get currency;@JsonKey(name: 'media_urls') List<String>? get mediaUrls;@JsonKey(name: 'location_name_ru') String? get locationNameRu;@JsonKey(name: 'location_name_uz') String? get locationNameUz;@JsonKey(name: 'refreshed_at') String? get refreshedAt;@JsonKey(name: 'is_promoted') bool? get isPromoted; ListingSellerDto? get seller;
/// Create a copy of SearchListingDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchListingDtoCopyWith<SearchListingDto> get copyWith => _$SearchListingDtoCopyWithImpl<SearchListingDto>(this as SearchListingDto, _$identity);

  /// Serializes this SearchListingDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchListingDto&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.price, price) || other.price == price)&&(identical(other.description, description) || other.description == description)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.qualityScore, qualityScore) || other.qualityScore == qualityScore)&&(identical(other.score, score) || other.score == score)&&(identical(other.currency, currency) || other.currency == currency)&&const DeepCollectionEquality().equals(other.mediaUrls, mediaUrls)&&(identical(other.locationNameRu, locationNameRu) || other.locationNameRu == locationNameRu)&&(identical(other.locationNameUz, locationNameUz) || other.locationNameUz == locationNameUz)&&(identical(other.refreshedAt, refreshedAt) || other.refreshedAt == refreshedAt)&&(identical(other.isPromoted, isPromoted) || other.isPromoted == isPromoted)&&(identical(other.seller, seller) || other.seller == seller));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,price,description,condition,qualityScore,score,currency,const DeepCollectionEquality().hash(mediaUrls),locationNameRu,locationNameUz,refreshedAt,isPromoted,seller);

@override
String toString() {
  return 'SearchListingDto(id: $id, title: $title, price: $price, description: $description, condition: $condition, qualityScore: $qualityScore, score: $score, currency: $currency, mediaUrls: $mediaUrls, locationNameRu: $locationNameRu, locationNameUz: $locationNameUz, refreshedAt: $refreshedAt, isPromoted: $isPromoted, seller: $seller)';
}


}

/// @nodoc
abstract mixin class $SearchListingDtoCopyWith<$Res>  {
  factory $SearchListingDtoCopyWith(SearchListingDto value, $Res Function(SearchListingDto) _then) = _$SearchListingDtoCopyWithImpl;
@useResult
$Res call({
 String id, String title, double? price, String? description, String? condition,@JsonKey(name: 'quality_score') double? qualityScore, double? score, String? currency,@JsonKey(name: 'media_urls') List<String>? mediaUrls,@JsonKey(name: 'location_name_ru') String? locationNameRu,@JsonKey(name: 'location_name_uz') String? locationNameUz,@JsonKey(name: 'refreshed_at') String? refreshedAt,@JsonKey(name: 'is_promoted') bool? isPromoted, ListingSellerDto? seller
});


$ListingSellerDtoCopyWith<$Res>? get seller;

}
/// @nodoc
class _$SearchListingDtoCopyWithImpl<$Res>
    implements $SearchListingDtoCopyWith<$Res> {
  _$SearchListingDtoCopyWithImpl(this._self, this._then);

  final SearchListingDto _self;
  final $Res Function(SearchListingDto) _then;

/// Create a copy of SearchListingDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? price = freezed,Object? description = freezed,Object? condition = freezed,Object? qualityScore = freezed,Object? score = freezed,Object? currency = freezed,Object? mediaUrls = freezed,Object? locationNameRu = freezed,Object? locationNameUz = freezed,Object? refreshedAt = freezed,Object? isPromoted = freezed,Object? seller = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,condition: freezed == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as String?,qualityScore: freezed == qualityScore ? _self.qualityScore : qualityScore // ignore: cast_nullable_to_non_nullable
as double?,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as double?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,mediaUrls: freezed == mediaUrls ? _self.mediaUrls : mediaUrls // ignore: cast_nullable_to_non_nullable
as List<String>?,locationNameRu: freezed == locationNameRu ? _self.locationNameRu : locationNameRu // ignore: cast_nullable_to_non_nullable
as String?,locationNameUz: freezed == locationNameUz ? _self.locationNameUz : locationNameUz // ignore: cast_nullable_to_non_nullable
as String?,refreshedAt: freezed == refreshedAt ? _self.refreshedAt : refreshedAt // ignore: cast_nullable_to_non_nullable
as String?,isPromoted: freezed == isPromoted ? _self.isPromoted : isPromoted // ignore: cast_nullable_to_non_nullable
as bool?,seller: freezed == seller ? _self.seller : seller // ignore: cast_nullable_to_non_nullable
as ListingSellerDto?,
  ));
}
/// Create a copy of SearchListingDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ListingSellerDtoCopyWith<$Res>? get seller {
    if (_self.seller == null) {
    return null;
  }

  return $ListingSellerDtoCopyWith<$Res>(_self.seller!, (value) {
    return _then(_self.copyWith(seller: value));
  });
}
}


/// Adds pattern-matching-related methods to [SearchListingDto].
extension SearchListingDtoPatterns on SearchListingDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchListingDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchListingDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchListingDto value)  $default,){
final _that = this;
switch (_that) {
case _SearchListingDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchListingDto value)?  $default,){
final _that = this;
switch (_that) {
case _SearchListingDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  double? price,  String? description,  String? condition, @JsonKey(name: 'quality_score')  double? qualityScore,  double? score,  String? currency, @JsonKey(name: 'media_urls')  List<String>? mediaUrls, @JsonKey(name: 'location_name_ru')  String? locationNameRu, @JsonKey(name: 'location_name_uz')  String? locationNameUz, @JsonKey(name: 'refreshed_at')  String? refreshedAt, @JsonKey(name: 'is_promoted')  bool? isPromoted,  ListingSellerDto? seller)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchListingDto() when $default != null:
return $default(_that.id,_that.title,_that.price,_that.description,_that.condition,_that.qualityScore,_that.score,_that.currency,_that.mediaUrls,_that.locationNameRu,_that.locationNameUz,_that.refreshedAt,_that.isPromoted,_that.seller);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  double? price,  String? description,  String? condition, @JsonKey(name: 'quality_score')  double? qualityScore,  double? score,  String? currency, @JsonKey(name: 'media_urls')  List<String>? mediaUrls, @JsonKey(name: 'location_name_ru')  String? locationNameRu, @JsonKey(name: 'location_name_uz')  String? locationNameUz, @JsonKey(name: 'refreshed_at')  String? refreshedAt, @JsonKey(name: 'is_promoted')  bool? isPromoted,  ListingSellerDto? seller)  $default,) {final _that = this;
switch (_that) {
case _SearchListingDto():
return $default(_that.id,_that.title,_that.price,_that.description,_that.condition,_that.qualityScore,_that.score,_that.currency,_that.mediaUrls,_that.locationNameRu,_that.locationNameUz,_that.refreshedAt,_that.isPromoted,_that.seller);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  double? price,  String? description,  String? condition, @JsonKey(name: 'quality_score')  double? qualityScore,  double? score,  String? currency, @JsonKey(name: 'media_urls')  List<String>? mediaUrls, @JsonKey(name: 'location_name_ru')  String? locationNameRu, @JsonKey(name: 'location_name_uz')  String? locationNameUz, @JsonKey(name: 'refreshed_at')  String? refreshedAt, @JsonKey(name: 'is_promoted')  bool? isPromoted,  ListingSellerDto? seller)?  $default,) {final _that = this;
switch (_that) {
case _SearchListingDto() when $default != null:
return $default(_that.id,_that.title,_that.price,_that.description,_that.condition,_that.qualityScore,_that.score,_that.currency,_that.mediaUrls,_that.locationNameRu,_that.locationNameUz,_that.refreshedAt,_that.isPromoted,_that.seller);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SearchListingDto implements SearchListingDto {
  const _SearchListingDto({required this.id, required this.title, this.price, this.description, this.condition, @JsonKey(name: 'quality_score') this.qualityScore, this.score, this.currency, @JsonKey(name: 'media_urls') final  List<String>? mediaUrls, @JsonKey(name: 'location_name_ru') this.locationNameRu, @JsonKey(name: 'location_name_uz') this.locationNameUz, @JsonKey(name: 'refreshed_at') this.refreshedAt, @JsonKey(name: 'is_promoted') this.isPromoted, this.seller}): _mediaUrls = mediaUrls;
  factory _SearchListingDto.fromJson(Map<String, dynamic> json) => _$SearchListingDtoFromJson(json);

@override final  String id;
@override final  String title;
@override final  double? price;
@override final  String? description;
@override final  String? condition;
@override@JsonKey(name: 'quality_score') final  double? qualityScore;
@override final  double? score;
@override final  String? currency;
 final  List<String>? _mediaUrls;
@override@JsonKey(name: 'media_urls') List<String>? get mediaUrls {
  final value = _mediaUrls;
  if (value == null) return null;
  if (_mediaUrls is EqualUnmodifiableListView) return _mediaUrls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'location_name_ru') final  String? locationNameRu;
@override@JsonKey(name: 'location_name_uz') final  String? locationNameUz;
@override@JsonKey(name: 'refreshed_at') final  String? refreshedAt;
@override@JsonKey(name: 'is_promoted') final  bool? isPromoted;
@override final  ListingSellerDto? seller;

/// Create a copy of SearchListingDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchListingDtoCopyWith<_SearchListingDto> get copyWith => __$SearchListingDtoCopyWithImpl<_SearchListingDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchListingDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchListingDto&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.price, price) || other.price == price)&&(identical(other.description, description) || other.description == description)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.qualityScore, qualityScore) || other.qualityScore == qualityScore)&&(identical(other.score, score) || other.score == score)&&(identical(other.currency, currency) || other.currency == currency)&&const DeepCollectionEquality().equals(other._mediaUrls, _mediaUrls)&&(identical(other.locationNameRu, locationNameRu) || other.locationNameRu == locationNameRu)&&(identical(other.locationNameUz, locationNameUz) || other.locationNameUz == locationNameUz)&&(identical(other.refreshedAt, refreshedAt) || other.refreshedAt == refreshedAt)&&(identical(other.isPromoted, isPromoted) || other.isPromoted == isPromoted)&&(identical(other.seller, seller) || other.seller == seller));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,price,description,condition,qualityScore,score,currency,const DeepCollectionEquality().hash(_mediaUrls),locationNameRu,locationNameUz,refreshedAt,isPromoted,seller);

@override
String toString() {
  return 'SearchListingDto(id: $id, title: $title, price: $price, description: $description, condition: $condition, qualityScore: $qualityScore, score: $score, currency: $currency, mediaUrls: $mediaUrls, locationNameRu: $locationNameRu, locationNameUz: $locationNameUz, refreshedAt: $refreshedAt, isPromoted: $isPromoted, seller: $seller)';
}


}

/// @nodoc
abstract mixin class _$SearchListingDtoCopyWith<$Res> implements $SearchListingDtoCopyWith<$Res> {
  factory _$SearchListingDtoCopyWith(_SearchListingDto value, $Res Function(_SearchListingDto) _then) = __$SearchListingDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, double? price, String? description, String? condition,@JsonKey(name: 'quality_score') double? qualityScore, double? score, String? currency,@JsonKey(name: 'media_urls') List<String>? mediaUrls,@JsonKey(name: 'location_name_ru') String? locationNameRu,@JsonKey(name: 'location_name_uz') String? locationNameUz,@JsonKey(name: 'refreshed_at') String? refreshedAt,@JsonKey(name: 'is_promoted') bool? isPromoted, ListingSellerDto? seller
});


@override $ListingSellerDtoCopyWith<$Res>? get seller;

}
/// @nodoc
class __$SearchListingDtoCopyWithImpl<$Res>
    implements _$SearchListingDtoCopyWith<$Res> {
  __$SearchListingDtoCopyWithImpl(this._self, this._then);

  final _SearchListingDto _self;
  final $Res Function(_SearchListingDto) _then;

/// Create a copy of SearchListingDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? price = freezed,Object? description = freezed,Object? condition = freezed,Object? qualityScore = freezed,Object? score = freezed,Object? currency = freezed,Object? mediaUrls = freezed,Object? locationNameRu = freezed,Object? locationNameUz = freezed,Object? refreshedAt = freezed,Object? isPromoted = freezed,Object? seller = freezed,}) {
  return _then(_SearchListingDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,condition: freezed == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as String?,qualityScore: freezed == qualityScore ? _self.qualityScore : qualityScore // ignore: cast_nullable_to_non_nullable
as double?,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as double?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,mediaUrls: freezed == mediaUrls ? _self._mediaUrls : mediaUrls // ignore: cast_nullable_to_non_nullable
as List<String>?,locationNameRu: freezed == locationNameRu ? _self.locationNameRu : locationNameRu // ignore: cast_nullable_to_non_nullable
as String?,locationNameUz: freezed == locationNameUz ? _self.locationNameUz : locationNameUz // ignore: cast_nullable_to_non_nullable
as String?,refreshedAt: freezed == refreshedAt ? _self.refreshedAt : refreshedAt // ignore: cast_nullable_to_non_nullable
as String?,isPromoted: freezed == isPromoted ? _self.isPromoted : isPromoted // ignore: cast_nullable_to_non_nullable
as bool?,seller: freezed == seller ? _self.seller : seller // ignore: cast_nullable_to_non_nullable
as ListingSellerDto?,
  ));
}

/// Create a copy of SearchListingDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ListingSellerDtoCopyWith<$Res>? get seller {
    if (_self.seller == null) {
    return null;
  }

  return $ListingSellerDtoCopyWith<$Res>(_self.seller!, (value) {
    return _then(_self.copyWith(seller: value));
  });
}
}


/// @nodoc
mixin _$SearchFacetOptionDto {

 String? get key; int? get count;
/// Create a copy of SearchFacetOptionDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchFacetOptionDtoCopyWith<SearchFacetOptionDto> get copyWith => _$SearchFacetOptionDtoCopyWithImpl<SearchFacetOptionDto>(this as SearchFacetOptionDto, _$identity);

  /// Serializes this SearchFacetOptionDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchFacetOptionDto&&(identical(other.key, key) || other.key == key)&&(identical(other.count, count) || other.count == count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,key,count);

@override
String toString() {
  return 'SearchFacetOptionDto(key: $key, count: $count)';
}


}

/// @nodoc
abstract mixin class $SearchFacetOptionDtoCopyWith<$Res>  {
  factory $SearchFacetOptionDtoCopyWith(SearchFacetOptionDto value, $Res Function(SearchFacetOptionDto) _then) = _$SearchFacetOptionDtoCopyWithImpl;
@useResult
$Res call({
 String? key, int? count
});




}
/// @nodoc
class _$SearchFacetOptionDtoCopyWithImpl<$Res>
    implements $SearchFacetOptionDtoCopyWith<$Res> {
  _$SearchFacetOptionDtoCopyWithImpl(this._self, this._then);

  final SearchFacetOptionDto _self;
  final $Res Function(SearchFacetOptionDto) _then;

/// Create a copy of SearchFacetOptionDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? key = freezed,Object? count = freezed,}) {
  return _then(_self.copyWith(
key: freezed == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String?,count: freezed == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchFacetOptionDto].
extension SearchFacetOptionDtoPatterns on SearchFacetOptionDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchFacetOptionDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchFacetOptionDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchFacetOptionDto value)  $default,){
final _that = this;
switch (_that) {
case _SearchFacetOptionDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchFacetOptionDto value)?  $default,){
final _that = this;
switch (_that) {
case _SearchFacetOptionDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? key,  int? count)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchFacetOptionDto() when $default != null:
return $default(_that.key,_that.count);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? key,  int? count)  $default,) {final _that = this;
switch (_that) {
case _SearchFacetOptionDto():
return $default(_that.key,_that.count);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? key,  int? count)?  $default,) {final _that = this;
switch (_that) {
case _SearchFacetOptionDto() when $default != null:
return $default(_that.key,_that.count);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SearchFacetOptionDto implements SearchFacetOptionDto {
  const _SearchFacetOptionDto({this.key, this.count});
  factory _SearchFacetOptionDto.fromJson(Map<String, dynamic> json) => _$SearchFacetOptionDtoFromJson(json);

@override final  String? key;
@override final  int? count;

/// Create a copy of SearchFacetOptionDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchFacetOptionDtoCopyWith<_SearchFacetOptionDto> get copyWith => __$SearchFacetOptionDtoCopyWithImpl<_SearchFacetOptionDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchFacetOptionDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchFacetOptionDto&&(identical(other.key, key) || other.key == key)&&(identical(other.count, count) || other.count == count));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,key,count);

@override
String toString() {
  return 'SearchFacetOptionDto(key: $key, count: $count)';
}


}

/// @nodoc
abstract mixin class _$SearchFacetOptionDtoCopyWith<$Res> implements $SearchFacetOptionDtoCopyWith<$Res> {
  factory _$SearchFacetOptionDtoCopyWith(_SearchFacetOptionDto value, $Res Function(_SearchFacetOptionDto) _then) = __$SearchFacetOptionDtoCopyWithImpl;
@override @useResult
$Res call({
 String? key, int? count
});




}
/// @nodoc
class __$SearchFacetOptionDtoCopyWithImpl<$Res>
    implements _$SearchFacetOptionDtoCopyWith<$Res> {
  __$SearchFacetOptionDtoCopyWithImpl(this._self, this._then);

  final _SearchFacetOptionDto _self;
  final $Res Function(_SearchFacetOptionDto) _then;

/// Create a copy of SearchFacetOptionDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? key = freezed,Object? count = freezed,}) {
  return _then(_SearchFacetOptionDto(
key: freezed == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String?,count: freezed == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$SearchPriceRangeFacetDto {

 double? get min; double? get max; String? get currency;
/// Create a copy of SearchPriceRangeFacetDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchPriceRangeFacetDtoCopyWith<SearchPriceRangeFacetDto> get copyWith => _$SearchPriceRangeFacetDtoCopyWithImpl<SearchPriceRangeFacetDto>(this as SearchPriceRangeFacetDto, _$identity);

  /// Serializes this SearchPriceRangeFacetDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchPriceRangeFacetDto&&(identical(other.min, min) || other.min == min)&&(identical(other.max, max) || other.max == max)&&(identical(other.currency, currency) || other.currency == currency));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,min,max,currency);

@override
String toString() {
  return 'SearchPriceRangeFacetDto(min: $min, max: $max, currency: $currency)';
}


}

/// @nodoc
abstract mixin class $SearchPriceRangeFacetDtoCopyWith<$Res>  {
  factory $SearchPriceRangeFacetDtoCopyWith(SearchPriceRangeFacetDto value, $Res Function(SearchPriceRangeFacetDto) _then) = _$SearchPriceRangeFacetDtoCopyWithImpl;
@useResult
$Res call({
 double? min, double? max, String? currency
});




}
/// @nodoc
class _$SearchPriceRangeFacetDtoCopyWithImpl<$Res>
    implements $SearchPriceRangeFacetDtoCopyWith<$Res> {
  _$SearchPriceRangeFacetDtoCopyWithImpl(this._self, this._then);

  final SearchPriceRangeFacetDto _self;
  final $Res Function(SearchPriceRangeFacetDto) _then;

/// Create a copy of SearchPriceRangeFacetDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? min = freezed,Object? max = freezed,Object? currency = freezed,}) {
  return _then(_self.copyWith(
min: freezed == min ? _self.min : min // ignore: cast_nullable_to_non_nullable
as double?,max: freezed == max ? _self.max : max // ignore: cast_nullable_to_non_nullable
as double?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchPriceRangeFacetDto].
extension SearchPriceRangeFacetDtoPatterns on SearchPriceRangeFacetDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchPriceRangeFacetDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchPriceRangeFacetDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchPriceRangeFacetDto value)  $default,){
final _that = this;
switch (_that) {
case _SearchPriceRangeFacetDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchPriceRangeFacetDto value)?  $default,){
final _that = this;
switch (_that) {
case _SearchPriceRangeFacetDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double? min,  double? max,  String? currency)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchPriceRangeFacetDto() when $default != null:
return $default(_that.min,_that.max,_that.currency);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double? min,  double? max,  String? currency)  $default,) {final _that = this;
switch (_that) {
case _SearchPriceRangeFacetDto():
return $default(_that.min,_that.max,_that.currency);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double? min,  double? max,  String? currency)?  $default,) {final _that = this;
switch (_that) {
case _SearchPriceRangeFacetDto() when $default != null:
return $default(_that.min,_that.max,_that.currency);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SearchPriceRangeFacetDto implements SearchPriceRangeFacetDto {
  const _SearchPriceRangeFacetDto({this.min, this.max, this.currency});
  factory _SearchPriceRangeFacetDto.fromJson(Map<String, dynamic> json) => _$SearchPriceRangeFacetDtoFromJson(json);

@override final  double? min;
@override final  double? max;
@override final  String? currency;

/// Create a copy of SearchPriceRangeFacetDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchPriceRangeFacetDtoCopyWith<_SearchPriceRangeFacetDto> get copyWith => __$SearchPriceRangeFacetDtoCopyWithImpl<_SearchPriceRangeFacetDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchPriceRangeFacetDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchPriceRangeFacetDto&&(identical(other.min, min) || other.min == min)&&(identical(other.max, max) || other.max == max)&&(identical(other.currency, currency) || other.currency == currency));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,min,max,currency);

@override
String toString() {
  return 'SearchPriceRangeFacetDto(min: $min, max: $max, currency: $currency)';
}


}

/// @nodoc
abstract mixin class _$SearchPriceRangeFacetDtoCopyWith<$Res> implements $SearchPriceRangeFacetDtoCopyWith<$Res> {
  factory _$SearchPriceRangeFacetDtoCopyWith(_SearchPriceRangeFacetDto value, $Res Function(_SearchPriceRangeFacetDto) _then) = __$SearchPriceRangeFacetDtoCopyWithImpl;
@override @useResult
$Res call({
 double? min, double? max, String? currency
});




}
/// @nodoc
class __$SearchPriceRangeFacetDtoCopyWithImpl<$Res>
    implements _$SearchPriceRangeFacetDtoCopyWith<$Res> {
  __$SearchPriceRangeFacetDtoCopyWithImpl(this._self, this._then);

  final _SearchPriceRangeFacetDto _self;
  final $Res Function(_SearchPriceRangeFacetDto) _then;

/// Create a copy of SearchPriceRangeFacetDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? min = freezed,Object? max = freezed,Object? currency = freezed,}) {
  return _then(_SearchPriceRangeFacetDto(
min: freezed == min ? _self.min : min // ignore: cast_nullable_to_non_nullable
as double?,max: freezed == max ? _self.max : max // ignore: cast_nullable_to_non_nullable
as double?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$SearchFacetsDto {

 List<SearchFacetOptionDto>? get categories; List<SearchFacetOptionDto>? get locations; List<SearchFacetOptionDto>? get conditions;@JsonKey(name: 'price_range') SearchPriceRangeFacetDto? get priceRange; Map<String, List<SearchFacetOptionDto>?>? get attributes;
/// Create a copy of SearchFacetsDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchFacetsDtoCopyWith<SearchFacetsDto> get copyWith => _$SearchFacetsDtoCopyWithImpl<SearchFacetsDto>(this as SearchFacetsDto, _$identity);

  /// Serializes this SearchFacetsDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchFacetsDto&&const DeepCollectionEquality().equals(other.categories, categories)&&const DeepCollectionEquality().equals(other.locations, locations)&&const DeepCollectionEquality().equals(other.conditions, conditions)&&(identical(other.priceRange, priceRange) || other.priceRange == priceRange)&&const DeepCollectionEquality().equals(other.attributes, attributes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(categories),const DeepCollectionEquality().hash(locations),const DeepCollectionEquality().hash(conditions),priceRange,const DeepCollectionEquality().hash(attributes));

@override
String toString() {
  return 'SearchFacetsDto(categories: $categories, locations: $locations, conditions: $conditions, priceRange: $priceRange, attributes: $attributes)';
}


}

/// @nodoc
abstract mixin class $SearchFacetsDtoCopyWith<$Res>  {
  factory $SearchFacetsDtoCopyWith(SearchFacetsDto value, $Res Function(SearchFacetsDto) _then) = _$SearchFacetsDtoCopyWithImpl;
@useResult
$Res call({
 List<SearchFacetOptionDto>? categories, List<SearchFacetOptionDto>? locations, List<SearchFacetOptionDto>? conditions,@JsonKey(name: 'price_range') SearchPriceRangeFacetDto? priceRange, Map<String, List<SearchFacetOptionDto>?>? attributes
});


$SearchPriceRangeFacetDtoCopyWith<$Res>? get priceRange;

}
/// @nodoc
class _$SearchFacetsDtoCopyWithImpl<$Res>
    implements $SearchFacetsDtoCopyWith<$Res> {
  _$SearchFacetsDtoCopyWithImpl(this._self, this._then);

  final SearchFacetsDto _self;
  final $Res Function(SearchFacetsDto) _then;

/// Create a copy of SearchFacetsDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? categories = freezed,Object? locations = freezed,Object? conditions = freezed,Object? priceRange = freezed,Object? attributes = freezed,}) {
  return _then(_self.copyWith(
categories: freezed == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<SearchFacetOptionDto>?,locations: freezed == locations ? _self.locations : locations // ignore: cast_nullable_to_non_nullable
as List<SearchFacetOptionDto>?,conditions: freezed == conditions ? _self.conditions : conditions // ignore: cast_nullable_to_non_nullable
as List<SearchFacetOptionDto>?,priceRange: freezed == priceRange ? _self.priceRange : priceRange // ignore: cast_nullable_to_non_nullable
as SearchPriceRangeFacetDto?,attributes: freezed == attributes ? _self.attributes : attributes // ignore: cast_nullable_to_non_nullable
as Map<String, List<SearchFacetOptionDto>?>?,
  ));
}
/// Create a copy of SearchFacetsDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchPriceRangeFacetDtoCopyWith<$Res>? get priceRange {
    if (_self.priceRange == null) {
    return null;
  }

  return $SearchPriceRangeFacetDtoCopyWith<$Res>(_self.priceRange!, (value) {
    return _then(_self.copyWith(priceRange: value));
  });
}
}


/// Adds pattern-matching-related methods to [SearchFacetsDto].
extension SearchFacetsDtoPatterns on SearchFacetsDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchFacetsDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchFacetsDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchFacetsDto value)  $default,){
final _that = this;
switch (_that) {
case _SearchFacetsDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchFacetsDto value)?  $default,){
final _that = this;
switch (_that) {
case _SearchFacetsDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<SearchFacetOptionDto>? categories,  List<SearchFacetOptionDto>? locations,  List<SearchFacetOptionDto>? conditions, @JsonKey(name: 'price_range')  SearchPriceRangeFacetDto? priceRange,  Map<String, List<SearchFacetOptionDto>?>? attributes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchFacetsDto() when $default != null:
return $default(_that.categories,_that.locations,_that.conditions,_that.priceRange,_that.attributes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<SearchFacetOptionDto>? categories,  List<SearchFacetOptionDto>? locations,  List<SearchFacetOptionDto>? conditions, @JsonKey(name: 'price_range')  SearchPriceRangeFacetDto? priceRange,  Map<String, List<SearchFacetOptionDto>?>? attributes)  $default,) {final _that = this;
switch (_that) {
case _SearchFacetsDto():
return $default(_that.categories,_that.locations,_that.conditions,_that.priceRange,_that.attributes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<SearchFacetOptionDto>? categories,  List<SearchFacetOptionDto>? locations,  List<SearchFacetOptionDto>? conditions, @JsonKey(name: 'price_range')  SearchPriceRangeFacetDto? priceRange,  Map<String, List<SearchFacetOptionDto>?>? attributes)?  $default,) {final _that = this;
switch (_that) {
case _SearchFacetsDto() when $default != null:
return $default(_that.categories,_that.locations,_that.conditions,_that.priceRange,_that.attributes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SearchFacetsDto implements SearchFacetsDto {
  const _SearchFacetsDto({final  List<SearchFacetOptionDto>? categories, final  List<SearchFacetOptionDto>? locations, final  List<SearchFacetOptionDto>? conditions, @JsonKey(name: 'price_range') this.priceRange, final  Map<String, List<SearchFacetOptionDto>?>? attributes}): _categories = categories,_locations = locations,_conditions = conditions,_attributes = attributes;
  factory _SearchFacetsDto.fromJson(Map<String, dynamic> json) => _$SearchFacetsDtoFromJson(json);

 final  List<SearchFacetOptionDto>? _categories;
@override List<SearchFacetOptionDto>? get categories {
  final value = _categories;
  if (value == null) return null;
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<SearchFacetOptionDto>? _locations;
@override List<SearchFacetOptionDto>? get locations {
  final value = _locations;
  if (value == null) return null;
  if (_locations is EqualUnmodifiableListView) return _locations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<SearchFacetOptionDto>? _conditions;
@override List<SearchFacetOptionDto>? get conditions {
  final value = _conditions;
  if (value == null) return null;
  if (_conditions is EqualUnmodifiableListView) return _conditions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'price_range') final  SearchPriceRangeFacetDto? priceRange;
 final  Map<String, List<SearchFacetOptionDto>?>? _attributes;
@override Map<String, List<SearchFacetOptionDto>?>? get attributes {
  final value = _attributes;
  if (value == null) return null;
  if (_attributes is EqualUnmodifiableMapView) return _attributes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of SearchFacetsDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchFacetsDtoCopyWith<_SearchFacetsDto> get copyWith => __$SearchFacetsDtoCopyWithImpl<_SearchFacetsDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchFacetsDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchFacetsDto&&const DeepCollectionEquality().equals(other._categories, _categories)&&const DeepCollectionEquality().equals(other._locations, _locations)&&const DeepCollectionEquality().equals(other._conditions, _conditions)&&(identical(other.priceRange, priceRange) || other.priceRange == priceRange)&&const DeepCollectionEquality().equals(other._attributes, _attributes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_categories),const DeepCollectionEquality().hash(_locations),const DeepCollectionEquality().hash(_conditions),priceRange,const DeepCollectionEquality().hash(_attributes));

@override
String toString() {
  return 'SearchFacetsDto(categories: $categories, locations: $locations, conditions: $conditions, priceRange: $priceRange, attributes: $attributes)';
}


}

/// @nodoc
abstract mixin class _$SearchFacetsDtoCopyWith<$Res> implements $SearchFacetsDtoCopyWith<$Res> {
  factory _$SearchFacetsDtoCopyWith(_SearchFacetsDto value, $Res Function(_SearchFacetsDto) _then) = __$SearchFacetsDtoCopyWithImpl;
@override @useResult
$Res call({
 List<SearchFacetOptionDto>? categories, List<SearchFacetOptionDto>? locations, List<SearchFacetOptionDto>? conditions,@JsonKey(name: 'price_range') SearchPriceRangeFacetDto? priceRange, Map<String, List<SearchFacetOptionDto>?>? attributes
});


@override $SearchPriceRangeFacetDtoCopyWith<$Res>? get priceRange;

}
/// @nodoc
class __$SearchFacetsDtoCopyWithImpl<$Res>
    implements _$SearchFacetsDtoCopyWith<$Res> {
  __$SearchFacetsDtoCopyWithImpl(this._self, this._then);

  final _SearchFacetsDto _self;
  final $Res Function(_SearchFacetsDto) _then;

/// Create a copy of SearchFacetsDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? categories = freezed,Object? locations = freezed,Object? conditions = freezed,Object? priceRange = freezed,Object? attributes = freezed,}) {
  return _then(_SearchFacetsDto(
categories: freezed == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<SearchFacetOptionDto>?,locations: freezed == locations ? _self._locations : locations // ignore: cast_nullable_to_non_nullable
as List<SearchFacetOptionDto>?,conditions: freezed == conditions ? _self._conditions : conditions // ignore: cast_nullable_to_non_nullable
as List<SearchFacetOptionDto>?,priceRange: freezed == priceRange ? _self.priceRange : priceRange // ignore: cast_nullable_to_non_nullable
as SearchPriceRangeFacetDto?,attributes: freezed == attributes ? _self._attributes : attributes // ignore: cast_nullable_to_non_nullable
as Map<String, List<SearchFacetOptionDto>?>?,
  ));
}

/// Create a copy of SearchFacetsDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchPriceRangeFacetDtoCopyWith<$Res>? get priceRange {
    if (_self.priceRange == null) {
    return null;
  }

  return $SearchPriceRangeFacetDtoCopyWith<$Res>(_self.priceRange!, (value) {
    return _then(_self.copyWith(priceRange: value));
  });
}
}


/// @nodoc
mixin _$SearchResultDto {

 List<SearchListingDto>? get results; int? get total; int? get page;@JsonKey(name: 'per_page') int? get perPage; SearchFacetsDto? get facets;
/// Create a copy of SearchResultDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchResultDtoCopyWith<SearchResultDto> get copyWith => _$SearchResultDtoCopyWithImpl<SearchResultDto>(this as SearchResultDto, _$identity);

  /// Serializes this SearchResultDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchResultDto&&const DeepCollectionEquality().equals(other.results, results)&&(identical(other.total, total) || other.total == total)&&(identical(other.page, page) || other.page == page)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.facets, facets) || other.facets == facets));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(results),total,page,perPage,facets);

@override
String toString() {
  return 'SearchResultDto(results: $results, total: $total, page: $page, perPage: $perPage, facets: $facets)';
}


}

/// @nodoc
abstract mixin class $SearchResultDtoCopyWith<$Res>  {
  factory $SearchResultDtoCopyWith(SearchResultDto value, $Res Function(SearchResultDto) _then) = _$SearchResultDtoCopyWithImpl;
@useResult
$Res call({
 List<SearchListingDto>? results, int? total, int? page,@JsonKey(name: 'per_page') int? perPage, SearchFacetsDto? facets
});


$SearchFacetsDtoCopyWith<$Res>? get facets;

}
/// @nodoc
class _$SearchResultDtoCopyWithImpl<$Res>
    implements $SearchResultDtoCopyWith<$Res> {
  _$SearchResultDtoCopyWithImpl(this._self, this._then);

  final SearchResultDto _self;
  final $Res Function(SearchResultDto) _then;

/// Create a copy of SearchResultDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? results = freezed,Object? total = freezed,Object? page = freezed,Object? perPage = freezed,Object? facets = freezed,}) {
  return _then(_self.copyWith(
results: freezed == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<SearchListingDto>?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,perPage: freezed == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int?,facets: freezed == facets ? _self.facets : facets // ignore: cast_nullable_to_non_nullable
as SearchFacetsDto?,
  ));
}
/// Create a copy of SearchResultDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchFacetsDtoCopyWith<$Res>? get facets {
    if (_self.facets == null) {
    return null;
  }

  return $SearchFacetsDtoCopyWith<$Res>(_self.facets!, (value) {
    return _then(_self.copyWith(facets: value));
  });
}
}


/// Adds pattern-matching-related methods to [SearchResultDto].
extension SearchResultDtoPatterns on SearchResultDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchResultDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchResultDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchResultDto value)  $default,){
final _that = this;
switch (_that) {
case _SearchResultDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchResultDto value)?  $default,){
final _that = this;
switch (_that) {
case _SearchResultDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<SearchListingDto>? results,  int? total,  int? page, @JsonKey(name: 'per_page')  int? perPage,  SearchFacetsDto? facets)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchResultDto() when $default != null:
return $default(_that.results,_that.total,_that.page,_that.perPage,_that.facets);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<SearchListingDto>? results,  int? total,  int? page, @JsonKey(name: 'per_page')  int? perPage,  SearchFacetsDto? facets)  $default,) {final _that = this;
switch (_that) {
case _SearchResultDto():
return $default(_that.results,_that.total,_that.page,_that.perPage,_that.facets);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<SearchListingDto>? results,  int? total,  int? page, @JsonKey(name: 'per_page')  int? perPage,  SearchFacetsDto? facets)?  $default,) {final _that = this;
switch (_that) {
case _SearchResultDto() when $default != null:
return $default(_that.results,_that.total,_that.page,_that.perPage,_that.facets);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SearchResultDto implements SearchResultDto {
  const _SearchResultDto({final  List<SearchListingDto>? results, this.total, this.page, @JsonKey(name: 'per_page') this.perPage, this.facets}): _results = results;
  factory _SearchResultDto.fromJson(Map<String, dynamic> json) => _$SearchResultDtoFromJson(json);

 final  List<SearchListingDto>? _results;
@override List<SearchListingDto>? get results {
  final value = _results;
  if (value == null) return null;
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  int? total;
@override final  int? page;
@override@JsonKey(name: 'per_page') final  int? perPage;
@override final  SearchFacetsDto? facets;

/// Create a copy of SearchResultDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchResultDtoCopyWith<_SearchResultDto> get copyWith => __$SearchResultDtoCopyWithImpl<_SearchResultDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchResultDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchResultDto&&const DeepCollectionEquality().equals(other._results, _results)&&(identical(other.total, total) || other.total == total)&&(identical(other.page, page) || other.page == page)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.facets, facets) || other.facets == facets));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_results),total,page,perPage,facets);

@override
String toString() {
  return 'SearchResultDto(results: $results, total: $total, page: $page, perPage: $perPage, facets: $facets)';
}


}

/// @nodoc
abstract mixin class _$SearchResultDtoCopyWith<$Res> implements $SearchResultDtoCopyWith<$Res> {
  factory _$SearchResultDtoCopyWith(_SearchResultDto value, $Res Function(_SearchResultDto) _then) = __$SearchResultDtoCopyWithImpl;
@override @useResult
$Res call({
 List<SearchListingDto>? results, int? total, int? page,@JsonKey(name: 'per_page') int? perPage, SearchFacetsDto? facets
});


@override $SearchFacetsDtoCopyWith<$Res>? get facets;

}
/// @nodoc
class __$SearchResultDtoCopyWithImpl<$Res>
    implements _$SearchResultDtoCopyWith<$Res> {
  __$SearchResultDtoCopyWithImpl(this._self, this._then);

  final _SearchResultDto _self;
  final $Res Function(_SearchResultDto) _then;

/// Create a copy of SearchResultDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? results = freezed,Object? total = freezed,Object? page = freezed,Object? perPage = freezed,Object? facets = freezed,}) {
  return _then(_SearchResultDto(
results: freezed == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<SearchListingDto>?,total: freezed == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int?,page: freezed == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int?,perPage: freezed == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int?,facets: freezed == facets ? _self.facets : facets // ignore: cast_nullable_to_non_nullable
as SearchFacetsDto?,
  ));
}

/// Create a copy of SearchResultDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchFacetsDtoCopyWith<$Res>? get facets {
    if (_self.facets == null) {
    return null;
  }

  return $SearchFacetsDtoCopyWith<$Res>(_self.facets!, (value) {
    return _then(_self.copyWith(facets: value));
  });
}
}

// dart format on
