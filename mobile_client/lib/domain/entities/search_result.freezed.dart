// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchListing {

 String get id; String get title; double? get price; String? get description; String? get condition; double? get qualityScore; double? get score; String? get currency; List<String>? get mediaUrls; String? get locationNameRu; String? get locationNameUz; String? get refreshedAt; bool? get isPromoted; ListingSeller? get seller;
/// Create a copy of SearchListing
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchListingCopyWith<SearchListing> get copyWith => _$SearchListingCopyWithImpl<SearchListing>(this as SearchListing, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchListing&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.price, price) || other.price == price)&&(identical(other.description, description) || other.description == description)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.qualityScore, qualityScore) || other.qualityScore == qualityScore)&&(identical(other.score, score) || other.score == score)&&(identical(other.currency, currency) || other.currency == currency)&&const DeepCollectionEquality().equals(other.mediaUrls, mediaUrls)&&(identical(other.locationNameRu, locationNameRu) || other.locationNameRu == locationNameRu)&&(identical(other.locationNameUz, locationNameUz) || other.locationNameUz == locationNameUz)&&(identical(other.refreshedAt, refreshedAt) || other.refreshedAt == refreshedAt)&&(identical(other.isPromoted, isPromoted) || other.isPromoted == isPromoted)&&(identical(other.seller, seller) || other.seller == seller));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,price,description,condition,qualityScore,score,currency,const DeepCollectionEquality().hash(mediaUrls),locationNameRu,locationNameUz,refreshedAt,isPromoted,seller);

@override
String toString() {
  return 'SearchListing(id: $id, title: $title, price: $price, description: $description, condition: $condition, qualityScore: $qualityScore, score: $score, currency: $currency, mediaUrls: $mediaUrls, locationNameRu: $locationNameRu, locationNameUz: $locationNameUz, refreshedAt: $refreshedAt, isPromoted: $isPromoted, seller: $seller)';
}


}

/// @nodoc
abstract mixin class $SearchListingCopyWith<$Res>  {
  factory $SearchListingCopyWith(SearchListing value, $Res Function(SearchListing) _then) = _$SearchListingCopyWithImpl;
@useResult
$Res call({
 String id, String title, double? price, String? description, String? condition, double? qualityScore, double? score, String? currency, List<String>? mediaUrls, String? locationNameRu, String? locationNameUz, String? refreshedAt, bool? isPromoted, ListingSeller? seller
});


$ListingSellerCopyWith<$Res>? get seller;

}
/// @nodoc
class _$SearchListingCopyWithImpl<$Res>
    implements $SearchListingCopyWith<$Res> {
  _$SearchListingCopyWithImpl(this._self, this._then);

  final SearchListing _self;
  final $Res Function(SearchListing) _then;

/// Create a copy of SearchListing
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
as ListingSeller?,
  ));
}
/// Create a copy of SearchListing
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ListingSellerCopyWith<$Res>? get seller {
    if (_self.seller == null) {
    return null;
  }

  return $ListingSellerCopyWith<$Res>(_self.seller!, (value) {
    return _then(_self.copyWith(seller: value));
  });
}
}


/// Adds pattern-matching-related methods to [SearchListing].
extension SearchListingPatterns on SearchListing {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchListing value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchListing() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchListing value)  $default,){
final _that = this;
switch (_that) {
case _SearchListing():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchListing value)?  $default,){
final _that = this;
switch (_that) {
case _SearchListing() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  double? price,  String? description,  String? condition,  double? qualityScore,  double? score,  String? currency,  List<String>? mediaUrls,  String? locationNameRu,  String? locationNameUz,  String? refreshedAt,  bool? isPromoted,  ListingSeller? seller)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchListing() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  double? price,  String? description,  String? condition,  double? qualityScore,  double? score,  String? currency,  List<String>? mediaUrls,  String? locationNameRu,  String? locationNameUz,  String? refreshedAt,  bool? isPromoted,  ListingSeller? seller)  $default,) {final _that = this;
switch (_that) {
case _SearchListing():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  double? price,  String? description,  String? condition,  double? qualityScore,  double? score,  String? currency,  List<String>? mediaUrls,  String? locationNameRu,  String? locationNameUz,  String? refreshedAt,  bool? isPromoted,  ListingSeller? seller)?  $default,) {final _that = this;
switch (_that) {
case _SearchListing() when $default != null:
return $default(_that.id,_that.title,_that.price,_that.description,_that.condition,_that.qualityScore,_that.score,_that.currency,_that.mediaUrls,_that.locationNameRu,_that.locationNameUz,_that.refreshedAt,_that.isPromoted,_that.seller);case _:
  return null;

}
}

}

/// @nodoc


class _SearchListing implements SearchListing {
  const _SearchListing({required this.id, required this.title, this.price, this.description, this.condition, this.qualityScore, this.score, this.currency, final  List<String>? mediaUrls, this.locationNameRu, this.locationNameUz, this.refreshedAt, this.isPromoted, this.seller}): _mediaUrls = mediaUrls;
  

@override final  String id;
@override final  String title;
@override final  double? price;
@override final  String? description;
@override final  String? condition;
@override final  double? qualityScore;
@override final  double? score;
@override final  String? currency;
 final  List<String>? _mediaUrls;
@override List<String>? get mediaUrls {
  final value = _mediaUrls;
  if (value == null) return null;
  if (_mediaUrls is EqualUnmodifiableListView) return _mediaUrls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? locationNameRu;
@override final  String? locationNameUz;
@override final  String? refreshedAt;
@override final  bool? isPromoted;
@override final  ListingSeller? seller;

/// Create a copy of SearchListing
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchListingCopyWith<_SearchListing> get copyWith => __$SearchListingCopyWithImpl<_SearchListing>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchListing&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.price, price) || other.price == price)&&(identical(other.description, description) || other.description == description)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.qualityScore, qualityScore) || other.qualityScore == qualityScore)&&(identical(other.score, score) || other.score == score)&&(identical(other.currency, currency) || other.currency == currency)&&const DeepCollectionEquality().equals(other._mediaUrls, _mediaUrls)&&(identical(other.locationNameRu, locationNameRu) || other.locationNameRu == locationNameRu)&&(identical(other.locationNameUz, locationNameUz) || other.locationNameUz == locationNameUz)&&(identical(other.refreshedAt, refreshedAt) || other.refreshedAt == refreshedAt)&&(identical(other.isPromoted, isPromoted) || other.isPromoted == isPromoted)&&(identical(other.seller, seller) || other.seller == seller));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,price,description,condition,qualityScore,score,currency,const DeepCollectionEquality().hash(_mediaUrls),locationNameRu,locationNameUz,refreshedAt,isPromoted,seller);

@override
String toString() {
  return 'SearchListing(id: $id, title: $title, price: $price, description: $description, condition: $condition, qualityScore: $qualityScore, score: $score, currency: $currency, mediaUrls: $mediaUrls, locationNameRu: $locationNameRu, locationNameUz: $locationNameUz, refreshedAt: $refreshedAt, isPromoted: $isPromoted, seller: $seller)';
}


}

/// @nodoc
abstract mixin class _$SearchListingCopyWith<$Res> implements $SearchListingCopyWith<$Res> {
  factory _$SearchListingCopyWith(_SearchListing value, $Res Function(_SearchListing) _then) = __$SearchListingCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, double? price, String? description, String? condition, double? qualityScore, double? score, String? currency, List<String>? mediaUrls, String? locationNameRu, String? locationNameUz, String? refreshedAt, bool? isPromoted, ListingSeller? seller
});


@override $ListingSellerCopyWith<$Res>? get seller;

}
/// @nodoc
class __$SearchListingCopyWithImpl<$Res>
    implements _$SearchListingCopyWith<$Res> {
  __$SearchListingCopyWithImpl(this._self, this._then);

  final _SearchListing _self;
  final $Res Function(_SearchListing) _then;

/// Create a copy of SearchListing
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? price = freezed,Object? description = freezed,Object? condition = freezed,Object? qualityScore = freezed,Object? score = freezed,Object? currency = freezed,Object? mediaUrls = freezed,Object? locationNameRu = freezed,Object? locationNameUz = freezed,Object? refreshedAt = freezed,Object? isPromoted = freezed,Object? seller = freezed,}) {
  return _then(_SearchListing(
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
as ListingSeller?,
  ));
}

/// Create a copy of SearchListing
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ListingSellerCopyWith<$Res>? get seller {
    if (_self.seller == null) {
    return null;
  }

  return $ListingSellerCopyWith<$Res>(_self.seller!, (value) {
    return _then(_self.copyWith(seller: value));
  });
}
}

/// @nodoc
mixin _$SearchFacetOption {

 String? get key; int? get count;
/// Create a copy of SearchFacetOption
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchFacetOptionCopyWith<SearchFacetOption> get copyWith => _$SearchFacetOptionCopyWithImpl<SearchFacetOption>(this as SearchFacetOption, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchFacetOption&&(identical(other.key, key) || other.key == key)&&(identical(other.count, count) || other.count == count));
}


@override
int get hashCode => Object.hash(runtimeType,key,count);

@override
String toString() {
  return 'SearchFacetOption(key: $key, count: $count)';
}


}

/// @nodoc
abstract mixin class $SearchFacetOptionCopyWith<$Res>  {
  factory $SearchFacetOptionCopyWith(SearchFacetOption value, $Res Function(SearchFacetOption) _then) = _$SearchFacetOptionCopyWithImpl;
@useResult
$Res call({
 String? key, int? count
});




}
/// @nodoc
class _$SearchFacetOptionCopyWithImpl<$Res>
    implements $SearchFacetOptionCopyWith<$Res> {
  _$SearchFacetOptionCopyWithImpl(this._self, this._then);

  final SearchFacetOption _self;
  final $Res Function(SearchFacetOption) _then;

/// Create a copy of SearchFacetOption
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? key = freezed,Object? count = freezed,}) {
  return _then(_self.copyWith(
key: freezed == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String?,count: freezed == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchFacetOption].
extension SearchFacetOptionPatterns on SearchFacetOption {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchFacetOption value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchFacetOption() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchFacetOption value)  $default,){
final _that = this;
switch (_that) {
case _SearchFacetOption():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchFacetOption value)?  $default,){
final _that = this;
switch (_that) {
case _SearchFacetOption() when $default != null:
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
case _SearchFacetOption() when $default != null:
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
case _SearchFacetOption():
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
case _SearchFacetOption() when $default != null:
return $default(_that.key,_that.count);case _:
  return null;

}
}

}

/// @nodoc


class _SearchFacetOption implements SearchFacetOption {
  const _SearchFacetOption({this.key, this.count});
  

@override final  String? key;
@override final  int? count;

/// Create a copy of SearchFacetOption
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchFacetOptionCopyWith<_SearchFacetOption> get copyWith => __$SearchFacetOptionCopyWithImpl<_SearchFacetOption>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchFacetOption&&(identical(other.key, key) || other.key == key)&&(identical(other.count, count) || other.count == count));
}


@override
int get hashCode => Object.hash(runtimeType,key,count);

@override
String toString() {
  return 'SearchFacetOption(key: $key, count: $count)';
}


}

/// @nodoc
abstract mixin class _$SearchFacetOptionCopyWith<$Res> implements $SearchFacetOptionCopyWith<$Res> {
  factory _$SearchFacetOptionCopyWith(_SearchFacetOption value, $Res Function(_SearchFacetOption) _then) = __$SearchFacetOptionCopyWithImpl;
@override @useResult
$Res call({
 String? key, int? count
});




}
/// @nodoc
class __$SearchFacetOptionCopyWithImpl<$Res>
    implements _$SearchFacetOptionCopyWith<$Res> {
  __$SearchFacetOptionCopyWithImpl(this._self, this._then);

  final _SearchFacetOption _self;
  final $Res Function(_SearchFacetOption) _then;

/// Create a copy of SearchFacetOption
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? key = freezed,Object? count = freezed,}) {
  return _then(_SearchFacetOption(
key: freezed == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String?,count: freezed == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc
mixin _$SearchPriceRangeFacet {

 double? get min; double? get max; String? get currency;
/// Create a copy of SearchPriceRangeFacet
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchPriceRangeFacetCopyWith<SearchPriceRangeFacet> get copyWith => _$SearchPriceRangeFacetCopyWithImpl<SearchPriceRangeFacet>(this as SearchPriceRangeFacet, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchPriceRangeFacet&&(identical(other.min, min) || other.min == min)&&(identical(other.max, max) || other.max == max)&&(identical(other.currency, currency) || other.currency == currency));
}


@override
int get hashCode => Object.hash(runtimeType,min,max,currency);

@override
String toString() {
  return 'SearchPriceRangeFacet(min: $min, max: $max, currency: $currency)';
}


}

/// @nodoc
abstract mixin class $SearchPriceRangeFacetCopyWith<$Res>  {
  factory $SearchPriceRangeFacetCopyWith(SearchPriceRangeFacet value, $Res Function(SearchPriceRangeFacet) _then) = _$SearchPriceRangeFacetCopyWithImpl;
@useResult
$Res call({
 double? min, double? max, String? currency
});




}
/// @nodoc
class _$SearchPriceRangeFacetCopyWithImpl<$Res>
    implements $SearchPriceRangeFacetCopyWith<$Res> {
  _$SearchPriceRangeFacetCopyWithImpl(this._self, this._then);

  final SearchPriceRangeFacet _self;
  final $Res Function(SearchPriceRangeFacet) _then;

/// Create a copy of SearchPriceRangeFacet
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


/// Adds pattern-matching-related methods to [SearchPriceRangeFacet].
extension SearchPriceRangeFacetPatterns on SearchPriceRangeFacet {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchPriceRangeFacet value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchPriceRangeFacet() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchPriceRangeFacet value)  $default,){
final _that = this;
switch (_that) {
case _SearchPriceRangeFacet():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchPriceRangeFacet value)?  $default,){
final _that = this;
switch (_that) {
case _SearchPriceRangeFacet() when $default != null:
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
case _SearchPriceRangeFacet() when $default != null:
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
case _SearchPriceRangeFacet():
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
case _SearchPriceRangeFacet() when $default != null:
return $default(_that.min,_that.max,_that.currency);case _:
  return null;

}
}

}

/// @nodoc


class _SearchPriceRangeFacet implements SearchPriceRangeFacet {
  const _SearchPriceRangeFacet({this.min, this.max, this.currency});
  

@override final  double? min;
@override final  double? max;
@override final  String? currency;

/// Create a copy of SearchPriceRangeFacet
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchPriceRangeFacetCopyWith<_SearchPriceRangeFacet> get copyWith => __$SearchPriceRangeFacetCopyWithImpl<_SearchPriceRangeFacet>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchPriceRangeFacet&&(identical(other.min, min) || other.min == min)&&(identical(other.max, max) || other.max == max)&&(identical(other.currency, currency) || other.currency == currency));
}


@override
int get hashCode => Object.hash(runtimeType,min,max,currency);

@override
String toString() {
  return 'SearchPriceRangeFacet(min: $min, max: $max, currency: $currency)';
}


}

/// @nodoc
abstract mixin class _$SearchPriceRangeFacetCopyWith<$Res> implements $SearchPriceRangeFacetCopyWith<$Res> {
  factory _$SearchPriceRangeFacetCopyWith(_SearchPriceRangeFacet value, $Res Function(_SearchPriceRangeFacet) _then) = __$SearchPriceRangeFacetCopyWithImpl;
@override @useResult
$Res call({
 double? min, double? max, String? currency
});




}
/// @nodoc
class __$SearchPriceRangeFacetCopyWithImpl<$Res>
    implements _$SearchPriceRangeFacetCopyWith<$Res> {
  __$SearchPriceRangeFacetCopyWithImpl(this._self, this._then);

  final _SearchPriceRangeFacet _self;
  final $Res Function(_SearchPriceRangeFacet) _then;

/// Create a copy of SearchPriceRangeFacet
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? min = freezed,Object? max = freezed,Object? currency = freezed,}) {
  return _then(_SearchPriceRangeFacet(
min: freezed == min ? _self.min : min // ignore: cast_nullable_to_non_nullable
as double?,max: freezed == max ? _self.max : max // ignore: cast_nullable_to_non_nullable
as double?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$SearchFacets {

 List<SearchFacetOption>? get categories; List<SearchFacetOption>? get locations; List<SearchFacetOption>? get conditions; SearchPriceRangeFacet? get priceRange; Map<String, List<SearchFacetOption>>? get attributes;
/// Create a copy of SearchFacets
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchFacetsCopyWith<SearchFacets> get copyWith => _$SearchFacetsCopyWithImpl<SearchFacets>(this as SearchFacets, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchFacets&&const DeepCollectionEquality().equals(other.categories, categories)&&const DeepCollectionEquality().equals(other.locations, locations)&&const DeepCollectionEquality().equals(other.conditions, conditions)&&(identical(other.priceRange, priceRange) || other.priceRange == priceRange)&&const DeepCollectionEquality().equals(other.attributes, attributes));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(categories),const DeepCollectionEquality().hash(locations),const DeepCollectionEquality().hash(conditions),priceRange,const DeepCollectionEquality().hash(attributes));

@override
String toString() {
  return 'SearchFacets(categories: $categories, locations: $locations, conditions: $conditions, priceRange: $priceRange, attributes: $attributes)';
}


}

/// @nodoc
abstract mixin class $SearchFacetsCopyWith<$Res>  {
  factory $SearchFacetsCopyWith(SearchFacets value, $Res Function(SearchFacets) _then) = _$SearchFacetsCopyWithImpl;
@useResult
$Res call({
 List<SearchFacetOption>? categories, List<SearchFacetOption>? locations, List<SearchFacetOption>? conditions, SearchPriceRangeFacet? priceRange, Map<String, List<SearchFacetOption>>? attributes
});


$SearchPriceRangeFacetCopyWith<$Res>? get priceRange;

}
/// @nodoc
class _$SearchFacetsCopyWithImpl<$Res>
    implements $SearchFacetsCopyWith<$Res> {
  _$SearchFacetsCopyWithImpl(this._self, this._then);

  final SearchFacets _self;
  final $Res Function(SearchFacets) _then;

/// Create a copy of SearchFacets
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? categories = freezed,Object? locations = freezed,Object? conditions = freezed,Object? priceRange = freezed,Object? attributes = freezed,}) {
  return _then(_self.copyWith(
categories: freezed == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<SearchFacetOption>?,locations: freezed == locations ? _self.locations : locations // ignore: cast_nullable_to_non_nullable
as List<SearchFacetOption>?,conditions: freezed == conditions ? _self.conditions : conditions // ignore: cast_nullable_to_non_nullable
as List<SearchFacetOption>?,priceRange: freezed == priceRange ? _self.priceRange : priceRange // ignore: cast_nullable_to_non_nullable
as SearchPriceRangeFacet?,attributes: freezed == attributes ? _self.attributes : attributes // ignore: cast_nullable_to_non_nullable
as Map<String, List<SearchFacetOption>>?,
  ));
}
/// Create a copy of SearchFacets
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchPriceRangeFacetCopyWith<$Res>? get priceRange {
    if (_self.priceRange == null) {
    return null;
  }

  return $SearchPriceRangeFacetCopyWith<$Res>(_self.priceRange!, (value) {
    return _then(_self.copyWith(priceRange: value));
  });
}
}


/// Adds pattern-matching-related methods to [SearchFacets].
extension SearchFacetsPatterns on SearchFacets {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchFacets value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchFacets() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchFacets value)  $default,){
final _that = this;
switch (_that) {
case _SearchFacets():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchFacets value)?  $default,){
final _that = this;
switch (_that) {
case _SearchFacets() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<SearchFacetOption>? categories,  List<SearchFacetOption>? locations,  List<SearchFacetOption>? conditions,  SearchPriceRangeFacet? priceRange,  Map<String, List<SearchFacetOption>>? attributes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchFacets() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<SearchFacetOption>? categories,  List<SearchFacetOption>? locations,  List<SearchFacetOption>? conditions,  SearchPriceRangeFacet? priceRange,  Map<String, List<SearchFacetOption>>? attributes)  $default,) {final _that = this;
switch (_that) {
case _SearchFacets():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<SearchFacetOption>? categories,  List<SearchFacetOption>? locations,  List<SearchFacetOption>? conditions,  SearchPriceRangeFacet? priceRange,  Map<String, List<SearchFacetOption>>? attributes)?  $default,) {final _that = this;
switch (_that) {
case _SearchFacets() when $default != null:
return $default(_that.categories,_that.locations,_that.conditions,_that.priceRange,_that.attributes);case _:
  return null;

}
}

}

/// @nodoc


class _SearchFacets implements SearchFacets {
  const _SearchFacets({final  List<SearchFacetOption>? categories, final  List<SearchFacetOption>? locations, final  List<SearchFacetOption>? conditions, this.priceRange, final  Map<String, List<SearchFacetOption>>? attributes}): _categories = categories,_locations = locations,_conditions = conditions,_attributes = attributes;
  

 final  List<SearchFacetOption>? _categories;
@override List<SearchFacetOption>? get categories {
  final value = _categories;
  if (value == null) return null;
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<SearchFacetOption>? _locations;
@override List<SearchFacetOption>? get locations {
  final value = _locations;
  if (value == null) return null;
  if (_locations is EqualUnmodifiableListView) return _locations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<SearchFacetOption>? _conditions;
@override List<SearchFacetOption>? get conditions {
  final value = _conditions;
  if (value == null) return null;
  if (_conditions is EqualUnmodifiableListView) return _conditions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  SearchPriceRangeFacet? priceRange;
 final  Map<String, List<SearchFacetOption>>? _attributes;
@override Map<String, List<SearchFacetOption>>? get attributes {
  final value = _attributes;
  if (value == null) return null;
  if (_attributes is EqualUnmodifiableMapView) return _attributes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of SearchFacets
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchFacetsCopyWith<_SearchFacets> get copyWith => __$SearchFacetsCopyWithImpl<_SearchFacets>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchFacets&&const DeepCollectionEquality().equals(other._categories, _categories)&&const DeepCollectionEquality().equals(other._locations, _locations)&&const DeepCollectionEquality().equals(other._conditions, _conditions)&&(identical(other.priceRange, priceRange) || other.priceRange == priceRange)&&const DeepCollectionEquality().equals(other._attributes, _attributes));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_categories),const DeepCollectionEquality().hash(_locations),const DeepCollectionEquality().hash(_conditions),priceRange,const DeepCollectionEquality().hash(_attributes));

@override
String toString() {
  return 'SearchFacets(categories: $categories, locations: $locations, conditions: $conditions, priceRange: $priceRange, attributes: $attributes)';
}


}

/// @nodoc
abstract mixin class _$SearchFacetsCopyWith<$Res> implements $SearchFacetsCopyWith<$Res> {
  factory _$SearchFacetsCopyWith(_SearchFacets value, $Res Function(_SearchFacets) _then) = __$SearchFacetsCopyWithImpl;
@override @useResult
$Res call({
 List<SearchFacetOption>? categories, List<SearchFacetOption>? locations, List<SearchFacetOption>? conditions, SearchPriceRangeFacet? priceRange, Map<String, List<SearchFacetOption>>? attributes
});


@override $SearchPriceRangeFacetCopyWith<$Res>? get priceRange;

}
/// @nodoc
class __$SearchFacetsCopyWithImpl<$Res>
    implements _$SearchFacetsCopyWith<$Res> {
  __$SearchFacetsCopyWithImpl(this._self, this._then);

  final _SearchFacets _self;
  final $Res Function(_SearchFacets) _then;

/// Create a copy of SearchFacets
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? categories = freezed,Object? locations = freezed,Object? conditions = freezed,Object? priceRange = freezed,Object? attributes = freezed,}) {
  return _then(_SearchFacets(
categories: freezed == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<SearchFacetOption>?,locations: freezed == locations ? _self._locations : locations // ignore: cast_nullable_to_non_nullable
as List<SearchFacetOption>?,conditions: freezed == conditions ? _self._conditions : conditions // ignore: cast_nullable_to_non_nullable
as List<SearchFacetOption>?,priceRange: freezed == priceRange ? _self.priceRange : priceRange // ignore: cast_nullable_to_non_nullable
as SearchPriceRangeFacet?,attributes: freezed == attributes ? _self._attributes : attributes // ignore: cast_nullable_to_non_nullable
as Map<String, List<SearchFacetOption>>?,
  ));
}

/// Create a copy of SearchFacets
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchPriceRangeFacetCopyWith<$Res>? get priceRange {
    if (_self.priceRange == null) {
    return null;
  }

  return $SearchPriceRangeFacetCopyWith<$Res>(_self.priceRange!, (value) {
    return _then(_self.copyWith(priceRange: value));
  });
}
}

/// @nodoc
mixin _$SearchResult {

 List<SearchListing> get results; int get total; int get page; int get perPage; SearchFacets? get facets;
/// Create a copy of SearchResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchResultCopyWith<SearchResult> get copyWith => _$SearchResultCopyWithImpl<SearchResult>(this as SearchResult, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchResult&&const DeepCollectionEquality().equals(other.results, results)&&(identical(other.total, total) || other.total == total)&&(identical(other.page, page) || other.page == page)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.facets, facets) || other.facets == facets));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(results),total,page,perPage,facets);

@override
String toString() {
  return 'SearchResult(results: $results, total: $total, page: $page, perPage: $perPage, facets: $facets)';
}


}

/// @nodoc
abstract mixin class $SearchResultCopyWith<$Res>  {
  factory $SearchResultCopyWith(SearchResult value, $Res Function(SearchResult) _then) = _$SearchResultCopyWithImpl;
@useResult
$Res call({
 List<SearchListing> results, int total, int page, int perPage, SearchFacets? facets
});


$SearchFacetsCopyWith<$Res>? get facets;

}
/// @nodoc
class _$SearchResultCopyWithImpl<$Res>
    implements $SearchResultCopyWith<$Res> {
  _$SearchResultCopyWithImpl(this._self, this._then);

  final SearchResult _self;
  final $Res Function(SearchResult) _then;

/// Create a copy of SearchResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? results = null,Object? total = null,Object? page = null,Object? perPage = null,Object? facets = freezed,}) {
  return _then(_self.copyWith(
results: null == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<SearchListing>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,facets: freezed == facets ? _self.facets : facets // ignore: cast_nullable_to_non_nullable
as SearchFacets?,
  ));
}
/// Create a copy of SearchResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchFacetsCopyWith<$Res>? get facets {
    if (_self.facets == null) {
    return null;
  }

  return $SearchFacetsCopyWith<$Res>(_self.facets!, (value) {
    return _then(_self.copyWith(facets: value));
  });
}
}


/// Adds pattern-matching-related methods to [SearchResult].
extension SearchResultPatterns on SearchResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchResult value)  $default,){
final _that = this;
switch (_that) {
case _SearchResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchResult value)?  $default,){
final _that = this;
switch (_that) {
case _SearchResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<SearchListing> results,  int total,  int page,  int perPage,  SearchFacets? facets)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchResult() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<SearchListing> results,  int total,  int page,  int perPage,  SearchFacets? facets)  $default,) {final _that = this;
switch (_that) {
case _SearchResult():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<SearchListing> results,  int total,  int page,  int perPage,  SearchFacets? facets)?  $default,) {final _that = this;
switch (_that) {
case _SearchResult() when $default != null:
return $default(_that.results,_that.total,_that.page,_that.perPage,_that.facets);case _:
  return null;

}
}

}

/// @nodoc


class _SearchResult implements SearchResult {
  const _SearchResult({final  List<SearchListing> results = const [], this.total = 0, this.page = 1, this.perPage = 24, this.facets}): _results = results;
  

 final  List<SearchListing> _results;
@override@JsonKey() List<SearchListing> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}

@override@JsonKey() final  int total;
@override@JsonKey() final  int page;
@override@JsonKey() final  int perPage;
@override final  SearchFacets? facets;

/// Create a copy of SearchResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchResultCopyWith<_SearchResult> get copyWith => __$SearchResultCopyWithImpl<_SearchResult>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchResult&&const DeepCollectionEquality().equals(other._results, _results)&&(identical(other.total, total) || other.total == total)&&(identical(other.page, page) || other.page == page)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.facets, facets) || other.facets == facets));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_results),total,page,perPage,facets);

@override
String toString() {
  return 'SearchResult(results: $results, total: $total, page: $page, perPage: $perPage, facets: $facets)';
}


}

/// @nodoc
abstract mixin class _$SearchResultCopyWith<$Res> implements $SearchResultCopyWith<$Res> {
  factory _$SearchResultCopyWith(_SearchResult value, $Res Function(_SearchResult) _then) = __$SearchResultCopyWithImpl;
@override @useResult
$Res call({
 List<SearchListing> results, int total, int page, int perPage, SearchFacets? facets
});


@override $SearchFacetsCopyWith<$Res>? get facets;

}
/// @nodoc
class __$SearchResultCopyWithImpl<$Res>
    implements _$SearchResultCopyWith<$Res> {
  __$SearchResultCopyWithImpl(this._self, this._then);

  final _SearchResult _self;
  final $Res Function(_SearchResult) _then;

/// Create a copy of SearchResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? results = null,Object? total = null,Object? page = null,Object? perPage = null,Object? facets = freezed,}) {
  return _then(_SearchResult(
results: null == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<SearchListing>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,facets: freezed == facets ? _self.facets : facets // ignore: cast_nullable_to_non_nullable
as SearchFacets?,
  ));
}

/// Create a copy of SearchResult
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchFacetsCopyWith<$Res>? get facets {
    if (_self.facets == null) {
    return null;
  }

  return $SearchFacetsCopyWith<$Res>(_self.facets!, (value) {
    return _then(_self.copyWith(facets: value));
  });
}
}

/// @nodoc
mixin _$SearchParams {

 String? get query; int? get category; int? get location; double? get priceMin; double? get priceMax; String? get condition; String? get sort; int get page; int get perPage; Map<String, dynamic>? get attributes;
/// Create a copy of SearchParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchParamsCopyWith<SearchParams> get copyWith => _$SearchParamsCopyWithImpl<SearchParams>(this as SearchParams, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchParams&&(identical(other.query, query) || other.query == query)&&(identical(other.category, category) || other.category == category)&&(identical(other.location, location) || other.location == location)&&(identical(other.priceMin, priceMin) || other.priceMin == priceMin)&&(identical(other.priceMax, priceMax) || other.priceMax == priceMax)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.sort, sort) || other.sort == sort)&&(identical(other.page, page) || other.page == page)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&const DeepCollectionEquality().equals(other.attributes, attributes));
}


@override
int get hashCode => Object.hash(runtimeType,query,category,location,priceMin,priceMax,condition,sort,page,perPage,const DeepCollectionEquality().hash(attributes));

@override
String toString() {
  return 'SearchParams(query: $query, category: $category, location: $location, priceMin: $priceMin, priceMax: $priceMax, condition: $condition, sort: $sort, page: $page, perPage: $perPage, attributes: $attributes)';
}


}

/// @nodoc
abstract mixin class $SearchParamsCopyWith<$Res>  {
  factory $SearchParamsCopyWith(SearchParams value, $Res Function(SearchParams) _then) = _$SearchParamsCopyWithImpl;
@useResult
$Res call({
 String? query, int? category, int? location, double? priceMin, double? priceMax, String? condition, String? sort, int page, int perPage, Map<String, dynamic>? attributes
});




}
/// @nodoc
class _$SearchParamsCopyWithImpl<$Res>
    implements $SearchParamsCopyWith<$Res> {
  _$SearchParamsCopyWithImpl(this._self, this._then);

  final SearchParams _self;
  final $Res Function(SearchParams) _then;

/// Create a copy of SearchParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = freezed,Object? category = freezed,Object? location = freezed,Object? priceMin = freezed,Object? priceMax = freezed,Object? condition = freezed,Object? sort = freezed,Object? page = null,Object? perPage = null,Object? attributes = freezed,}) {
  return _then(_self.copyWith(
query: freezed == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as int?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as int?,priceMin: freezed == priceMin ? _self.priceMin : priceMin // ignore: cast_nullable_to_non_nullable
as double?,priceMax: freezed == priceMax ? _self.priceMax : priceMax // ignore: cast_nullable_to_non_nullable
as double?,condition: freezed == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as String?,sort: freezed == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as String?,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,attributes: freezed == attributes ? _self.attributes : attributes // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchParams].
extension SearchParamsPatterns on SearchParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchParams value)  $default,){
final _that = this;
switch (_that) {
case _SearchParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchParams value)?  $default,){
final _that = this;
switch (_that) {
case _SearchParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? query,  int? category,  int? location,  double? priceMin,  double? priceMax,  String? condition,  String? sort,  int page,  int perPage,  Map<String, dynamic>? attributes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchParams() when $default != null:
return $default(_that.query,_that.category,_that.location,_that.priceMin,_that.priceMax,_that.condition,_that.sort,_that.page,_that.perPage,_that.attributes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? query,  int? category,  int? location,  double? priceMin,  double? priceMax,  String? condition,  String? sort,  int page,  int perPage,  Map<String, dynamic>? attributes)  $default,) {final _that = this;
switch (_that) {
case _SearchParams():
return $default(_that.query,_that.category,_that.location,_that.priceMin,_that.priceMax,_that.condition,_that.sort,_that.page,_that.perPage,_that.attributes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? query,  int? category,  int? location,  double? priceMin,  double? priceMax,  String? condition,  String? sort,  int page,  int perPage,  Map<String, dynamic>? attributes)?  $default,) {final _that = this;
switch (_that) {
case _SearchParams() when $default != null:
return $default(_that.query,_that.category,_that.location,_that.priceMin,_that.priceMax,_that.condition,_that.sort,_that.page,_that.perPage,_that.attributes);case _:
  return null;

}
}

}

/// @nodoc


class _SearchParams implements SearchParams {
  const _SearchParams({this.query, this.category, this.location, this.priceMin, this.priceMax, this.condition, this.sort, this.page = 1, this.perPage = 24, final  Map<String, dynamic>? attributes}): _attributes = attributes;
  

@override final  String? query;
@override final  int? category;
@override final  int? location;
@override final  double? priceMin;
@override final  double? priceMax;
@override final  String? condition;
@override final  String? sort;
@override@JsonKey() final  int page;
@override@JsonKey() final  int perPage;
 final  Map<String, dynamic>? _attributes;
@override Map<String, dynamic>? get attributes {
  final value = _attributes;
  if (value == null) return null;
  if (_attributes is EqualUnmodifiableMapView) return _attributes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of SearchParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchParamsCopyWith<_SearchParams> get copyWith => __$SearchParamsCopyWithImpl<_SearchParams>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchParams&&(identical(other.query, query) || other.query == query)&&(identical(other.category, category) || other.category == category)&&(identical(other.location, location) || other.location == location)&&(identical(other.priceMin, priceMin) || other.priceMin == priceMin)&&(identical(other.priceMax, priceMax) || other.priceMax == priceMax)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.sort, sort) || other.sort == sort)&&(identical(other.page, page) || other.page == page)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&const DeepCollectionEquality().equals(other._attributes, _attributes));
}


@override
int get hashCode => Object.hash(runtimeType,query,category,location,priceMin,priceMax,condition,sort,page,perPage,const DeepCollectionEquality().hash(_attributes));

@override
String toString() {
  return 'SearchParams(query: $query, category: $category, location: $location, priceMin: $priceMin, priceMax: $priceMax, condition: $condition, sort: $sort, page: $page, perPage: $perPage, attributes: $attributes)';
}


}

/// @nodoc
abstract mixin class _$SearchParamsCopyWith<$Res> implements $SearchParamsCopyWith<$Res> {
  factory _$SearchParamsCopyWith(_SearchParams value, $Res Function(_SearchParams) _then) = __$SearchParamsCopyWithImpl;
@override @useResult
$Res call({
 String? query, int? category, int? location, double? priceMin, double? priceMax, String? condition, String? sort, int page, int perPage, Map<String, dynamic>? attributes
});




}
/// @nodoc
class __$SearchParamsCopyWithImpl<$Res>
    implements _$SearchParamsCopyWith<$Res> {
  __$SearchParamsCopyWithImpl(this._self, this._then);

  final _SearchParams _self;
  final $Res Function(_SearchParams) _then;

/// Create a copy of SearchParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? query = freezed,Object? category = freezed,Object? location = freezed,Object? priceMin = freezed,Object? priceMax = freezed,Object? condition = freezed,Object? sort = freezed,Object? page = null,Object? perPage = null,Object? attributes = freezed,}) {
  return _then(_SearchParams(
query: freezed == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as int?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as int?,priceMin: freezed == priceMin ? _self.priceMin : priceMin // ignore: cast_nullable_to_non_nullable
as double?,priceMax: freezed == priceMax ? _self.priceMax : priceMax // ignore: cast_nullable_to_non_nullable
as double?,condition: freezed == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as String?,sort: freezed == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as String?,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,attributes: freezed == attributes ? _self._attributes : attributes // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}


}

// dart format on
