// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Favorite {

 int get id; int get listingId; String get title; double? get price; String? get currency; String? get thumbnailUrl; String? get locationName; String? get status; DateTime? get addedAt;
/// Create a copy of Favorite
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FavoriteCopyWith<Favorite> get copyWith => _$FavoriteCopyWithImpl<Favorite>(this as Favorite, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Favorite&&(identical(other.id, id) || other.id == id)&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.title, title) || other.title == title)&&(identical(other.price, price) || other.price == price)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&(identical(other.locationName, locationName) || other.locationName == locationName)&&(identical(other.status, status) || other.status == status)&&(identical(other.addedAt, addedAt) || other.addedAt == addedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,listingId,title,price,currency,thumbnailUrl,locationName,status,addedAt);

@override
String toString() {
  return 'Favorite(id: $id, listingId: $listingId, title: $title, price: $price, currency: $currency, thumbnailUrl: $thumbnailUrl, locationName: $locationName, status: $status, addedAt: $addedAt)';
}


}

/// @nodoc
abstract mixin class $FavoriteCopyWith<$Res>  {
  factory $FavoriteCopyWith(Favorite value, $Res Function(Favorite) _then) = _$FavoriteCopyWithImpl;
@useResult
$Res call({
 int id, int listingId, String title, double? price, String? currency, String? thumbnailUrl, String? locationName, String? status, DateTime? addedAt
});




}
/// @nodoc
class _$FavoriteCopyWithImpl<$Res>
    implements $FavoriteCopyWith<$Res> {
  _$FavoriteCopyWithImpl(this._self, this._then);

  final Favorite _self;
  final $Res Function(Favorite) _then;

/// Create a copy of Favorite
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
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [Favorite].
extension FavoritePatterns on Favorite {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Favorite value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Favorite() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Favorite value)  $default,){
final _that = this;
switch (_that) {
case _Favorite():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Favorite value)?  $default,){
final _that = this;
switch (_that) {
case _Favorite() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int listingId,  String title,  double? price,  String? currency,  String? thumbnailUrl,  String? locationName,  String? status,  DateTime? addedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Favorite() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int listingId,  String title,  double? price,  String? currency,  String? thumbnailUrl,  String? locationName,  String? status,  DateTime? addedAt)  $default,) {final _that = this;
switch (_that) {
case _Favorite():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int listingId,  String title,  double? price,  String? currency,  String? thumbnailUrl,  String? locationName,  String? status,  DateTime? addedAt)?  $default,) {final _that = this;
switch (_that) {
case _Favorite() when $default != null:
return $default(_that.id,_that.listingId,_that.title,_that.price,_that.currency,_that.thumbnailUrl,_that.locationName,_that.status,_that.addedAt);case _:
  return null;

}
}

}

/// @nodoc


class _Favorite implements Favorite {
  const _Favorite({required this.id, required this.listingId, required this.title, this.price, this.currency, this.thumbnailUrl, this.locationName, this.status, this.addedAt});
  

@override final  int id;
@override final  int listingId;
@override final  String title;
@override final  double? price;
@override final  String? currency;
@override final  String? thumbnailUrl;
@override final  String? locationName;
@override final  String? status;
@override final  DateTime? addedAt;

/// Create a copy of Favorite
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FavoriteCopyWith<_Favorite> get copyWith => __$FavoriteCopyWithImpl<_Favorite>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Favorite&&(identical(other.id, id) || other.id == id)&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.title, title) || other.title == title)&&(identical(other.price, price) || other.price == price)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&(identical(other.locationName, locationName) || other.locationName == locationName)&&(identical(other.status, status) || other.status == status)&&(identical(other.addedAt, addedAt) || other.addedAt == addedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,listingId,title,price,currency,thumbnailUrl,locationName,status,addedAt);

@override
String toString() {
  return 'Favorite(id: $id, listingId: $listingId, title: $title, price: $price, currency: $currency, thumbnailUrl: $thumbnailUrl, locationName: $locationName, status: $status, addedAt: $addedAt)';
}


}

/// @nodoc
abstract mixin class _$FavoriteCopyWith<$Res> implements $FavoriteCopyWith<$Res> {
  factory _$FavoriteCopyWith(_Favorite value, $Res Function(_Favorite) _then) = __$FavoriteCopyWithImpl;
@override @useResult
$Res call({
 int id, int listingId, String title, double? price, String? currency, String? thumbnailUrl, String? locationName, String? status, DateTime? addedAt
});




}
/// @nodoc
class __$FavoriteCopyWithImpl<$Res>
    implements _$FavoriteCopyWith<$Res> {
  __$FavoriteCopyWithImpl(this._self, this._then);

  final _Favorite _self;
  final $Res Function(_Favorite) _then;

/// Create a copy of Favorite
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? listingId = null,Object? title = null,Object? price = freezed,Object? currency = freezed,Object? thumbnailUrl = freezed,Object? locationName = freezed,Object? status = freezed,Object? addedAt = freezed,}) {
  return _then(_Favorite(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,listingId: null == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,thumbnailUrl: freezed == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,locationName: freezed == locationName ? _self.locationName : locationName // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,addedAt: freezed == addedAt ? _self.addedAt : addedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

/// @nodoc
mixin _$RecentlyViewedListing {

 int get id; int get listingId; String get title; double? get price; String? get currency; String? get thumbnailUrl; String? get locationName; DateTime? get viewedAt;
/// Create a copy of RecentlyViewedListing
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecentlyViewedListingCopyWith<RecentlyViewedListing> get copyWith => _$RecentlyViewedListingCopyWithImpl<RecentlyViewedListing>(this as RecentlyViewedListing, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecentlyViewedListing&&(identical(other.id, id) || other.id == id)&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.title, title) || other.title == title)&&(identical(other.price, price) || other.price == price)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&(identical(other.locationName, locationName) || other.locationName == locationName)&&(identical(other.viewedAt, viewedAt) || other.viewedAt == viewedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,listingId,title,price,currency,thumbnailUrl,locationName,viewedAt);

@override
String toString() {
  return 'RecentlyViewedListing(id: $id, listingId: $listingId, title: $title, price: $price, currency: $currency, thumbnailUrl: $thumbnailUrl, locationName: $locationName, viewedAt: $viewedAt)';
}


}

/// @nodoc
abstract mixin class $RecentlyViewedListingCopyWith<$Res>  {
  factory $RecentlyViewedListingCopyWith(RecentlyViewedListing value, $Res Function(RecentlyViewedListing) _then) = _$RecentlyViewedListingCopyWithImpl;
@useResult
$Res call({
 int id, int listingId, String title, double? price, String? currency, String? thumbnailUrl, String? locationName, DateTime? viewedAt
});




}
/// @nodoc
class _$RecentlyViewedListingCopyWithImpl<$Res>
    implements $RecentlyViewedListingCopyWith<$Res> {
  _$RecentlyViewedListingCopyWithImpl(this._self, this._then);

  final RecentlyViewedListing _self;
  final $Res Function(RecentlyViewedListing) _then;

/// Create a copy of RecentlyViewedListing
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
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [RecentlyViewedListing].
extension RecentlyViewedListingPatterns on RecentlyViewedListing {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RecentlyViewedListing value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RecentlyViewedListing() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RecentlyViewedListing value)  $default,){
final _that = this;
switch (_that) {
case _RecentlyViewedListing():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RecentlyViewedListing value)?  $default,){
final _that = this;
switch (_that) {
case _RecentlyViewedListing() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int listingId,  String title,  double? price,  String? currency,  String? thumbnailUrl,  String? locationName,  DateTime? viewedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecentlyViewedListing() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int listingId,  String title,  double? price,  String? currency,  String? thumbnailUrl,  String? locationName,  DateTime? viewedAt)  $default,) {final _that = this;
switch (_that) {
case _RecentlyViewedListing():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int listingId,  String title,  double? price,  String? currency,  String? thumbnailUrl,  String? locationName,  DateTime? viewedAt)?  $default,) {final _that = this;
switch (_that) {
case _RecentlyViewedListing() when $default != null:
return $default(_that.id,_that.listingId,_that.title,_that.price,_that.currency,_that.thumbnailUrl,_that.locationName,_that.viewedAt);case _:
  return null;

}
}

}

/// @nodoc


class _RecentlyViewedListing implements RecentlyViewedListing {
  const _RecentlyViewedListing({required this.id, required this.listingId, required this.title, this.price, this.currency, this.thumbnailUrl, this.locationName, this.viewedAt});
  

@override final  int id;
@override final  int listingId;
@override final  String title;
@override final  double? price;
@override final  String? currency;
@override final  String? thumbnailUrl;
@override final  String? locationName;
@override final  DateTime? viewedAt;

/// Create a copy of RecentlyViewedListing
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecentlyViewedListingCopyWith<_RecentlyViewedListing> get copyWith => __$RecentlyViewedListingCopyWithImpl<_RecentlyViewedListing>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecentlyViewedListing&&(identical(other.id, id) || other.id == id)&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.title, title) || other.title == title)&&(identical(other.price, price) || other.price == price)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl)&&(identical(other.locationName, locationName) || other.locationName == locationName)&&(identical(other.viewedAt, viewedAt) || other.viewedAt == viewedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,listingId,title,price,currency,thumbnailUrl,locationName,viewedAt);

@override
String toString() {
  return 'RecentlyViewedListing(id: $id, listingId: $listingId, title: $title, price: $price, currency: $currency, thumbnailUrl: $thumbnailUrl, locationName: $locationName, viewedAt: $viewedAt)';
}


}

/// @nodoc
abstract mixin class _$RecentlyViewedListingCopyWith<$Res> implements $RecentlyViewedListingCopyWith<$Res> {
  factory _$RecentlyViewedListingCopyWith(_RecentlyViewedListing value, $Res Function(_RecentlyViewedListing) _then) = __$RecentlyViewedListingCopyWithImpl;
@override @useResult
$Res call({
 int id, int listingId, String title, double? price, String? currency, String? thumbnailUrl, String? locationName, DateTime? viewedAt
});




}
/// @nodoc
class __$RecentlyViewedListingCopyWithImpl<$Res>
    implements _$RecentlyViewedListingCopyWith<$Res> {
  __$RecentlyViewedListingCopyWithImpl(this._self, this._then);

  final _RecentlyViewedListing _self;
  final $Res Function(_RecentlyViewedListing) _then;

/// Create a copy of RecentlyViewedListing
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? listingId = null,Object? title = null,Object? price = freezed,Object? currency = freezed,Object? thumbnailUrl = freezed,Object? locationName = freezed,Object? viewedAt = freezed,}) {
  return _then(_RecentlyViewedListing(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,listingId: null == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,thumbnailUrl: freezed == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String?,locationName: freezed == locationName ? _self.locationName : locationName // ignore: cast_nullable_to_non_nullable
as String?,viewedAt: freezed == viewedAt ? _self.viewedAt : viewedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
