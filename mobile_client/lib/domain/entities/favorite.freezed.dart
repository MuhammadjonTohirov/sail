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

 int get id; int get listingId; String get title; double? get price; String? get locationName; List<String>? get mediaUrls; DateTime? get createdAt;
/// Create a copy of Favorite
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FavoriteCopyWith<Favorite> get copyWith => _$FavoriteCopyWithImpl<Favorite>(this as Favorite, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Favorite&&(identical(other.id, id) || other.id == id)&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.title, title) || other.title == title)&&(identical(other.price, price) || other.price == price)&&(identical(other.locationName, locationName) || other.locationName == locationName)&&const DeepCollectionEquality().equals(other.mediaUrls, mediaUrls)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,listingId,title,price,locationName,const DeepCollectionEquality().hash(mediaUrls),createdAt);

@override
String toString() {
  return 'Favorite(id: $id, listingId: $listingId, title: $title, price: $price, locationName: $locationName, mediaUrls: $mediaUrls, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $FavoriteCopyWith<$Res>  {
  factory $FavoriteCopyWith(Favorite value, $Res Function(Favorite) _then) = _$FavoriteCopyWithImpl;
@useResult
$Res call({
 int id, int listingId, String title, double? price, String? locationName, List<String>? mediaUrls, DateTime? createdAt
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? listingId = null,Object? title = null,Object? price = freezed,Object? locationName = freezed,Object? mediaUrls = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,listingId: null == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,locationName: freezed == locationName ? _self.locationName : locationName // ignore: cast_nullable_to_non_nullable
as String?,mediaUrls: freezed == mediaUrls ? _self.mediaUrls : mediaUrls // ignore: cast_nullable_to_non_nullable
as List<String>?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int listingId,  String title,  double? price,  String? locationName,  List<String>? mediaUrls,  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Favorite() when $default != null:
return $default(_that.id,_that.listingId,_that.title,_that.price,_that.locationName,_that.mediaUrls,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int listingId,  String title,  double? price,  String? locationName,  List<String>? mediaUrls,  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _Favorite():
return $default(_that.id,_that.listingId,_that.title,_that.price,_that.locationName,_that.mediaUrls,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int listingId,  String title,  double? price,  String? locationName,  List<String>? mediaUrls,  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _Favorite() when $default != null:
return $default(_that.id,_that.listingId,_that.title,_that.price,_that.locationName,_that.mediaUrls,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc


class _Favorite implements Favorite {
  const _Favorite({required this.id, required this.listingId, required this.title, this.price, this.locationName, final  List<String>? mediaUrls, this.createdAt}): _mediaUrls = mediaUrls;
  

@override final  int id;
@override final  int listingId;
@override final  String title;
@override final  double? price;
@override final  String? locationName;
 final  List<String>? _mediaUrls;
@override List<String>? get mediaUrls {
  final value = _mediaUrls;
  if (value == null) return null;
  if (_mediaUrls is EqualUnmodifiableListView) return _mediaUrls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  DateTime? createdAt;

/// Create a copy of Favorite
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FavoriteCopyWith<_Favorite> get copyWith => __$FavoriteCopyWithImpl<_Favorite>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Favorite&&(identical(other.id, id) || other.id == id)&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.title, title) || other.title == title)&&(identical(other.price, price) || other.price == price)&&(identical(other.locationName, locationName) || other.locationName == locationName)&&const DeepCollectionEquality().equals(other._mediaUrls, _mediaUrls)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,listingId,title,price,locationName,const DeepCollectionEquality().hash(_mediaUrls),createdAt);

@override
String toString() {
  return 'Favorite(id: $id, listingId: $listingId, title: $title, price: $price, locationName: $locationName, mediaUrls: $mediaUrls, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$FavoriteCopyWith<$Res> implements $FavoriteCopyWith<$Res> {
  factory _$FavoriteCopyWith(_Favorite value, $Res Function(_Favorite) _then) = __$FavoriteCopyWithImpl;
@override @useResult
$Res call({
 int id, int listingId, String title, double? price, String? locationName, List<String>? mediaUrls, DateTime? createdAt
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? listingId = null,Object? title = null,Object? price = freezed,Object? locationName = freezed,Object? mediaUrls = freezed,Object? createdAt = freezed,}) {
  return _then(_Favorite(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,listingId: null == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,locationName: freezed == locationName ? _self.locationName : locationName // ignore: cast_nullable_to_non_nullable
as String?,mediaUrls: freezed == mediaUrls ? _self._mediaUrls : mediaUrls // ignore: cast_nullable_to_non_nullable
as List<String>?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

/// @nodoc
mixin _$RecentlyViewedListing {

 int get id; int get listingId; String get title; double? get price; String? get locationName; List<String>? get mediaUrls; DateTime? get viewedAt;
/// Create a copy of RecentlyViewedListing
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecentlyViewedListingCopyWith<RecentlyViewedListing> get copyWith => _$RecentlyViewedListingCopyWithImpl<RecentlyViewedListing>(this as RecentlyViewedListing, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecentlyViewedListing&&(identical(other.id, id) || other.id == id)&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.title, title) || other.title == title)&&(identical(other.price, price) || other.price == price)&&(identical(other.locationName, locationName) || other.locationName == locationName)&&const DeepCollectionEquality().equals(other.mediaUrls, mediaUrls)&&(identical(other.viewedAt, viewedAt) || other.viewedAt == viewedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,listingId,title,price,locationName,const DeepCollectionEquality().hash(mediaUrls),viewedAt);

@override
String toString() {
  return 'RecentlyViewedListing(id: $id, listingId: $listingId, title: $title, price: $price, locationName: $locationName, mediaUrls: $mediaUrls, viewedAt: $viewedAt)';
}


}

/// @nodoc
abstract mixin class $RecentlyViewedListingCopyWith<$Res>  {
  factory $RecentlyViewedListingCopyWith(RecentlyViewedListing value, $Res Function(RecentlyViewedListing) _then) = _$RecentlyViewedListingCopyWithImpl;
@useResult
$Res call({
 int id, int listingId, String title, double? price, String? locationName, List<String>? mediaUrls, DateTime? viewedAt
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? listingId = null,Object? title = null,Object? price = freezed,Object? locationName = freezed,Object? mediaUrls = freezed,Object? viewedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,listingId: null == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,locationName: freezed == locationName ? _self.locationName : locationName // ignore: cast_nullable_to_non_nullable
as String?,mediaUrls: freezed == mediaUrls ? _self.mediaUrls : mediaUrls // ignore: cast_nullable_to_non_nullable
as List<String>?,viewedAt: freezed == viewedAt ? _self.viewedAt : viewedAt // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int listingId,  String title,  double? price,  String? locationName,  List<String>? mediaUrls,  DateTime? viewedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RecentlyViewedListing() when $default != null:
return $default(_that.id,_that.listingId,_that.title,_that.price,_that.locationName,_that.mediaUrls,_that.viewedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int listingId,  String title,  double? price,  String? locationName,  List<String>? mediaUrls,  DateTime? viewedAt)  $default,) {final _that = this;
switch (_that) {
case _RecentlyViewedListing():
return $default(_that.id,_that.listingId,_that.title,_that.price,_that.locationName,_that.mediaUrls,_that.viewedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int listingId,  String title,  double? price,  String? locationName,  List<String>? mediaUrls,  DateTime? viewedAt)?  $default,) {final _that = this;
switch (_that) {
case _RecentlyViewedListing() when $default != null:
return $default(_that.id,_that.listingId,_that.title,_that.price,_that.locationName,_that.mediaUrls,_that.viewedAt);case _:
  return null;

}
}

}

/// @nodoc


class _RecentlyViewedListing implements RecentlyViewedListing {
  const _RecentlyViewedListing({required this.id, required this.listingId, required this.title, this.price, this.locationName, final  List<String>? mediaUrls, this.viewedAt}): _mediaUrls = mediaUrls;
  

@override final  int id;
@override final  int listingId;
@override final  String title;
@override final  double? price;
@override final  String? locationName;
 final  List<String>? _mediaUrls;
@override List<String>? get mediaUrls {
  final value = _mediaUrls;
  if (value == null) return null;
  if (_mediaUrls is EqualUnmodifiableListView) return _mediaUrls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  DateTime? viewedAt;

/// Create a copy of RecentlyViewedListing
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecentlyViewedListingCopyWith<_RecentlyViewedListing> get copyWith => __$RecentlyViewedListingCopyWithImpl<_RecentlyViewedListing>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecentlyViewedListing&&(identical(other.id, id) || other.id == id)&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.title, title) || other.title == title)&&(identical(other.price, price) || other.price == price)&&(identical(other.locationName, locationName) || other.locationName == locationName)&&const DeepCollectionEquality().equals(other._mediaUrls, _mediaUrls)&&(identical(other.viewedAt, viewedAt) || other.viewedAt == viewedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,listingId,title,price,locationName,const DeepCollectionEquality().hash(_mediaUrls),viewedAt);

@override
String toString() {
  return 'RecentlyViewedListing(id: $id, listingId: $listingId, title: $title, price: $price, locationName: $locationName, mediaUrls: $mediaUrls, viewedAt: $viewedAt)';
}


}

/// @nodoc
abstract mixin class _$RecentlyViewedListingCopyWith<$Res> implements $RecentlyViewedListingCopyWith<$Res> {
  factory _$RecentlyViewedListingCopyWith(_RecentlyViewedListing value, $Res Function(_RecentlyViewedListing) _then) = __$RecentlyViewedListingCopyWithImpl;
@override @useResult
$Res call({
 int id, int listingId, String title, double? price, String? locationName, List<String>? mediaUrls, DateTime? viewedAt
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? listingId = null,Object? title = null,Object? price = freezed,Object? locationName = freezed,Object? mediaUrls = freezed,Object? viewedAt = freezed,}) {
  return _then(_RecentlyViewedListing(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,listingId: null == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,locationName: freezed == locationName ? _self.locationName : locationName // ignore: cast_nullable_to_non_nullable
as String?,mediaUrls: freezed == mediaUrls ? _self._mediaUrls : mediaUrls // ignore: cast_nullable_to_non_nullable
as List<String>?,viewedAt: freezed == viewedAt ? _self.viewedAt : viewedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
