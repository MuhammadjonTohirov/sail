// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'listing.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ListingMedia {

 int get id; String? get type; String? get image; String? get imageUrl; int? get width; int? get height; int? get order; String? get uploadedAt;
/// Create a copy of ListingMedia
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListingMediaCopyWith<ListingMedia> get copyWith => _$ListingMediaCopyWithImpl<ListingMedia>(this as ListingMedia, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListingMedia&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.image, image) || other.image == image)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height)&&(identical(other.order, order) || other.order == order)&&(identical(other.uploadedAt, uploadedAt) || other.uploadedAt == uploadedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,type,image,imageUrl,width,height,order,uploadedAt);

@override
String toString() {
  return 'ListingMedia(id: $id, type: $type, image: $image, imageUrl: $imageUrl, width: $width, height: $height, order: $order, uploadedAt: $uploadedAt)';
}


}

/// @nodoc
abstract mixin class $ListingMediaCopyWith<$Res>  {
  factory $ListingMediaCopyWith(ListingMedia value, $Res Function(ListingMedia) _then) = _$ListingMediaCopyWithImpl;
@useResult
$Res call({
 int id, String? type, String? image, String? imageUrl, int? width, int? height, int? order, String? uploadedAt
});




}
/// @nodoc
class _$ListingMediaCopyWithImpl<$Res>
    implements $ListingMediaCopyWith<$Res> {
  _$ListingMediaCopyWithImpl(this._self, this._then);

  final ListingMedia _self;
  final $Res Function(ListingMedia) _then;

/// Create a copy of ListingMedia
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? type = freezed,Object? image = freezed,Object? imageUrl = freezed,Object? width = freezed,Object? height = freezed,Object? order = freezed,Object? uploadedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,width: freezed == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as int?,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int?,order: freezed == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int?,uploadedAt: freezed == uploadedAt ? _self.uploadedAt : uploadedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ListingMedia].
extension ListingMediaPatterns on ListingMedia {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ListingMedia value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ListingMedia() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ListingMedia value)  $default,){
final _that = this;
switch (_that) {
case _ListingMedia():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ListingMedia value)?  $default,){
final _that = this;
switch (_that) {
case _ListingMedia() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String? type,  String? image,  String? imageUrl,  int? width,  int? height,  int? order,  String? uploadedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ListingMedia() when $default != null:
return $default(_that.id,_that.type,_that.image,_that.imageUrl,_that.width,_that.height,_that.order,_that.uploadedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String? type,  String? image,  String? imageUrl,  int? width,  int? height,  int? order,  String? uploadedAt)  $default,) {final _that = this;
switch (_that) {
case _ListingMedia():
return $default(_that.id,_that.type,_that.image,_that.imageUrl,_that.width,_that.height,_that.order,_that.uploadedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String? type,  String? image,  String? imageUrl,  int? width,  int? height,  int? order,  String? uploadedAt)?  $default,) {final _that = this;
switch (_that) {
case _ListingMedia() when $default != null:
return $default(_that.id,_that.type,_that.image,_that.imageUrl,_that.width,_that.height,_that.order,_that.uploadedAt);case _:
  return null;

}
}

}

/// @nodoc


class _ListingMedia implements ListingMedia {
  const _ListingMedia({required this.id, this.type, this.image, this.imageUrl, this.width, this.height, this.order, this.uploadedAt});
  

@override final  int id;
@override final  String? type;
@override final  String? image;
@override final  String? imageUrl;
@override final  int? width;
@override final  int? height;
@override final  int? order;
@override final  String? uploadedAt;

/// Create a copy of ListingMedia
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListingMediaCopyWith<_ListingMedia> get copyWith => __$ListingMediaCopyWithImpl<_ListingMedia>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListingMedia&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.image, image) || other.image == image)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height)&&(identical(other.order, order) || other.order == order)&&(identical(other.uploadedAt, uploadedAt) || other.uploadedAt == uploadedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,type,image,imageUrl,width,height,order,uploadedAt);

@override
String toString() {
  return 'ListingMedia(id: $id, type: $type, image: $image, imageUrl: $imageUrl, width: $width, height: $height, order: $order, uploadedAt: $uploadedAt)';
}


}

/// @nodoc
abstract mixin class _$ListingMediaCopyWith<$Res> implements $ListingMediaCopyWith<$Res> {
  factory _$ListingMediaCopyWith(_ListingMedia value, $Res Function(_ListingMedia) _then) = __$ListingMediaCopyWithImpl;
@override @useResult
$Res call({
 int id, String? type, String? image, String? imageUrl, int? width, int? height, int? order, String? uploadedAt
});




}
/// @nodoc
class __$ListingMediaCopyWithImpl<$Res>
    implements _$ListingMediaCopyWith<$Res> {
  __$ListingMediaCopyWithImpl(this._self, this._then);

  final _ListingMedia _self;
  final $Res Function(_ListingMedia) _then;

/// Create a copy of ListingMedia
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = freezed,Object? image = freezed,Object? imageUrl = freezed,Object? width = freezed,Object? height = freezed,Object? order = freezed,Object? uploadedAt = freezed,}) {
  return _then(_ListingMedia(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,width: freezed == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as int?,height: freezed == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int?,order: freezed == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int?,uploadedAt: freezed == uploadedAt ? _self.uploadedAt : uploadedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$ListingAttribute {

 String get key; dynamic get value; String? get label;
/// Create a copy of ListingAttribute
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListingAttributeCopyWith<ListingAttribute> get copyWith => _$ListingAttributeCopyWithImpl<ListingAttribute>(this as ListingAttribute, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListingAttribute&&(identical(other.key, key) || other.key == key)&&const DeepCollectionEquality().equals(other.value, value)&&(identical(other.label, label) || other.label == label));
}


@override
int get hashCode => Object.hash(runtimeType,key,const DeepCollectionEquality().hash(value),label);

@override
String toString() {
  return 'ListingAttribute(key: $key, value: $value, label: $label)';
}


}

/// @nodoc
abstract mixin class $ListingAttributeCopyWith<$Res>  {
  factory $ListingAttributeCopyWith(ListingAttribute value, $Res Function(ListingAttribute) _then) = _$ListingAttributeCopyWithImpl;
@useResult
$Res call({
 String key, dynamic value, String? label
});




}
/// @nodoc
class _$ListingAttributeCopyWithImpl<$Res>
    implements $ListingAttributeCopyWith<$Res> {
  _$ListingAttributeCopyWithImpl(this._self, this._then);

  final ListingAttribute _self;
  final $Res Function(ListingAttribute) _then;

/// Create a copy of ListingAttribute
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? key = null,Object? value = freezed,Object? label = freezed,}) {
  return _then(_self.copyWith(
key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as dynamic,label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ListingAttribute].
extension ListingAttributePatterns on ListingAttribute {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ListingAttribute value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ListingAttribute() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ListingAttribute value)  $default,){
final _that = this;
switch (_that) {
case _ListingAttribute():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ListingAttribute value)?  $default,){
final _that = this;
switch (_that) {
case _ListingAttribute() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String key,  dynamic value,  String? label)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ListingAttribute() when $default != null:
return $default(_that.key,_that.value,_that.label);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String key,  dynamic value,  String? label)  $default,) {final _that = this;
switch (_that) {
case _ListingAttribute():
return $default(_that.key,_that.value,_that.label);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String key,  dynamic value,  String? label)?  $default,) {final _that = this;
switch (_that) {
case _ListingAttribute() when $default != null:
return $default(_that.key,_that.value,_that.label);case _:
  return null;

}
}

}

/// @nodoc


class _ListingAttribute implements ListingAttribute {
  const _ListingAttribute({required this.key, required this.value, this.label});
  

@override final  String key;
@override final  dynamic value;
@override final  String? label;

/// Create a copy of ListingAttribute
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListingAttributeCopyWith<_ListingAttribute> get copyWith => __$ListingAttributeCopyWithImpl<_ListingAttribute>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListingAttribute&&(identical(other.key, key) || other.key == key)&&const DeepCollectionEquality().equals(other.value, value)&&(identical(other.label, label) || other.label == label));
}


@override
int get hashCode => Object.hash(runtimeType,key,const DeepCollectionEquality().hash(value),label);

@override
String toString() {
  return 'ListingAttribute(key: $key, value: $value, label: $label)';
}


}

/// @nodoc
abstract mixin class _$ListingAttributeCopyWith<$Res> implements $ListingAttributeCopyWith<$Res> {
  factory _$ListingAttributeCopyWith(_ListingAttribute value, $Res Function(_ListingAttribute) _then) = __$ListingAttributeCopyWithImpl;
@override @useResult
$Res call({
 String key, dynamic value, String? label
});




}
/// @nodoc
class __$ListingAttributeCopyWithImpl<$Res>
    implements _$ListingAttributeCopyWith<$Res> {
  __$ListingAttributeCopyWithImpl(this._self, this._then);

  final _ListingAttribute _self;
  final $Res Function(_ListingAttribute) _then;

/// Create a copy of ListingAttribute
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? key = null,Object? value = freezed,Object? label = freezed,}) {
  return _then(_ListingAttribute(
key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as dynamic,label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$Listing {

 int get id; String get title; String? get description; double get priceAmount; String get priceCurrency; bool? get isPriceNegotiable; String get condition; String? get dealType;// 'sell', 'exchange', 'free'
 String? get sellerType;// 'person', 'business'
 int get categoryId; String? get categoryName; String? get categorySlug; int get locationId; String? get locationName; String? get locationSlug; double? get lat; double? get lon; List<ListingMedia>? get media; List<String>? get mediaUrls; List<ListingAttribute>? get attributes; String? get status; String? get contactName; String? get contactEmail; String? get contactPhone; DateTime? get createdAt; DateTime? get updatedAt; DateTime? get refreshedAt; DateTime? get expiresAt; double? get qualityScore; String? get contactPhoneMasked; double? get priceNormalized; bool? get isPromoted; int? get userId; ListingUser? get user; ListingSeller? get seller;
/// Create a copy of Listing
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListingCopyWith<Listing> get copyWith => _$ListingCopyWithImpl<Listing>(this as Listing, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Listing&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.priceAmount, priceAmount) || other.priceAmount == priceAmount)&&(identical(other.priceCurrency, priceCurrency) || other.priceCurrency == priceCurrency)&&(identical(other.isPriceNegotiable, isPriceNegotiable) || other.isPriceNegotiable == isPriceNegotiable)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.dealType, dealType) || other.dealType == dealType)&&(identical(other.sellerType, sellerType) || other.sellerType == sellerType)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.categorySlug, categorySlug) || other.categorySlug == categorySlug)&&(identical(other.locationId, locationId) || other.locationId == locationId)&&(identical(other.locationName, locationName) || other.locationName == locationName)&&(identical(other.locationSlug, locationSlug) || other.locationSlug == locationSlug)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lon, lon) || other.lon == lon)&&const DeepCollectionEquality().equals(other.media, media)&&const DeepCollectionEquality().equals(other.mediaUrls, mediaUrls)&&const DeepCollectionEquality().equals(other.attributes, attributes)&&(identical(other.status, status) || other.status == status)&&(identical(other.contactName, contactName) || other.contactName == contactName)&&(identical(other.contactEmail, contactEmail) || other.contactEmail == contactEmail)&&(identical(other.contactPhone, contactPhone) || other.contactPhone == contactPhone)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.refreshedAt, refreshedAt) || other.refreshedAt == refreshedAt)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.qualityScore, qualityScore) || other.qualityScore == qualityScore)&&(identical(other.contactPhoneMasked, contactPhoneMasked) || other.contactPhoneMasked == contactPhoneMasked)&&(identical(other.priceNormalized, priceNormalized) || other.priceNormalized == priceNormalized)&&(identical(other.isPromoted, isPromoted) || other.isPromoted == isPromoted)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.user, user) || other.user == user)&&(identical(other.seller, seller) || other.seller == seller));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,title,description,priceAmount,priceCurrency,isPriceNegotiable,condition,dealType,sellerType,categoryId,categoryName,categorySlug,locationId,locationName,locationSlug,lat,lon,const DeepCollectionEquality().hash(media),const DeepCollectionEquality().hash(mediaUrls),const DeepCollectionEquality().hash(attributes),status,contactName,contactEmail,contactPhone,createdAt,updatedAt,refreshedAt,expiresAt,qualityScore,contactPhoneMasked,priceNormalized,isPromoted,userId,user,seller]);

@override
String toString() {
  return 'Listing(id: $id, title: $title, description: $description, priceAmount: $priceAmount, priceCurrency: $priceCurrency, isPriceNegotiable: $isPriceNegotiable, condition: $condition, dealType: $dealType, sellerType: $sellerType, categoryId: $categoryId, categoryName: $categoryName, categorySlug: $categorySlug, locationId: $locationId, locationName: $locationName, locationSlug: $locationSlug, lat: $lat, lon: $lon, media: $media, mediaUrls: $mediaUrls, attributes: $attributes, status: $status, contactName: $contactName, contactEmail: $contactEmail, contactPhone: $contactPhone, createdAt: $createdAt, updatedAt: $updatedAt, refreshedAt: $refreshedAt, expiresAt: $expiresAt, qualityScore: $qualityScore, contactPhoneMasked: $contactPhoneMasked, priceNormalized: $priceNormalized, isPromoted: $isPromoted, userId: $userId, user: $user, seller: $seller)';
}


}

/// @nodoc
abstract mixin class $ListingCopyWith<$Res>  {
  factory $ListingCopyWith(Listing value, $Res Function(Listing) _then) = _$ListingCopyWithImpl;
@useResult
$Res call({
 int id, String title, String? description, double priceAmount, String priceCurrency, bool? isPriceNegotiable, String condition, String? dealType, String? sellerType, int categoryId, String? categoryName, String? categorySlug, int locationId, String? locationName, String? locationSlug, double? lat, double? lon, List<ListingMedia>? media, List<String>? mediaUrls, List<ListingAttribute>? attributes, String? status, String? contactName, String? contactEmail, String? contactPhone, DateTime? createdAt, DateTime? updatedAt, DateTime? refreshedAt, DateTime? expiresAt, double? qualityScore, String? contactPhoneMasked, double? priceNormalized, bool? isPromoted, int? userId, ListingUser? user, ListingSeller? seller
});


$ListingUserCopyWith<$Res>? get user;$ListingSellerCopyWith<$Res>? get seller;

}
/// @nodoc
class _$ListingCopyWithImpl<$Res>
    implements $ListingCopyWith<$Res> {
  _$ListingCopyWithImpl(this._self, this._then);

  final Listing _self;
  final $Res Function(Listing) _then;

/// Create a copy of Listing
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = freezed,Object? priceAmount = null,Object? priceCurrency = null,Object? isPriceNegotiable = freezed,Object? condition = null,Object? dealType = freezed,Object? sellerType = freezed,Object? categoryId = null,Object? categoryName = freezed,Object? categorySlug = freezed,Object? locationId = null,Object? locationName = freezed,Object? locationSlug = freezed,Object? lat = freezed,Object? lon = freezed,Object? media = freezed,Object? mediaUrls = freezed,Object? attributes = freezed,Object? status = freezed,Object? contactName = freezed,Object? contactEmail = freezed,Object? contactPhone = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? refreshedAt = freezed,Object? expiresAt = freezed,Object? qualityScore = freezed,Object? contactPhoneMasked = freezed,Object? priceNormalized = freezed,Object? isPromoted = freezed,Object? userId = freezed,Object? user = freezed,Object? seller = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,priceAmount: null == priceAmount ? _self.priceAmount : priceAmount // ignore: cast_nullable_to_non_nullable
as double,priceCurrency: null == priceCurrency ? _self.priceCurrency : priceCurrency // ignore: cast_nullable_to_non_nullable
as String,isPriceNegotiable: freezed == isPriceNegotiable ? _self.isPriceNegotiable : isPriceNegotiable // ignore: cast_nullable_to_non_nullable
as bool?,condition: null == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as String,dealType: freezed == dealType ? _self.dealType : dealType // ignore: cast_nullable_to_non_nullable
as String?,sellerType: freezed == sellerType ? _self.sellerType : sellerType // ignore: cast_nullable_to_non_nullable
as String?,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,categoryName: freezed == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String?,categorySlug: freezed == categorySlug ? _self.categorySlug : categorySlug // ignore: cast_nullable_to_non_nullable
as String?,locationId: null == locationId ? _self.locationId : locationId // ignore: cast_nullable_to_non_nullable
as int,locationName: freezed == locationName ? _self.locationName : locationName // ignore: cast_nullable_to_non_nullable
as String?,locationSlug: freezed == locationSlug ? _self.locationSlug : locationSlug // ignore: cast_nullable_to_non_nullable
as String?,lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double?,lon: freezed == lon ? _self.lon : lon // ignore: cast_nullable_to_non_nullable
as double?,media: freezed == media ? _self.media : media // ignore: cast_nullable_to_non_nullable
as List<ListingMedia>?,mediaUrls: freezed == mediaUrls ? _self.mediaUrls : mediaUrls // ignore: cast_nullable_to_non_nullable
as List<String>?,attributes: freezed == attributes ? _self.attributes : attributes // ignore: cast_nullable_to_non_nullable
as List<ListingAttribute>?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,contactName: freezed == contactName ? _self.contactName : contactName // ignore: cast_nullable_to_non_nullable
as String?,contactEmail: freezed == contactEmail ? _self.contactEmail : contactEmail // ignore: cast_nullable_to_non_nullable
as String?,contactPhone: freezed == contactPhone ? _self.contactPhone : contactPhone // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,refreshedAt: freezed == refreshedAt ? _self.refreshedAt : refreshedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime?,qualityScore: freezed == qualityScore ? _self.qualityScore : qualityScore // ignore: cast_nullable_to_non_nullable
as double?,contactPhoneMasked: freezed == contactPhoneMasked ? _self.contactPhoneMasked : contactPhoneMasked // ignore: cast_nullable_to_non_nullable
as String?,priceNormalized: freezed == priceNormalized ? _self.priceNormalized : priceNormalized // ignore: cast_nullable_to_non_nullable
as double?,isPromoted: freezed == isPromoted ? _self.isPromoted : isPromoted // ignore: cast_nullable_to_non_nullable
as bool?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as ListingUser?,seller: freezed == seller ? _self.seller : seller // ignore: cast_nullable_to_non_nullable
as ListingSeller?,
  ));
}
/// Create a copy of Listing
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ListingUserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $ListingUserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of Listing
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


/// Adds pattern-matching-related methods to [Listing].
extension ListingPatterns on Listing {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Listing value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Listing() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Listing value)  $default,){
final _that = this;
switch (_that) {
case _Listing():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Listing value)?  $default,){
final _that = this;
switch (_that) {
case _Listing() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String title,  String? description,  double priceAmount,  String priceCurrency,  bool? isPriceNegotiable,  String condition,  String? dealType,  String? sellerType,  int categoryId,  String? categoryName,  String? categorySlug,  int locationId,  String? locationName,  String? locationSlug,  double? lat,  double? lon,  List<ListingMedia>? media,  List<String>? mediaUrls,  List<ListingAttribute>? attributes,  String? status,  String? contactName,  String? contactEmail,  String? contactPhone,  DateTime? createdAt,  DateTime? updatedAt,  DateTime? refreshedAt,  DateTime? expiresAt,  double? qualityScore,  String? contactPhoneMasked,  double? priceNormalized,  bool? isPromoted,  int? userId,  ListingUser? user,  ListingSeller? seller)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Listing() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.priceAmount,_that.priceCurrency,_that.isPriceNegotiable,_that.condition,_that.dealType,_that.sellerType,_that.categoryId,_that.categoryName,_that.categorySlug,_that.locationId,_that.locationName,_that.locationSlug,_that.lat,_that.lon,_that.media,_that.mediaUrls,_that.attributes,_that.status,_that.contactName,_that.contactEmail,_that.contactPhone,_that.createdAt,_that.updatedAt,_that.refreshedAt,_that.expiresAt,_that.qualityScore,_that.contactPhoneMasked,_that.priceNormalized,_that.isPromoted,_that.userId,_that.user,_that.seller);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String title,  String? description,  double priceAmount,  String priceCurrency,  bool? isPriceNegotiable,  String condition,  String? dealType,  String? sellerType,  int categoryId,  String? categoryName,  String? categorySlug,  int locationId,  String? locationName,  String? locationSlug,  double? lat,  double? lon,  List<ListingMedia>? media,  List<String>? mediaUrls,  List<ListingAttribute>? attributes,  String? status,  String? contactName,  String? contactEmail,  String? contactPhone,  DateTime? createdAt,  DateTime? updatedAt,  DateTime? refreshedAt,  DateTime? expiresAt,  double? qualityScore,  String? contactPhoneMasked,  double? priceNormalized,  bool? isPromoted,  int? userId,  ListingUser? user,  ListingSeller? seller)  $default,) {final _that = this;
switch (_that) {
case _Listing():
return $default(_that.id,_that.title,_that.description,_that.priceAmount,_that.priceCurrency,_that.isPriceNegotiable,_that.condition,_that.dealType,_that.sellerType,_that.categoryId,_that.categoryName,_that.categorySlug,_that.locationId,_that.locationName,_that.locationSlug,_that.lat,_that.lon,_that.media,_that.mediaUrls,_that.attributes,_that.status,_that.contactName,_that.contactEmail,_that.contactPhone,_that.createdAt,_that.updatedAt,_that.refreshedAt,_that.expiresAt,_that.qualityScore,_that.contactPhoneMasked,_that.priceNormalized,_that.isPromoted,_that.userId,_that.user,_that.seller);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String title,  String? description,  double priceAmount,  String priceCurrency,  bool? isPriceNegotiable,  String condition,  String? dealType,  String? sellerType,  int categoryId,  String? categoryName,  String? categorySlug,  int locationId,  String? locationName,  String? locationSlug,  double? lat,  double? lon,  List<ListingMedia>? media,  List<String>? mediaUrls,  List<ListingAttribute>? attributes,  String? status,  String? contactName,  String? contactEmail,  String? contactPhone,  DateTime? createdAt,  DateTime? updatedAt,  DateTime? refreshedAt,  DateTime? expiresAt,  double? qualityScore,  String? contactPhoneMasked,  double? priceNormalized,  bool? isPromoted,  int? userId,  ListingUser? user,  ListingSeller? seller)?  $default,) {final _that = this;
switch (_that) {
case _Listing() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.priceAmount,_that.priceCurrency,_that.isPriceNegotiable,_that.condition,_that.dealType,_that.sellerType,_that.categoryId,_that.categoryName,_that.categorySlug,_that.locationId,_that.locationName,_that.locationSlug,_that.lat,_that.lon,_that.media,_that.mediaUrls,_that.attributes,_that.status,_that.contactName,_that.contactEmail,_that.contactPhone,_that.createdAt,_that.updatedAt,_that.refreshedAt,_that.expiresAt,_that.qualityScore,_that.contactPhoneMasked,_that.priceNormalized,_that.isPromoted,_that.userId,_that.user,_that.seller);case _:
  return null;

}
}

}

/// @nodoc


class _Listing implements Listing {
  const _Listing({required this.id, required this.title, this.description, required this.priceAmount, required this.priceCurrency, this.isPriceNegotiable, required this.condition, this.dealType, this.sellerType, required this.categoryId, this.categoryName, this.categorySlug, required this.locationId, this.locationName, this.locationSlug, this.lat, this.lon, final  List<ListingMedia>? media, final  List<String>? mediaUrls, final  List<ListingAttribute>? attributes, this.status, this.contactName, this.contactEmail, this.contactPhone, this.createdAt, this.updatedAt, this.refreshedAt, this.expiresAt, this.qualityScore, this.contactPhoneMasked, this.priceNormalized, this.isPromoted, this.userId, this.user, this.seller}): _media = media,_mediaUrls = mediaUrls,_attributes = attributes;
  

@override final  int id;
@override final  String title;
@override final  String? description;
@override final  double priceAmount;
@override final  String priceCurrency;
@override final  bool? isPriceNegotiable;
@override final  String condition;
@override final  String? dealType;
// 'sell', 'exchange', 'free'
@override final  String? sellerType;
// 'person', 'business'
@override final  int categoryId;
@override final  String? categoryName;
@override final  String? categorySlug;
@override final  int locationId;
@override final  String? locationName;
@override final  String? locationSlug;
@override final  double? lat;
@override final  double? lon;
 final  List<ListingMedia>? _media;
@override List<ListingMedia>? get media {
  final value = _media;
  if (value == null) return null;
  if (_media is EqualUnmodifiableListView) return _media;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _mediaUrls;
@override List<String>? get mediaUrls {
  final value = _mediaUrls;
  if (value == null) return null;
  if (_mediaUrls is EqualUnmodifiableListView) return _mediaUrls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<ListingAttribute>? _attributes;
@override List<ListingAttribute>? get attributes {
  final value = _attributes;
  if (value == null) return null;
  if (_attributes is EqualUnmodifiableListView) return _attributes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? status;
@override final  String? contactName;
@override final  String? contactEmail;
@override final  String? contactPhone;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;
@override final  DateTime? refreshedAt;
@override final  DateTime? expiresAt;
@override final  double? qualityScore;
@override final  String? contactPhoneMasked;
@override final  double? priceNormalized;
@override final  bool? isPromoted;
@override final  int? userId;
@override final  ListingUser? user;
@override final  ListingSeller? seller;

/// Create a copy of Listing
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListingCopyWith<_Listing> get copyWith => __$ListingCopyWithImpl<_Listing>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Listing&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.priceAmount, priceAmount) || other.priceAmount == priceAmount)&&(identical(other.priceCurrency, priceCurrency) || other.priceCurrency == priceCurrency)&&(identical(other.isPriceNegotiable, isPriceNegotiable) || other.isPriceNegotiable == isPriceNegotiable)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.dealType, dealType) || other.dealType == dealType)&&(identical(other.sellerType, sellerType) || other.sellerType == sellerType)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.categorySlug, categorySlug) || other.categorySlug == categorySlug)&&(identical(other.locationId, locationId) || other.locationId == locationId)&&(identical(other.locationName, locationName) || other.locationName == locationName)&&(identical(other.locationSlug, locationSlug) || other.locationSlug == locationSlug)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lon, lon) || other.lon == lon)&&const DeepCollectionEquality().equals(other._media, _media)&&const DeepCollectionEquality().equals(other._mediaUrls, _mediaUrls)&&const DeepCollectionEquality().equals(other._attributes, _attributes)&&(identical(other.status, status) || other.status == status)&&(identical(other.contactName, contactName) || other.contactName == contactName)&&(identical(other.contactEmail, contactEmail) || other.contactEmail == contactEmail)&&(identical(other.contactPhone, contactPhone) || other.contactPhone == contactPhone)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.refreshedAt, refreshedAt) || other.refreshedAt == refreshedAt)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.qualityScore, qualityScore) || other.qualityScore == qualityScore)&&(identical(other.contactPhoneMasked, contactPhoneMasked) || other.contactPhoneMasked == contactPhoneMasked)&&(identical(other.priceNormalized, priceNormalized) || other.priceNormalized == priceNormalized)&&(identical(other.isPromoted, isPromoted) || other.isPromoted == isPromoted)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.user, user) || other.user == user)&&(identical(other.seller, seller) || other.seller == seller));
}


@override
int get hashCode => Object.hashAll([runtimeType,id,title,description,priceAmount,priceCurrency,isPriceNegotiable,condition,dealType,sellerType,categoryId,categoryName,categorySlug,locationId,locationName,locationSlug,lat,lon,const DeepCollectionEquality().hash(_media),const DeepCollectionEquality().hash(_mediaUrls),const DeepCollectionEquality().hash(_attributes),status,contactName,contactEmail,contactPhone,createdAt,updatedAt,refreshedAt,expiresAt,qualityScore,contactPhoneMasked,priceNormalized,isPromoted,userId,user,seller]);

@override
String toString() {
  return 'Listing(id: $id, title: $title, description: $description, priceAmount: $priceAmount, priceCurrency: $priceCurrency, isPriceNegotiable: $isPriceNegotiable, condition: $condition, dealType: $dealType, sellerType: $sellerType, categoryId: $categoryId, categoryName: $categoryName, categorySlug: $categorySlug, locationId: $locationId, locationName: $locationName, locationSlug: $locationSlug, lat: $lat, lon: $lon, media: $media, mediaUrls: $mediaUrls, attributes: $attributes, status: $status, contactName: $contactName, contactEmail: $contactEmail, contactPhone: $contactPhone, createdAt: $createdAt, updatedAt: $updatedAt, refreshedAt: $refreshedAt, expiresAt: $expiresAt, qualityScore: $qualityScore, contactPhoneMasked: $contactPhoneMasked, priceNormalized: $priceNormalized, isPromoted: $isPromoted, userId: $userId, user: $user, seller: $seller)';
}


}

/// @nodoc
abstract mixin class _$ListingCopyWith<$Res> implements $ListingCopyWith<$Res> {
  factory _$ListingCopyWith(_Listing value, $Res Function(_Listing) _then) = __$ListingCopyWithImpl;
@override @useResult
$Res call({
 int id, String title, String? description, double priceAmount, String priceCurrency, bool? isPriceNegotiable, String condition, String? dealType, String? sellerType, int categoryId, String? categoryName, String? categorySlug, int locationId, String? locationName, String? locationSlug, double? lat, double? lon, List<ListingMedia>? media, List<String>? mediaUrls, List<ListingAttribute>? attributes, String? status, String? contactName, String? contactEmail, String? contactPhone, DateTime? createdAt, DateTime? updatedAt, DateTime? refreshedAt, DateTime? expiresAt, double? qualityScore, String? contactPhoneMasked, double? priceNormalized, bool? isPromoted, int? userId, ListingUser? user, ListingSeller? seller
});


@override $ListingUserCopyWith<$Res>? get user;@override $ListingSellerCopyWith<$Res>? get seller;

}
/// @nodoc
class __$ListingCopyWithImpl<$Res>
    implements _$ListingCopyWith<$Res> {
  __$ListingCopyWithImpl(this._self, this._then);

  final _Listing _self;
  final $Res Function(_Listing) _then;

/// Create a copy of Listing
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = freezed,Object? priceAmount = null,Object? priceCurrency = null,Object? isPriceNegotiable = freezed,Object? condition = null,Object? dealType = freezed,Object? sellerType = freezed,Object? categoryId = null,Object? categoryName = freezed,Object? categorySlug = freezed,Object? locationId = null,Object? locationName = freezed,Object? locationSlug = freezed,Object? lat = freezed,Object? lon = freezed,Object? media = freezed,Object? mediaUrls = freezed,Object? attributes = freezed,Object? status = freezed,Object? contactName = freezed,Object? contactEmail = freezed,Object? contactPhone = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? refreshedAt = freezed,Object? expiresAt = freezed,Object? qualityScore = freezed,Object? contactPhoneMasked = freezed,Object? priceNormalized = freezed,Object? isPromoted = freezed,Object? userId = freezed,Object? user = freezed,Object? seller = freezed,}) {
  return _then(_Listing(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,priceAmount: null == priceAmount ? _self.priceAmount : priceAmount // ignore: cast_nullable_to_non_nullable
as double,priceCurrency: null == priceCurrency ? _self.priceCurrency : priceCurrency // ignore: cast_nullable_to_non_nullable
as String,isPriceNegotiable: freezed == isPriceNegotiable ? _self.isPriceNegotiable : isPriceNegotiable // ignore: cast_nullable_to_non_nullable
as bool?,condition: null == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as String,dealType: freezed == dealType ? _self.dealType : dealType // ignore: cast_nullable_to_non_nullable
as String?,sellerType: freezed == sellerType ? _self.sellerType : sellerType // ignore: cast_nullable_to_non_nullable
as String?,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,categoryName: freezed == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String?,categorySlug: freezed == categorySlug ? _self.categorySlug : categorySlug // ignore: cast_nullable_to_non_nullable
as String?,locationId: null == locationId ? _self.locationId : locationId // ignore: cast_nullable_to_non_nullable
as int,locationName: freezed == locationName ? _self.locationName : locationName // ignore: cast_nullable_to_non_nullable
as String?,locationSlug: freezed == locationSlug ? _self.locationSlug : locationSlug // ignore: cast_nullable_to_non_nullable
as String?,lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double?,lon: freezed == lon ? _self.lon : lon // ignore: cast_nullable_to_non_nullable
as double?,media: freezed == media ? _self._media : media // ignore: cast_nullable_to_non_nullable
as List<ListingMedia>?,mediaUrls: freezed == mediaUrls ? _self._mediaUrls : mediaUrls // ignore: cast_nullable_to_non_nullable
as List<String>?,attributes: freezed == attributes ? _self._attributes : attributes // ignore: cast_nullable_to_non_nullable
as List<ListingAttribute>?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,contactName: freezed == contactName ? _self.contactName : contactName // ignore: cast_nullable_to_non_nullable
as String?,contactEmail: freezed == contactEmail ? _self.contactEmail : contactEmail // ignore: cast_nullable_to_non_nullable
as String?,contactPhone: freezed == contactPhone ? _self.contactPhone : contactPhone // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,refreshedAt: freezed == refreshedAt ? _self.refreshedAt : refreshedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as DateTime?,qualityScore: freezed == qualityScore ? _self.qualityScore : qualityScore // ignore: cast_nullable_to_non_nullable
as double?,contactPhoneMasked: freezed == contactPhoneMasked ? _self.contactPhoneMasked : contactPhoneMasked // ignore: cast_nullable_to_non_nullable
as String?,priceNormalized: freezed == priceNormalized ? _self.priceNormalized : priceNormalized // ignore: cast_nullable_to_non_nullable
as double?,isPromoted: freezed == isPromoted ? _self.isPromoted : isPromoted // ignore: cast_nullable_to_non_nullable
as bool?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as ListingUser?,seller: freezed == seller ? _self.seller : seller // ignore: cast_nullable_to_non_nullable
as ListingSeller?,
  ));
}

/// Create a copy of Listing
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ListingUserCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $ListingUserCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of Listing
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
mixin _$ListingPayload {

 String get title; String? get description; double get priceAmount; String get priceCurrency; bool? get isPriceNegotiable; String get condition; String? get dealType; String? get sellerType; int get categoryId; int get locationId; double? get lat; double? get lon; List<ListingAttributePayload>? get attributes; String? get contactName; String? get contactEmail; String? get contactPhone;
/// Create a copy of ListingPayload
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListingPayloadCopyWith<ListingPayload> get copyWith => _$ListingPayloadCopyWithImpl<ListingPayload>(this as ListingPayload, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListingPayload&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.priceAmount, priceAmount) || other.priceAmount == priceAmount)&&(identical(other.priceCurrency, priceCurrency) || other.priceCurrency == priceCurrency)&&(identical(other.isPriceNegotiable, isPriceNegotiable) || other.isPriceNegotiable == isPriceNegotiable)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.dealType, dealType) || other.dealType == dealType)&&(identical(other.sellerType, sellerType) || other.sellerType == sellerType)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.locationId, locationId) || other.locationId == locationId)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lon, lon) || other.lon == lon)&&const DeepCollectionEquality().equals(other.attributes, attributes)&&(identical(other.contactName, contactName) || other.contactName == contactName)&&(identical(other.contactEmail, contactEmail) || other.contactEmail == contactEmail)&&(identical(other.contactPhone, contactPhone) || other.contactPhone == contactPhone));
}


@override
int get hashCode => Object.hash(runtimeType,title,description,priceAmount,priceCurrency,isPriceNegotiable,condition,dealType,sellerType,categoryId,locationId,lat,lon,const DeepCollectionEquality().hash(attributes),contactName,contactEmail,contactPhone);

@override
String toString() {
  return 'ListingPayload(title: $title, description: $description, priceAmount: $priceAmount, priceCurrency: $priceCurrency, isPriceNegotiable: $isPriceNegotiable, condition: $condition, dealType: $dealType, sellerType: $sellerType, categoryId: $categoryId, locationId: $locationId, lat: $lat, lon: $lon, attributes: $attributes, contactName: $contactName, contactEmail: $contactEmail, contactPhone: $contactPhone)';
}


}

/// @nodoc
abstract mixin class $ListingPayloadCopyWith<$Res>  {
  factory $ListingPayloadCopyWith(ListingPayload value, $Res Function(ListingPayload) _then) = _$ListingPayloadCopyWithImpl;
@useResult
$Res call({
 String title, String? description, double priceAmount, String priceCurrency, bool? isPriceNegotiable, String condition, String? dealType, String? sellerType, int categoryId, int locationId, double? lat, double? lon, List<ListingAttributePayload>? attributes, String? contactName, String? contactEmail, String? contactPhone
});




}
/// @nodoc
class _$ListingPayloadCopyWithImpl<$Res>
    implements $ListingPayloadCopyWith<$Res> {
  _$ListingPayloadCopyWithImpl(this._self, this._then);

  final ListingPayload _self;
  final $Res Function(ListingPayload) _then;

/// Create a copy of ListingPayload
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? description = freezed,Object? priceAmount = null,Object? priceCurrency = null,Object? isPriceNegotiable = freezed,Object? condition = null,Object? dealType = freezed,Object? sellerType = freezed,Object? categoryId = null,Object? locationId = null,Object? lat = freezed,Object? lon = freezed,Object? attributes = freezed,Object? contactName = freezed,Object? contactEmail = freezed,Object? contactPhone = freezed,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,priceAmount: null == priceAmount ? _self.priceAmount : priceAmount // ignore: cast_nullable_to_non_nullable
as double,priceCurrency: null == priceCurrency ? _self.priceCurrency : priceCurrency // ignore: cast_nullable_to_non_nullable
as String,isPriceNegotiable: freezed == isPriceNegotiable ? _self.isPriceNegotiable : isPriceNegotiable // ignore: cast_nullable_to_non_nullable
as bool?,condition: null == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as String,dealType: freezed == dealType ? _self.dealType : dealType // ignore: cast_nullable_to_non_nullable
as String?,sellerType: freezed == sellerType ? _self.sellerType : sellerType // ignore: cast_nullable_to_non_nullable
as String?,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,locationId: null == locationId ? _self.locationId : locationId // ignore: cast_nullable_to_non_nullable
as int,lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double?,lon: freezed == lon ? _self.lon : lon // ignore: cast_nullable_to_non_nullable
as double?,attributes: freezed == attributes ? _self.attributes : attributes // ignore: cast_nullable_to_non_nullable
as List<ListingAttributePayload>?,contactName: freezed == contactName ? _self.contactName : contactName // ignore: cast_nullable_to_non_nullable
as String?,contactEmail: freezed == contactEmail ? _self.contactEmail : contactEmail // ignore: cast_nullable_to_non_nullable
as String?,contactPhone: freezed == contactPhone ? _self.contactPhone : contactPhone // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ListingPayload].
extension ListingPayloadPatterns on ListingPayload {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ListingPayload value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ListingPayload() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ListingPayload value)  $default,){
final _that = this;
switch (_that) {
case _ListingPayload():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ListingPayload value)?  $default,){
final _that = this;
switch (_that) {
case _ListingPayload() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String? description,  double priceAmount,  String priceCurrency,  bool? isPriceNegotiable,  String condition,  String? dealType,  String? sellerType,  int categoryId,  int locationId,  double? lat,  double? lon,  List<ListingAttributePayload>? attributes,  String? contactName,  String? contactEmail,  String? contactPhone)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ListingPayload() when $default != null:
return $default(_that.title,_that.description,_that.priceAmount,_that.priceCurrency,_that.isPriceNegotiable,_that.condition,_that.dealType,_that.sellerType,_that.categoryId,_that.locationId,_that.lat,_that.lon,_that.attributes,_that.contactName,_that.contactEmail,_that.contactPhone);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String? description,  double priceAmount,  String priceCurrency,  bool? isPriceNegotiable,  String condition,  String? dealType,  String? sellerType,  int categoryId,  int locationId,  double? lat,  double? lon,  List<ListingAttributePayload>? attributes,  String? contactName,  String? contactEmail,  String? contactPhone)  $default,) {final _that = this;
switch (_that) {
case _ListingPayload():
return $default(_that.title,_that.description,_that.priceAmount,_that.priceCurrency,_that.isPriceNegotiable,_that.condition,_that.dealType,_that.sellerType,_that.categoryId,_that.locationId,_that.lat,_that.lon,_that.attributes,_that.contactName,_that.contactEmail,_that.contactPhone);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String? description,  double priceAmount,  String priceCurrency,  bool? isPriceNegotiable,  String condition,  String? dealType,  String? sellerType,  int categoryId,  int locationId,  double? lat,  double? lon,  List<ListingAttributePayload>? attributes,  String? contactName,  String? contactEmail,  String? contactPhone)?  $default,) {final _that = this;
switch (_that) {
case _ListingPayload() when $default != null:
return $default(_that.title,_that.description,_that.priceAmount,_that.priceCurrency,_that.isPriceNegotiable,_that.condition,_that.dealType,_that.sellerType,_that.categoryId,_that.locationId,_that.lat,_that.lon,_that.attributes,_that.contactName,_that.contactEmail,_that.contactPhone);case _:
  return null;

}
}

}

/// @nodoc


class _ListingPayload implements ListingPayload {
  const _ListingPayload({required this.title, this.description, required this.priceAmount, required this.priceCurrency, this.isPriceNegotiable, required this.condition, this.dealType, this.sellerType, required this.categoryId, required this.locationId, this.lat, this.lon, final  List<ListingAttributePayload>? attributes, this.contactName, this.contactEmail, this.contactPhone}): _attributes = attributes;
  

@override final  String title;
@override final  String? description;
@override final  double priceAmount;
@override final  String priceCurrency;
@override final  bool? isPriceNegotiable;
@override final  String condition;
@override final  String? dealType;
@override final  String? sellerType;
@override final  int categoryId;
@override final  int locationId;
@override final  double? lat;
@override final  double? lon;
 final  List<ListingAttributePayload>? _attributes;
@override List<ListingAttributePayload>? get attributes {
  final value = _attributes;
  if (value == null) return null;
  if (_attributes is EqualUnmodifiableListView) return _attributes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? contactName;
@override final  String? contactEmail;
@override final  String? contactPhone;

/// Create a copy of ListingPayload
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListingPayloadCopyWith<_ListingPayload> get copyWith => __$ListingPayloadCopyWithImpl<_ListingPayload>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListingPayload&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.priceAmount, priceAmount) || other.priceAmount == priceAmount)&&(identical(other.priceCurrency, priceCurrency) || other.priceCurrency == priceCurrency)&&(identical(other.isPriceNegotiable, isPriceNegotiable) || other.isPriceNegotiable == isPriceNegotiable)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.dealType, dealType) || other.dealType == dealType)&&(identical(other.sellerType, sellerType) || other.sellerType == sellerType)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.locationId, locationId) || other.locationId == locationId)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lon, lon) || other.lon == lon)&&const DeepCollectionEquality().equals(other._attributes, _attributes)&&(identical(other.contactName, contactName) || other.contactName == contactName)&&(identical(other.contactEmail, contactEmail) || other.contactEmail == contactEmail)&&(identical(other.contactPhone, contactPhone) || other.contactPhone == contactPhone));
}


@override
int get hashCode => Object.hash(runtimeType,title,description,priceAmount,priceCurrency,isPriceNegotiable,condition,dealType,sellerType,categoryId,locationId,lat,lon,const DeepCollectionEquality().hash(_attributes),contactName,contactEmail,contactPhone);

@override
String toString() {
  return 'ListingPayload(title: $title, description: $description, priceAmount: $priceAmount, priceCurrency: $priceCurrency, isPriceNegotiable: $isPriceNegotiable, condition: $condition, dealType: $dealType, sellerType: $sellerType, categoryId: $categoryId, locationId: $locationId, lat: $lat, lon: $lon, attributes: $attributes, contactName: $contactName, contactEmail: $contactEmail, contactPhone: $contactPhone)';
}


}

/// @nodoc
abstract mixin class _$ListingPayloadCopyWith<$Res> implements $ListingPayloadCopyWith<$Res> {
  factory _$ListingPayloadCopyWith(_ListingPayload value, $Res Function(_ListingPayload) _then) = __$ListingPayloadCopyWithImpl;
@override @useResult
$Res call({
 String title, String? description, double priceAmount, String priceCurrency, bool? isPriceNegotiable, String condition, String? dealType, String? sellerType, int categoryId, int locationId, double? lat, double? lon, List<ListingAttributePayload>? attributes, String? contactName, String? contactEmail, String? contactPhone
});




}
/// @nodoc
class __$ListingPayloadCopyWithImpl<$Res>
    implements _$ListingPayloadCopyWith<$Res> {
  __$ListingPayloadCopyWithImpl(this._self, this._then);

  final _ListingPayload _self;
  final $Res Function(_ListingPayload) _then;

/// Create a copy of ListingPayload
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? description = freezed,Object? priceAmount = null,Object? priceCurrency = null,Object? isPriceNegotiable = freezed,Object? condition = null,Object? dealType = freezed,Object? sellerType = freezed,Object? categoryId = null,Object? locationId = null,Object? lat = freezed,Object? lon = freezed,Object? attributes = freezed,Object? contactName = freezed,Object? contactEmail = freezed,Object? contactPhone = freezed,}) {
  return _then(_ListingPayload(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,priceAmount: null == priceAmount ? _self.priceAmount : priceAmount // ignore: cast_nullable_to_non_nullable
as double,priceCurrency: null == priceCurrency ? _self.priceCurrency : priceCurrency // ignore: cast_nullable_to_non_nullable
as String,isPriceNegotiable: freezed == isPriceNegotiable ? _self.isPriceNegotiable : isPriceNegotiable // ignore: cast_nullable_to_non_nullable
as bool?,condition: null == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as String,dealType: freezed == dealType ? _self.dealType : dealType // ignore: cast_nullable_to_non_nullable
as String?,sellerType: freezed == sellerType ? _self.sellerType : sellerType // ignore: cast_nullable_to_non_nullable
as String?,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,locationId: null == locationId ? _self.locationId : locationId // ignore: cast_nullable_to_non_nullable
as int,lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double?,lon: freezed == lon ? _self.lon : lon // ignore: cast_nullable_to_non_nullable
as double?,attributes: freezed == attributes ? _self._attributes : attributes // ignore: cast_nullable_to_non_nullable
as List<ListingAttributePayload>?,contactName: freezed == contactName ? _self.contactName : contactName // ignore: cast_nullable_to_non_nullable
as String?,contactEmail: freezed == contactEmail ? _self.contactEmail : contactEmail // ignore: cast_nullable_to_non_nullable
as String?,contactPhone: freezed == contactPhone ? _self.contactPhone : contactPhone // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$ListingAttributePayload {

 int get attributeId; dynamic get value;
/// Create a copy of ListingAttributePayload
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListingAttributePayloadCopyWith<ListingAttributePayload> get copyWith => _$ListingAttributePayloadCopyWithImpl<ListingAttributePayload>(this as ListingAttributePayload, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListingAttributePayload&&(identical(other.attributeId, attributeId) || other.attributeId == attributeId)&&const DeepCollectionEquality().equals(other.value, value));
}


@override
int get hashCode => Object.hash(runtimeType,attributeId,const DeepCollectionEquality().hash(value));

@override
String toString() {
  return 'ListingAttributePayload(attributeId: $attributeId, value: $value)';
}


}

/// @nodoc
abstract mixin class $ListingAttributePayloadCopyWith<$Res>  {
  factory $ListingAttributePayloadCopyWith(ListingAttributePayload value, $Res Function(ListingAttributePayload) _then) = _$ListingAttributePayloadCopyWithImpl;
@useResult
$Res call({
 int attributeId, dynamic value
});




}
/// @nodoc
class _$ListingAttributePayloadCopyWithImpl<$Res>
    implements $ListingAttributePayloadCopyWith<$Res> {
  _$ListingAttributePayloadCopyWithImpl(this._self, this._then);

  final ListingAttributePayload _self;
  final $Res Function(ListingAttributePayload) _then;

/// Create a copy of ListingAttributePayload
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? attributeId = null,Object? value = freezed,}) {
  return _then(_self.copyWith(
attributeId: null == attributeId ? _self.attributeId : attributeId // ignore: cast_nullable_to_non_nullable
as int,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [ListingAttributePayload].
extension ListingAttributePayloadPatterns on ListingAttributePayload {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ListingAttributePayload value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ListingAttributePayload() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ListingAttributePayload value)  $default,){
final _that = this;
switch (_that) {
case _ListingAttributePayload():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ListingAttributePayload value)?  $default,){
final _that = this;
switch (_that) {
case _ListingAttributePayload() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int attributeId,  dynamic value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ListingAttributePayload() when $default != null:
return $default(_that.attributeId,_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int attributeId,  dynamic value)  $default,) {final _that = this;
switch (_that) {
case _ListingAttributePayload():
return $default(_that.attributeId,_that.value);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int attributeId,  dynamic value)?  $default,) {final _that = this;
switch (_that) {
case _ListingAttributePayload() when $default != null:
return $default(_that.attributeId,_that.value);case _:
  return null;

}
}

}

/// @nodoc


class _ListingAttributePayload implements ListingAttributePayload {
  const _ListingAttributePayload({required this.attributeId, required this.value});
  

@override final  int attributeId;
@override final  dynamic value;

/// Create a copy of ListingAttributePayload
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListingAttributePayloadCopyWith<_ListingAttributePayload> get copyWith => __$ListingAttributePayloadCopyWithImpl<_ListingAttributePayload>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListingAttributePayload&&(identical(other.attributeId, attributeId) || other.attributeId == attributeId)&&const DeepCollectionEquality().equals(other.value, value));
}


@override
int get hashCode => Object.hash(runtimeType,attributeId,const DeepCollectionEquality().hash(value));

@override
String toString() {
  return 'ListingAttributePayload(attributeId: $attributeId, value: $value)';
}


}

/// @nodoc
abstract mixin class _$ListingAttributePayloadCopyWith<$Res> implements $ListingAttributePayloadCopyWith<$Res> {
  factory _$ListingAttributePayloadCopyWith(_ListingAttributePayload value, $Res Function(_ListingAttributePayload) _then) = __$ListingAttributePayloadCopyWithImpl;
@override @useResult
$Res call({
 int attributeId, dynamic value
});




}
/// @nodoc
class __$ListingAttributePayloadCopyWithImpl<$Res>
    implements _$ListingAttributePayloadCopyWith<$Res> {
  __$ListingAttributePayloadCopyWithImpl(this._self, this._then);

  final _ListingAttributePayload _self;
  final $Res Function(_ListingAttributePayload) _then;

/// Create a copy of ListingAttributePayload
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? attributeId = null,Object? value = freezed,}) {
  return _then(_ListingAttributePayload(
attributeId: null == attributeId ? _self.attributeId : attributeId // ignore: cast_nullable_to_non_nullable
as int,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
