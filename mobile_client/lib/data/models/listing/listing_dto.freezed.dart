// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'listing_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ListingMediaDto {

 int get id; String? get type; String? get image;@JsonKey(name: 'image_url') String? get imageUrl; int? get width; int? get height; int? get order;@JsonKey(name: 'uploaded_at') String? get uploadedAt;
/// Create a copy of ListingMediaDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListingMediaDtoCopyWith<ListingMediaDto> get copyWith => _$ListingMediaDtoCopyWithImpl<ListingMediaDto>(this as ListingMediaDto, _$identity);

  /// Serializes this ListingMediaDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListingMediaDto&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.image, image) || other.image == image)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height)&&(identical(other.order, order) || other.order == order)&&(identical(other.uploadedAt, uploadedAt) || other.uploadedAt == uploadedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,image,imageUrl,width,height,order,uploadedAt);

@override
String toString() {
  return 'ListingMediaDto(id: $id, type: $type, image: $image, imageUrl: $imageUrl, width: $width, height: $height, order: $order, uploadedAt: $uploadedAt)';
}


}

/// @nodoc
abstract mixin class $ListingMediaDtoCopyWith<$Res>  {
  factory $ListingMediaDtoCopyWith(ListingMediaDto value, $Res Function(ListingMediaDto) _then) = _$ListingMediaDtoCopyWithImpl;
@useResult
$Res call({
 int id, String? type, String? image,@JsonKey(name: 'image_url') String? imageUrl, int? width, int? height, int? order,@JsonKey(name: 'uploaded_at') String? uploadedAt
});




}
/// @nodoc
class _$ListingMediaDtoCopyWithImpl<$Res>
    implements $ListingMediaDtoCopyWith<$Res> {
  _$ListingMediaDtoCopyWithImpl(this._self, this._then);

  final ListingMediaDto _self;
  final $Res Function(ListingMediaDto) _then;

/// Create a copy of ListingMediaDto
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


/// Adds pattern-matching-related methods to [ListingMediaDto].
extension ListingMediaDtoPatterns on ListingMediaDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ListingMediaDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ListingMediaDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ListingMediaDto value)  $default,){
final _that = this;
switch (_that) {
case _ListingMediaDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ListingMediaDto value)?  $default,){
final _that = this;
switch (_that) {
case _ListingMediaDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String? type,  String? image, @JsonKey(name: 'image_url')  String? imageUrl,  int? width,  int? height,  int? order, @JsonKey(name: 'uploaded_at')  String? uploadedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ListingMediaDto() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String? type,  String? image, @JsonKey(name: 'image_url')  String? imageUrl,  int? width,  int? height,  int? order, @JsonKey(name: 'uploaded_at')  String? uploadedAt)  $default,) {final _that = this;
switch (_that) {
case _ListingMediaDto():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String? type,  String? image, @JsonKey(name: 'image_url')  String? imageUrl,  int? width,  int? height,  int? order, @JsonKey(name: 'uploaded_at')  String? uploadedAt)?  $default,) {final _that = this;
switch (_that) {
case _ListingMediaDto() when $default != null:
return $default(_that.id,_that.type,_that.image,_that.imageUrl,_that.width,_that.height,_that.order,_that.uploadedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ListingMediaDto implements ListingMediaDto {
  const _ListingMediaDto({required this.id, this.type, this.image, @JsonKey(name: 'image_url') this.imageUrl, this.width, this.height, this.order, @JsonKey(name: 'uploaded_at') this.uploadedAt});
  factory _ListingMediaDto.fromJson(Map<String, dynamic> json) => _$ListingMediaDtoFromJson(json);

@override final  int id;
@override final  String? type;
@override final  String? image;
@override@JsonKey(name: 'image_url') final  String? imageUrl;
@override final  int? width;
@override final  int? height;
@override final  int? order;
@override@JsonKey(name: 'uploaded_at') final  String? uploadedAt;

/// Create a copy of ListingMediaDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListingMediaDtoCopyWith<_ListingMediaDto> get copyWith => __$ListingMediaDtoCopyWithImpl<_ListingMediaDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ListingMediaDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListingMediaDto&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.image, image) || other.image == image)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height)&&(identical(other.order, order) || other.order == order)&&(identical(other.uploadedAt, uploadedAt) || other.uploadedAt == uploadedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,type,image,imageUrl,width,height,order,uploadedAt);

@override
String toString() {
  return 'ListingMediaDto(id: $id, type: $type, image: $image, imageUrl: $imageUrl, width: $width, height: $height, order: $order, uploadedAt: $uploadedAt)';
}


}

/// @nodoc
abstract mixin class _$ListingMediaDtoCopyWith<$Res> implements $ListingMediaDtoCopyWith<$Res> {
  factory _$ListingMediaDtoCopyWith(_ListingMediaDto value, $Res Function(_ListingMediaDto) _then) = __$ListingMediaDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, String? type, String? image,@JsonKey(name: 'image_url') String? imageUrl, int? width, int? height, int? order,@JsonKey(name: 'uploaded_at') String? uploadedAt
});




}
/// @nodoc
class __$ListingMediaDtoCopyWithImpl<$Res>
    implements _$ListingMediaDtoCopyWith<$Res> {
  __$ListingMediaDtoCopyWithImpl(this._self, this._then);

  final _ListingMediaDto _self;
  final $Res Function(_ListingMediaDto) _then;

/// Create a copy of ListingMediaDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = freezed,Object? image = freezed,Object? imageUrl = freezed,Object? width = freezed,Object? height = freezed,Object? order = freezed,Object? uploadedAt = freezed,}) {
  return _then(_ListingMediaDto(
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
mixin _$ListingSellerDto {

 int get id; String? get name;@JsonKey(name: 'avatar_url') String? get avatarUrl; String? get since; String? get logo; String? get banner; String? get phone;@JsonKey(name: 'last_active_at') String? get lastActiveAt;
/// Create a copy of ListingSellerDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListingSellerDtoCopyWith<ListingSellerDto> get copyWith => _$ListingSellerDtoCopyWithImpl<ListingSellerDto>(this as ListingSellerDto, _$identity);

  /// Serializes this ListingSellerDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListingSellerDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.since, since) || other.since == since)&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.banner, banner) || other.banner == banner)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.lastActiveAt, lastActiveAt) || other.lastActiveAt == lastActiveAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,avatarUrl,since,logo,banner,phone,lastActiveAt);

@override
String toString() {
  return 'ListingSellerDto(id: $id, name: $name, avatarUrl: $avatarUrl, since: $since, logo: $logo, banner: $banner, phone: $phone, lastActiveAt: $lastActiveAt)';
}


}

/// @nodoc
abstract mixin class $ListingSellerDtoCopyWith<$Res>  {
  factory $ListingSellerDtoCopyWith(ListingSellerDto value, $Res Function(ListingSellerDto) _then) = _$ListingSellerDtoCopyWithImpl;
@useResult
$Res call({
 int id, String? name,@JsonKey(name: 'avatar_url') String? avatarUrl, String? since, String? logo, String? banner, String? phone,@JsonKey(name: 'last_active_at') String? lastActiveAt
});




}
/// @nodoc
class _$ListingSellerDtoCopyWithImpl<$Res>
    implements $ListingSellerDtoCopyWith<$Res> {
  _$ListingSellerDtoCopyWithImpl(this._self, this._then);

  final ListingSellerDto _self;
  final $Res Function(ListingSellerDto) _then;

/// Create a copy of ListingSellerDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = freezed,Object? avatarUrl = freezed,Object? since = freezed,Object? logo = freezed,Object? banner = freezed,Object? phone = freezed,Object? lastActiveAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,since: freezed == since ? _self.since : since // ignore: cast_nullable_to_non_nullable
as String?,logo: freezed == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String?,banner: freezed == banner ? _self.banner : banner // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,lastActiveAt: freezed == lastActiveAt ? _self.lastActiveAt : lastActiveAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ListingSellerDto].
extension ListingSellerDtoPatterns on ListingSellerDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ListingSellerDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ListingSellerDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ListingSellerDto value)  $default,){
final _that = this;
switch (_that) {
case _ListingSellerDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ListingSellerDto value)?  $default,){
final _that = this;
switch (_that) {
case _ListingSellerDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String? name, @JsonKey(name: 'avatar_url')  String? avatarUrl,  String? since,  String? logo,  String? banner,  String? phone, @JsonKey(name: 'last_active_at')  String? lastActiveAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ListingSellerDto() when $default != null:
return $default(_that.id,_that.name,_that.avatarUrl,_that.since,_that.logo,_that.banner,_that.phone,_that.lastActiveAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String? name, @JsonKey(name: 'avatar_url')  String? avatarUrl,  String? since,  String? logo,  String? banner,  String? phone, @JsonKey(name: 'last_active_at')  String? lastActiveAt)  $default,) {final _that = this;
switch (_that) {
case _ListingSellerDto():
return $default(_that.id,_that.name,_that.avatarUrl,_that.since,_that.logo,_that.banner,_that.phone,_that.lastActiveAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String? name, @JsonKey(name: 'avatar_url')  String? avatarUrl,  String? since,  String? logo,  String? banner,  String? phone, @JsonKey(name: 'last_active_at')  String? lastActiveAt)?  $default,) {final _that = this;
switch (_that) {
case _ListingSellerDto() when $default != null:
return $default(_that.id,_that.name,_that.avatarUrl,_that.since,_that.logo,_that.banner,_that.phone,_that.lastActiveAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ListingSellerDto implements ListingSellerDto {
  const _ListingSellerDto({required this.id, this.name, @JsonKey(name: 'avatar_url') this.avatarUrl, this.since, this.logo, this.banner, this.phone, @JsonKey(name: 'last_active_at') this.lastActiveAt});
  factory _ListingSellerDto.fromJson(Map<String, dynamic> json) => _$ListingSellerDtoFromJson(json);

@override final  int id;
@override final  String? name;
@override@JsonKey(name: 'avatar_url') final  String? avatarUrl;
@override final  String? since;
@override final  String? logo;
@override final  String? banner;
@override final  String? phone;
@override@JsonKey(name: 'last_active_at') final  String? lastActiveAt;

/// Create a copy of ListingSellerDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListingSellerDtoCopyWith<_ListingSellerDto> get copyWith => __$ListingSellerDtoCopyWithImpl<_ListingSellerDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ListingSellerDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListingSellerDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.since, since) || other.since == since)&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.banner, banner) || other.banner == banner)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.lastActiveAt, lastActiveAt) || other.lastActiveAt == lastActiveAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,avatarUrl,since,logo,banner,phone,lastActiveAt);

@override
String toString() {
  return 'ListingSellerDto(id: $id, name: $name, avatarUrl: $avatarUrl, since: $since, logo: $logo, banner: $banner, phone: $phone, lastActiveAt: $lastActiveAt)';
}


}

/// @nodoc
abstract mixin class _$ListingSellerDtoCopyWith<$Res> implements $ListingSellerDtoCopyWith<$Res> {
  factory _$ListingSellerDtoCopyWith(_ListingSellerDto value, $Res Function(_ListingSellerDto) _then) = __$ListingSellerDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, String? name,@JsonKey(name: 'avatar_url') String? avatarUrl, String? since, String? logo, String? banner, String? phone,@JsonKey(name: 'last_active_at') String? lastActiveAt
});




}
/// @nodoc
class __$ListingSellerDtoCopyWithImpl<$Res>
    implements _$ListingSellerDtoCopyWith<$Res> {
  __$ListingSellerDtoCopyWithImpl(this._self, this._then);

  final _ListingSellerDto _self;
  final $Res Function(_ListingSellerDto) _then;

/// Create a copy of ListingSellerDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = freezed,Object? avatarUrl = freezed,Object? since = freezed,Object? logo = freezed,Object? banner = freezed,Object? phone = freezed,Object? lastActiveAt = freezed,}) {
  return _then(_ListingSellerDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,since: freezed == since ? _self.since : since // ignore: cast_nullable_to_non_nullable
as String?,logo: freezed == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String?,banner: freezed == banner ? _self.banner : banner // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,lastActiveAt: freezed == lastActiveAt ? _self.lastActiveAt : lastActiveAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ListingUserDto {

 int get id; String? get phone; String? get name;@JsonKey(name: 'display_name') String? get displayName;@JsonKey(name: 'phone_e164') String? get phoneE164;
/// Create a copy of ListingUserDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListingUserDtoCopyWith<ListingUserDto> get copyWith => _$ListingUserDtoCopyWithImpl<ListingUserDto>(this as ListingUserDto, _$identity);

  /// Serializes this ListingUserDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListingUserDto&&(identical(other.id, id) || other.id == id)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.name, name) || other.name == name)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.phoneE164, phoneE164) || other.phoneE164 == phoneE164));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,phone,name,displayName,phoneE164);

@override
String toString() {
  return 'ListingUserDto(id: $id, phone: $phone, name: $name, displayName: $displayName, phoneE164: $phoneE164)';
}


}

/// @nodoc
abstract mixin class $ListingUserDtoCopyWith<$Res>  {
  factory $ListingUserDtoCopyWith(ListingUserDto value, $Res Function(ListingUserDto) _then) = _$ListingUserDtoCopyWithImpl;
@useResult
$Res call({
 int id, String? phone, String? name,@JsonKey(name: 'display_name') String? displayName,@JsonKey(name: 'phone_e164') String? phoneE164
});




}
/// @nodoc
class _$ListingUserDtoCopyWithImpl<$Res>
    implements $ListingUserDtoCopyWith<$Res> {
  _$ListingUserDtoCopyWithImpl(this._self, this._then);

  final ListingUserDto _self;
  final $Res Function(ListingUserDto) _then;

/// Create a copy of ListingUserDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? phone = freezed,Object? name = freezed,Object? displayName = freezed,Object? phoneE164 = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,phoneE164: freezed == phoneE164 ? _self.phoneE164 : phoneE164 // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ListingUserDto].
extension ListingUserDtoPatterns on ListingUserDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ListingUserDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ListingUserDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ListingUserDto value)  $default,){
final _that = this;
switch (_that) {
case _ListingUserDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ListingUserDto value)?  $default,){
final _that = this;
switch (_that) {
case _ListingUserDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String? phone,  String? name, @JsonKey(name: 'display_name')  String? displayName, @JsonKey(name: 'phone_e164')  String? phoneE164)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ListingUserDto() when $default != null:
return $default(_that.id,_that.phone,_that.name,_that.displayName,_that.phoneE164);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String? phone,  String? name, @JsonKey(name: 'display_name')  String? displayName, @JsonKey(name: 'phone_e164')  String? phoneE164)  $default,) {final _that = this;
switch (_that) {
case _ListingUserDto():
return $default(_that.id,_that.phone,_that.name,_that.displayName,_that.phoneE164);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String? phone,  String? name, @JsonKey(name: 'display_name')  String? displayName, @JsonKey(name: 'phone_e164')  String? phoneE164)?  $default,) {final _that = this;
switch (_that) {
case _ListingUserDto() when $default != null:
return $default(_that.id,_that.phone,_that.name,_that.displayName,_that.phoneE164);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ListingUserDto implements ListingUserDto {
  const _ListingUserDto({required this.id, this.phone, this.name, @JsonKey(name: 'display_name') this.displayName, @JsonKey(name: 'phone_e164') this.phoneE164});
  factory _ListingUserDto.fromJson(Map<String, dynamic> json) => _$ListingUserDtoFromJson(json);

@override final  int id;
@override final  String? phone;
@override final  String? name;
@override@JsonKey(name: 'display_name') final  String? displayName;
@override@JsonKey(name: 'phone_e164') final  String? phoneE164;

/// Create a copy of ListingUserDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListingUserDtoCopyWith<_ListingUserDto> get copyWith => __$ListingUserDtoCopyWithImpl<_ListingUserDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ListingUserDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListingUserDto&&(identical(other.id, id) || other.id == id)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.name, name) || other.name == name)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.phoneE164, phoneE164) || other.phoneE164 == phoneE164));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,phone,name,displayName,phoneE164);

@override
String toString() {
  return 'ListingUserDto(id: $id, phone: $phone, name: $name, displayName: $displayName, phoneE164: $phoneE164)';
}


}

/// @nodoc
abstract mixin class _$ListingUserDtoCopyWith<$Res> implements $ListingUserDtoCopyWith<$Res> {
  factory _$ListingUserDtoCopyWith(_ListingUserDto value, $Res Function(_ListingUserDto) _then) = __$ListingUserDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, String? phone, String? name,@JsonKey(name: 'display_name') String? displayName,@JsonKey(name: 'phone_e164') String? phoneE164
});




}
/// @nodoc
class __$ListingUserDtoCopyWithImpl<$Res>
    implements _$ListingUserDtoCopyWith<$Res> {
  __$ListingUserDtoCopyWithImpl(this._self, this._then);

  final _ListingUserDto _self;
  final $Res Function(_ListingUserDto) _then;

/// Create a copy of ListingUserDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? phone = freezed,Object? name = freezed,Object? displayName = freezed,Object? phoneE164 = freezed,}) {
  return _then(_ListingUserDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,phoneE164: freezed == phoneE164 ? _self.phoneE164 : phoneE164 // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ListingAttributeDto {

 int? get attribute; String get key; dynamic get value; String? get label; String? get type;
/// Create a copy of ListingAttributeDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListingAttributeDtoCopyWith<ListingAttributeDto> get copyWith => _$ListingAttributeDtoCopyWithImpl<ListingAttributeDto>(this as ListingAttributeDto, _$identity);

  /// Serializes this ListingAttributeDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListingAttributeDto&&(identical(other.attribute, attribute) || other.attribute == attribute)&&(identical(other.key, key) || other.key == key)&&const DeepCollectionEquality().equals(other.value, value)&&(identical(other.label, label) || other.label == label)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,attribute,key,const DeepCollectionEquality().hash(value),label,type);

@override
String toString() {
  return 'ListingAttributeDto(attribute: $attribute, key: $key, value: $value, label: $label, type: $type)';
}


}

/// @nodoc
abstract mixin class $ListingAttributeDtoCopyWith<$Res>  {
  factory $ListingAttributeDtoCopyWith(ListingAttributeDto value, $Res Function(ListingAttributeDto) _then) = _$ListingAttributeDtoCopyWithImpl;
@useResult
$Res call({
 int? attribute, String key, dynamic value, String? label, String? type
});




}
/// @nodoc
class _$ListingAttributeDtoCopyWithImpl<$Res>
    implements $ListingAttributeDtoCopyWith<$Res> {
  _$ListingAttributeDtoCopyWithImpl(this._self, this._then);

  final ListingAttributeDto _self;
  final $Res Function(ListingAttributeDto) _then;

/// Create a copy of ListingAttributeDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? attribute = freezed,Object? key = null,Object? value = freezed,Object? label = freezed,Object? type = freezed,}) {
  return _then(_self.copyWith(
attribute: freezed == attribute ? _self.attribute : attribute // ignore: cast_nullable_to_non_nullable
as int?,key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as dynamic,label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ListingAttributeDto].
extension ListingAttributeDtoPatterns on ListingAttributeDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ListingAttributeDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ListingAttributeDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ListingAttributeDto value)  $default,){
final _that = this;
switch (_that) {
case _ListingAttributeDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ListingAttributeDto value)?  $default,){
final _that = this;
switch (_that) {
case _ListingAttributeDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? attribute,  String key,  dynamic value,  String? label,  String? type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ListingAttributeDto() when $default != null:
return $default(_that.attribute,_that.key,_that.value,_that.label,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? attribute,  String key,  dynamic value,  String? label,  String? type)  $default,) {final _that = this;
switch (_that) {
case _ListingAttributeDto():
return $default(_that.attribute,_that.key,_that.value,_that.label,_that.type);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? attribute,  String key,  dynamic value,  String? label,  String? type)?  $default,) {final _that = this;
switch (_that) {
case _ListingAttributeDto() when $default != null:
return $default(_that.attribute,_that.key,_that.value,_that.label,_that.type);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ListingAttributeDto implements ListingAttributeDto {
  const _ListingAttributeDto({this.attribute, required this.key, required this.value, this.label, this.type});
  factory _ListingAttributeDto.fromJson(Map<String, dynamic> json) => _$ListingAttributeDtoFromJson(json);

@override final  int? attribute;
@override final  String key;
@override final  dynamic value;
@override final  String? label;
@override final  String? type;

/// Create a copy of ListingAttributeDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListingAttributeDtoCopyWith<_ListingAttributeDto> get copyWith => __$ListingAttributeDtoCopyWithImpl<_ListingAttributeDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ListingAttributeDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListingAttributeDto&&(identical(other.attribute, attribute) || other.attribute == attribute)&&(identical(other.key, key) || other.key == key)&&const DeepCollectionEquality().equals(other.value, value)&&(identical(other.label, label) || other.label == label)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,attribute,key,const DeepCollectionEquality().hash(value),label,type);

@override
String toString() {
  return 'ListingAttributeDto(attribute: $attribute, key: $key, value: $value, label: $label, type: $type)';
}


}

/// @nodoc
abstract mixin class _$ListingAttributeDtoCopyWith<$Res> implements $ListingAttributeDtoCopyWith<$Res> {
  factory _$ListingAttributeDtoCopyWith(_ListingAttributeDto value, $Res Function(_ListingAttributeDto) _then) = __$ListingAttributeDtoCopyWithImpl;
@override @useResult
$Res call({
 int? attribute, String key, dynamic value, String? label, String? type
});




}
/// @nodoc
class __$ListingAttributeDtoCopyWithImpl<$Res>
    implements _$ListingAttributeDtoCopyWith<$Res> {
  __$ListingAttributeDtoCopyWithImpl(this._self, this._then);

  final _ListingAttributeDto _self;
  final $Res Function(_ListingAttributeDto) _then;

/// Create a copy of ListingAttributeDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? attribute = freezed,Object? key = null,Object? value = freezed,Object? label = freezed,Object? type = freezed,}) {
  return _then(_ListingAttributeDto(
attribute: freezed == attribute ? _self.attribute : attribute // ignore: cast_nullable_to_non_nullable
as int?,key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as dynamic,label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ListingDto {

 int get id; String get title; String? get description;@JsonKey(name: 'price_amount', fromJson: _parseDouble) double get priceAmount;@JsonKey(name: 'price_currency') String get priceCurrency;@JsonKey(name: 'is_price_negotiable') bool? get isPriceNegotiable; String get condition;@JsonKey(name: 'deal_type') String? get dealType;// 'sell', 'exchange', 'free'
@JsonKey(name: 'seller_type') String? get sellerType;// 'person', 'business'
 int? get category;@JsonKey(name: 'category_name') String? get categoryName;@JsonKey(name: 'category_slug') String? get categorySlug; int? get location;@JsonKey(name: 'location_name') String? get locationName;@JsonKey(name: 'location_slug') String? get locationSlug; double? get lat; double? get lon; List<ListingMediaDto>? get media;@JsonKey(name: 'media_urls') List<String>? get mediaUrls; List<ListingAttributeDto>? get attributes; String? get status;@JsonKey(name: 'contact_name') String? get contactName;@JsonKey(name: 'contact_email') String? get contactEmail;@JsonKey(name: 'contact_phone') String? get contactPhone;@JsonKey(name: 'created_at') String? get createdAt;@JsonKey(name: 'updated_at') String? get updatedAt;@JsonKey(name: 'refreshed_at') String? get refreshedAt;@JsonKey(name: 'expires_at') String? get expiresAt;@JsonKey(name: 'quality_score', fromJson: _parseDoubleNullable) double? get qualityScore;@JsonKey(name: 'contact_phone_masked') String? get contactPhoneMasked;@JsonKey(name: 'price_normalized', fromJson: _parseDoubleNullable) double? get priceNormalized;@JsonKey(name: 'is_promoted') bool? get isPromoted;@JsonKey(name: 'view_count') int? get viewCount;@JsonKey(name: 'favorite_count') int? get favoriteCount;@JsonKey(name: 'interest_count') int? get interestCount;@JsonKey(name: 'user_id') int? get userId; ListingUserDto? get user; ListingSellerDto? get seller;
/// Create a copy of ListingDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListingDtoCopyWith<ListingDto> get copyWith => _$ListingDtoCopyWithImpl<ListingDto>(this as ListingDto, _$identity);

  /// Serializes this ListingDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListingDto&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.priceAmount, priceAmount) || other.priceAmount == priceAmount)&&(identical(other.priceCurrency, priceCurrency) || other.priceCurrency == priceCurrency)&&(identical(other.isPriceNegotiable, isPriceNegotiable) || other.isPriceNegotiable == isPriceNegotiable)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.dealType, dealType) || other.dealType == dealType)&&(identical(other.sellerType, sellerType) || other.sellerType == sellerType)&&(identical(other.category, category) || other.category == category)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.categorySlug, categorySlug) || other.categorySlug == categorySlug)&&(identical(other.location, location) || other.location == location)&&(identical(other.locationName, locationName) || other.locationName == locationName)&&(identical(other.locationSlug, locationSlug) || other.locationSlug == locationSlug)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lon, lon) || other.lon == lon)&&const DeepCollectionEquality().equals(other.media, media)&&const DeepCollectionEquality().equals(other.mediaUrls, mediaUrls)&&const DeepCollectionEquality().equals(other.attributes, attributes)&&(identical(other.status, status) || other.status == status)&&(identical(other.contactName, contactName) || other.contactName == contactName)&&(identical(other.contactEmail, contactEmail) || other.contactEmail == contactEmail)&&(identical(other.contactPhone, contactPhone) || other.contactPhone == contactPhone)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.refreshedAt, refreshedAt) || other.refreshedAt == refreshedAt)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.qualityScore, qualityScore) || other.qualityScore == qualityScore)&&(identical(other.contactPhoneMasked, contactPhoneMasked) || other.contactPhoneMasked == contactPhoneMasked)&&(identical(other.priceNormalized, priceNormalized) || other.priceNormalized == priceNormalized)&&(identical(other.isPromoted, isPromoted) || other.isPromoted == isPromoted)&&(identical(other.viewCount, viewCount) || other.viewCount == viewCount)&&(identical(other.favoriteCount, favoriteCount) || other.favoriteCount == favoriteCount)&&(identical(other.interestCount, interestCount) || other.interestCount == interestCount)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.user, user) || other.user == user)&&(identical(other.seller, seller) || other.seller == seller));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,title,description,priceAmount,priceCurrency,isPriceNegotiable,condition,dealType,sellerType,category,categoryName,categorySlug,location,locationName,locationSlug,lat,lon,const DeepCollectionEquality().hash(media),const DeepCollectionEquality().hash(mediaUrls),const DeepCollectionEquality().hash(attributes),status,contactName,contactEmail,contactPhone,createdAt,updatedAt,refreshedAt,expiresAt,qualityScore,contactPhoneMasked,priceNormalized,isPromoted,viewCount,favoriteCount,interestCount,userId,user,seller]);

@override
String toString() {
  return 'ListingDto(id: $id, title: $title, description: $description, priceAmount: $priceAmount, priceCurrency: $priceCurrency, isPriceNegotiable: $isPriceNegotiable, condition: $condition, dealType: $dealType, sellerType: $sellerType, category: $category, categoryName: $categoryName, categorySlug: $categorySlug, location: $location, locationName: $locationName, locationSlug: $locationSlug, lat: $lat, lon: $lon, media: $media, mediaUrls: $mediaUrls, attributes: $attributes, status: $status, contactName: $contactName, contactEmail: $contactEmail, contactPhone: $contactPhone, createdAt: $createdAt, updatedAt: $updatedAt, refreshedAt: $refreshedAt, expiresAt: $expiresAt, qualityScore: $qualityScore, contactPhoneMasked: $contactPhoneMasked, priceNormalized: $priceNormalized, isPromoted: $isPromoted, viewCount: $viewCount, favoriteCount: $favoriteCount, interestCount: $interestCount, userId: $userId, user: $user, seller: $seller)';
}


}

/// @nodoc
abstract mixin class $ListingDtoCopyWith<$Res>  {
  factory $ListingDtoCopyWith(ListingDto value, $Res Function(ListingDto) _then) = _$ListingDtoCopyWithImpl;
@useResult
$Res call({
 int id, String title, String? description,@JsonKey(name: 'price_amount', fromJson: _parseDouble) double priceAmount,@JsonKey(name: 'price_currency') String priceCurrency,@JsonKey(name: 'is_price_negotiable') bool? isPriceNegotiable, String condition,@JsonKey(name: 'deal_type') String? dealType,@JsonKey(name: 'seller_type') String? sellerType, int? category,@JsonKey(name: 'category_name') String? categoryName,@JsonKey(name: 'category_slug') String? categorySlug, int? location,@JsonKey(name: 'location_name') String? locationName,@JsonKey(name: 'location_slug') String? locationSlug, double? lat, double? lon, List<ListingMediaDto>? media,@JsonKey(name: 'media_urls') List<String>? mediaUrls, List<ListingAttributeDto>? attributes, String? status,@JsonKey(name: 'contact_name') String? contactName,@JsonKey(name: 'contact_email') String? contactEmail,@JsonKey(name: 'contact_phone') String? contactPhone,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'refreshed_at') String? refreshedAt,@JsonKey(name: 'expires_at') String? expiresAt,@JsonKey(name: 'quality_score', fromJson: _parseDoubleNullable) double? qualityScore,@JsonKey(name: 'contact_phone_masked') String? contactPhoneMasked,@JsonKey(name: 'price_normalized', fromJson: _parseDoubleNullable) double? priceNormalized,@JsonKey(name: 'is_promoted') bool? isPromoted,@JsonKey(name: 'view_count') int? viewCount,@JsonKey(name: 'favorite_count') int? favoriteCount,@JsonKey(name: 'interest_count') int? interestCount,@JsonKey(name: 'user_id') int? userId, ListingUserDto? user, ListingSellerDto? seller
});


$ListingUserDtoCopyWith<$Res>? get user;$ListingSellerDtoCopyWith<$Res>? get seller;

}
/// @nodoc
class _$ListingDtoCopyWithImpl<$Res>
    implements $ListingDtoCopyWith<$Res> {
  _$ListingDtoCopyWithImpl(this._self, this._then);

  final ListingDto _self;
  final $Res Function(ListingDto) _then;

/// Create a copy of ListingDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = freezed,Object? priceAmount = null,Object? priceCurrency = null,Object? isPriceNegotiable = freezed,Object? condition = null,Object? dealType = freezed,Object? sellerType = freezed,Object? category = freezed,Object? categoryName = freezed,Object? categorySlug = freezed,Object? location = freezed,Object? locationName = freezed,Object? locationSlug = freezed,Object? lat = freezed,Object? lon = freezed,Object? media = freezed,Object? mediaUrls = freezed,Object? attributes = freezed,Object? status = freezed,Object? contactName = freezed,Object? contactEmail = freezed,Object? contactPhone = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? refreshedAt = freezed,Object? expiresAt = freezed,Object? qualityScore = freezed,Object? contactPhoneMasked = freezed,Object? priceNormalized = freezed,Object? isPromoted = freezed,Object? viewCount = freezed,Object? favoriteCount = freezed,Object? interestCount = freezed,Object? userId = freezed,Object? user = freezed,Object? seller = freezed,}) {
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
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as int?,categoryName: freezed == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String?,categorySlug: freezed == categorySlug ? _self.categorySlug : categorySlug // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as int?,locationName: freezed == locationName ? _self.locationName : locationName // ignore: cast_nullable_to_non_nullable
as String?,locationSlug: freezed == locationSlug ? _self.locationSlug : locationSlug // ignore: cast_nullable_to_non_nullable
as String?,lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double?,lon: freezed == lon ? _self.lon : lon // ignore: cast_nullable_to_non_nullable
as double?,media: freezed == media ? _self.media : media // ignore: cast_nullable_to_non_nullable
as List<ListingMediaDto>?,mediaUrls: freezed == mediaUrls ? _self.mediaUrls : mediaUrls // ignore: cast_nullable_to_non_nullable
as List<String>?,attributes: freezed == attributes ? _self.attributes : attributes // ignore: cast_nullable_to_non_nullable
as List<ListingAttributeDto>?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,contactName: freezed == contactName ? _self.contactName : contactName // ignore: cast_nullable_to_non_nullable
as String?,contactEmail: freezed == contactEmail ? _self.contactEmail : contactEmail // ignore: cast_nullable_to_non_nullable
as String?,contactPhone: freezed == contactPhone ? _self.contactPhone : contactPhone // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,refreshedAt: freezed == refreshedAt ? _self.refreshedAt : refreshedAt // ignore: cast_nullable_to_non_nullable
as String?,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as String?,qualityScore: freezed == qualityScore ? _self.qualityScore : qualityScore // ignore: cast_nullable_to_non_nullable
as double?,contactPhoneMasked: freezed == contactPhoneMasked ? _self.contactPhoneMasked : contactPhoneMasked // ignore: cast_nullable_to_non_nullable
as String?,priceNormalized: freezed == priceNormalized ? _self.priceNormalized : priceNormalized // ignore: cast_nullable_to_non_nullable
as double?,isPromoted: freezed == isPromoted ? _self.isPromoted : isPromoted // ignore: cast_nullable_to_non_nullable
as bool?,viewCount: freezed == viewCount ? _self.viewCount : viewCount // ignore: cast_nullable_to_non_nullable
as int?,favoriteCount: freezed == favoriteCount ? _self.favoriteCount : favoriteCount // ignore: cast_nullable_to_non_nullable
as int?,interestCount: freezed == interestCount ? _self.interestCount : interestCount // ignore: cast_nullable_to_non_nullable
as int?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as ListingUserDto?,seller: freezed == seller ? _self.seller : seller // ignore: cast_nullable_to_non_nullable
as ListingSellerDto?,
  ));
}
/// Create a copy of ListingDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ListingUserDtoCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $ListingUserDtoCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of ListingDto
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


/// Adds pattern-matching-related methods to [ListingDto].
extension ListingDtoPatterns on ListingDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ListingDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ListingDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ListingDto value)  $default,){
final _that = this;
switch (_that) {
case _ListingDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ListingDto value)?  $default,){
final _that = this;
switch (_that) {
case _ListingDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String title,  String? description, @JsonKey(name: 'price_amount', fromJson: _parseDouble)  double priceAmount, @JsonKey(name: 'price_currency')  String priceCurrency, @JsonKey(name: 'is_price_negotiable')  bool? isPriceNegotiable,  String condition, @JsonKey(name: 'deal_type')  String? dealType, @JsonKey(name: 'seller_type')  String? sellerType,  int? category, @JsonKey(name: 'category_name')  String? categoryName, @JsonKey(name: 'category_slug')  String? categorySlug,  int? location, @JsonKey(name: 'location_name')  String? locationName, @JsonKey(name: 'location_slug')  String? locationSlug,  double? lat,  double? lon,  List<ListingMediaDto>? media, @JsonKey(name: 'media_urls')  List<String>? mediaUrls,  List<ListingAttributeDto>? attributes,  String? status, @JsonKey(name: 'contact_name')  String? contactName, @JsonKey(name: 'contact_email')  String? contactEmail, @JsonKey(name: 'contact_phone')  String? contactPhone, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'refreshed_at')  String? refreshedAt, @JsonKey(name: 'expires_at')  String? expiresAt, @JsonKey(name: 'quality_score', fromJson: _parseDoubleNullable)  double? qualityScore, @JsonKey(name: 'contact_phone_masked')  String? contactPhoneMasked, @JsonKey(name: 'price_normalized', fromJson: _parseDoubleNullable)  double? priceNormalized, @JsonKey(name: 'is_promoted')  bool? isPromoted, @JsonKey(name: 'view_count')  int? viewCount, @JsonKey(name: 'favorite_count')  int? favoriteCount, @JsonKey(name: 'interest_count')  int? interestCount, @JsonKey(name: 'user_id')  int? userId,  ListingUserDto? user,  ListingSellerDto? seller)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ListingDto() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.priceAmount,_that.priceCurrency,_that.isPriceNegotiable,_that.condition,_that.dealType,_that.sellerType,_that.category,_that.categoryName,_that.categorySlug,_that.location,_that.locationName,_that.locationSlug,_that.lat,_that.lon,_that.media,_that.mediaUrls,_that.attributes,_that.status,_that.contactName,_that.contactEmail,_that.contactPhone,_that.createdAt,_that.updatedAt,_that.refreshedAt,_that.expiresAt,_that.qualityScore,_that.contactPhoneMasked,_that.priceNormalized,_that.isPromoted,_that.viewCount,_that.favoriteCount,_that.interestCount,_that.userId,_that.user,_that.seller);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String title,  String? description, @JsonKey(name: 'price_amount', fromJson: _parseDouble)  double priceAmount, @JsonKey(name: 'price_currency')  String priceCurrency, @JsonKey(name: 'is_price_negotiable')  bool? isPriceNegotiable,  String condition, @JsonKey(name: 'deal_type')  String? dealType, @JsonKey(name: 'seller_type')  String? sellerType,  int? category, @JsonKey(name: 'category_name')  String? categoryName, @JsonKey(name: 'category_slug')  String? categorySlug,  int? location, @JsonKey(name: 'location_name')  String? locationName, @JsonKey(name: 'location_slug')  String? locationSlug,  double? lat,  double? lon,  List<ListingMediaDto>? media, @JsonKey(name: 'media_urls')  List<String>? mediaUrls,  List<ListingAttributeDto>? attributes,  String? status, @JsonKey(name: 'contact_name')  String? contactName, @JsonKey(name: 'contact_email')  String? contactEmail, @JsonKey(name: 'contact_phone')  String? contactPhone, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'refreshed_at')  String? refreshedAt, @JsonKey(name: 'expires_at')  String? expiresAt, @JsonKey(name: 'quality_score', fromJson: _parseDoubleNullable)  double? qualityScore, @JsonKey(name: 'contact_phone_masked')  String? contactPhoneMasked, @JsonKey(name: 'price_normalized', fromJson: _parseDoubleNullable)  double? priceNormalized, @JsonKey(name: 'is_promoted')  bool? isPromoted, @JsonKey(name: 'view_count')  int? viewCount, @JsonKey(name: 'favorite_count')  int? favoriteCount, @JsonKey(name: 'interest_count')  int? interestCount, @JsonKey(name: 'user_id')  int? userId,  ListingUserDto? user,  ListingSellerDto? seller)  $default,) {final _that = this;
switch (_that) {
case _ListingDto():
return $default(_that.id,_that.title,_that.description,_that.priceAmount,_that.priceCurrency,_that.isPriceNegotiable,_that.condition,_that.dealType,_that.sellerType,_that.category,_that.categoryName,_that.categorySlug,_that.location,_that.locationName,_that.locationSlug,_that.lat,_that.lon,_that.media,_that.mediaUrls,_that.attributes,_that.status,_that.contactName,_that.contactEmail,_that.contactPhone,_that.createdAt,_that.updatedAt,_that.refreshedAt,_that.expiresAt,_that.qualityScore,_that.contactPhoneMasked,_that.priceNormalized,_that.isPromoted,_that.viewCount,_that.favoriteCount,_that.interestCount,_that.userId,_that.user,_that.seller);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String title,  String? description, @JsonKey(name: 'price_amount', fromJson: _parseDouble)  double priceAmount, @JsonKey(name: 'price_currency')  String priceCurrency, @JsonKey(name: 'is_price_negotiable')  bool? isPriceNegotiable,  String condition, @JsonKey(name: 'deal_type')  String? dealType, @JsonKey(name: 'seller_type')  String? sellerType,  int? category, @JsonKey(name: 'category_name')  String? categoryName, @JsonKey(name: 'category_slug')  String? categorySlug,  int? location, @JsonKey(name: 'location_name')  String? locationName, @JsonKey(name: 'location_slug')  String? locationSlug,  double? lat,  double? lon,  List<ListingMediaDto>? media, @JsonKey(name: 'media_urls')  List<String>? mediaUrls,  List<ListingAttributeDto>? attributes,  String? status, @JsonKey(name: 'contact_name')  String? contactName, @JsonKey(name: 'contact_email')  String? contactEmail, @JsonKey(name: 'contact_phone')  String? contactPhone, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt, @JsonKey(name: 'refreshed_at')  String? refreshedAt, @JsonKey(name: 'expires_at')  String? expiresAt, @JsonKey(name: 'quality_score', fromJson: _parseDoubleNullable)  double? qualityScore, @JsonKey(name: 'contact_phone_masked')  String? contactPhoneMasked, @JsonKey(name: 'price_normalized', fromJson: _parseDoubleNullable)  double? priceNormalized, @JsonKey(name: 'is_promoted')  bool? isPromoted, @JsonKey(name: 'view_count')  int? viewCount, @JsonKey(name: 'favorite_count')  int? favoriteCount, @JsonKey(name: 'interest_count')  int? interestCount, @JsonKey(name: 'user_id')  int? userId,  ListingUserDto? user,  ListingSellerDto? seller)?  $default,) {final _that = this;
switch (_that) {
case _ListingDto() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.priceAmount,_that.priceCurrency,_that.isPriceNegotiable,_that.condition,_that.dealType,_that.sellerType,_that.category,_that.categoryName,_that.categorySlug,_that.location,_that.locationName,_that.locationSlug,_that.lat,_that.lon,_that.media,_that.mediaUrls,_that.attributes,_that.status,_that.contactName,_that.contactEmail,_that.contactPhone,_that.createdAt,_that.updatedAt,_that.refreshedAt,_that.expiresAt,_that.qualityScore,_that.contactPhoneMasked,_that.priceNormalized,_that.isPromoted,_that.viewCount,_that.favoriteCount,_that.interestCount,_that.userId,_that.user,_that.seller);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ListingDto implements ListingDto {
  const _ListingDto({required this.id, required this.title, this.description, @JsonKey(name: 'price_amount', fromJson: _parseDouble) required this.priceAmount, @JsonKey(name: 'price_currency') required this.priceCurrency, @JsonKey(name: 'is_price_negotiable') this.isPriceNegotiable, required this.condition, @JsonKey(name: 'deal_type') this.dealType, @JsonKey(name: 'seller_type') this.sellerType, this.category, @JsonKey(name: 'category_name') this.categoryName, @JsonKey(name: 'category_slug') this.categorySlug, this.location, @JsonKey(name: 'location_name') this.locationName, @JsonKey(name: 'location_slug') this.locationSlug, this.lat, this.lon, final  List<ListingMediaDto>? media, @JsonKey(name: 'media_urls') final  List<String>? mediaUrls, final  List<ListingAttributeDto>? attributes, this.status, @JsonKey(name: 'contact_name') this.contactName, @JsonKey(name: 'contact_email') this.contactEmail, @JsonKey(name: 'contact_phone') this.contactPhone, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt, @JsonKey(name: 'refreshed_at') this.refreshedAt, @JsonKey(name: 'expires_at') this.expiresAt, @JsonKey(name: 'quality_score', fromJson: _parseDoubleNullable) this.qualityScore, @JsonKey(name: 'contact_phone_masked') this.contactPhoneMasked, @JsonKey(name: 'price_normalized', fromJson: _parseDoubleNullable) this.priceNormalized, @JsonKey(name: 'is_promoted') this.isPromoted, @JsonKey(name: 'view_count') this.viewCount, @JsonKey(name: 'favorite_count') this.favoriteCount, @JsonKey(name: 'interest_count') this.interestCount, @JsonKey(name: 'user_id') this.userId, this.user, this.seller}): _media = media,_mediaUrls = mediaUrls,_attributes = attributes;
  factory _ListingDto.fromJson(Map<String, dynamic> json) => _$ListingDtoFromJson(json);

@override final  int id;
@override final  String title;
@override final  String? description;
@override@JsonKey(name: 'price_amount', fromJson: _parseDouble) final  double priceAmount;
@override@JsonKey(name: 'price_currency') final  String priceCurrency;
@override@JsonKey(name: 'is_price_negotiable') final  bool? isPriceNegotiable;
@override final  String condition;
@override@JsonKey(name: 'deal_type') final  String? dealType;
// 'sell', 'exchange', 'free'
@override@JsonKey(name: 'seller_type') final  String? sellerType;
// 'person', 'business'
@override final  int? category;
@override@JsonKey(name: 'category_name') final  String? categoryName;
@override@JsonKey(name: 'category_slug') final  String? categorySlug;
@override final  int? location;
@override@JsonKey(name: 'location_name') final  String? locationName;
@override@JsonKey(name: 'location_slug') final  String? locationSlug;
@override final  double? lat;
@override final  double? lon;
 final  List<ListingMediaDto>? _media;
@override List<ListingMediaDto>? get media {
  final value = _media;
  if (value == null) return null;
  if (_media is EqualUnmodifiableListView) return _media;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _mediaUrls;
@override@JsonKey(name: 'media_urls') List<String>? get mediaUrls {
  final value = _mediaUrls;
  if (value == null) return null;
  if (_mediaUrls is EqualUnmodifiableListView) return _mediaUrls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<ListingAttributeDto>? _attributes;
@override List<ListingAttributeDto>? get attributes {
  final value = _attributes;
  if (value == null) return null;
  if (_attributes is EqualUnmodifiableListView) return _attributes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? status;
@override@JsonKey(name: 'contact_name') final  String? contactName;
@override@JsonKey(name: 'contact_email') final  String? contactEmail;
@override@JsonKey(name: 'contact_phone') final  String? contactPhone;
@override@JsonKey(name: 'created_at') final  String? createdAt;
@override@JsonKey(name: 'updated_at') final  String? updatedAt;
@override@JsonKey(name: 'refreshed_at') final  String? refreshedAt;
@override@JsonKey(name: 'expires_at') final  String? expiresAt;
@override@JsonKey(name: 'quality_score', fromJson: _parseDoubleNullable) final  double? qualityScore;
@override@JsonKey(name: 'contact_phone_masked') final  String? contactPhoneMasked;
@override@JsonKey(name: 'price_normalized', fromJson: _parseDoubleNullable) final  double? priceNormalized;
@override@JsonKey(name: 'is_promoted') final  bool? isPromoted;
@override@JsonKey(name: 'view_count') final  int? viewCount;
@override@JsonKey(name: 'favorite_count') final  int? favoriteCount;
@override@JsonKey(name: 'interest_count') final  int? interestCount;
@override@JsonKey(name: 'user_id') final  int? userId;
@override final  ListingUserDto? user;
@override final  ListingSellerDto? seller;

/// Create a copy of ListingDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListingDtoCopyWith<_ListingDto> get copyWith => __$ListingDtoCopyWithImpl<_ListingDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ListingDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListingDto&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.priceAmount, priceAmount) || other.priceAmount == priceAmount)&&(identical(other.priceCurrency, priceCurrency) || other.priceCurrency == priceCurrency)&&(identical(other.isPriceNegotiable, isPriceNegotiable) || other.isPriceNegotiable == isPriceNegotiable)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.dealType, dealType) || other.dealType == dealType)&&(identical(other.sellerType, sellerType) || other.sellerType == sellerType)&&(identical(other.category, category) || other.category == category)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.categorySlug, categorySlug) || other.categorySlug == categorySlug)&&(identical(other.location, location) || other.location == location)&&(identical(other.locationName, locationName) || other.locationName == locationName)&&(identical(other.locationSlug, locationSlug) || other.locationSlug == locationSlug)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lon, lon) || other.lon == lon)&&const DeepCollectionEquality().equals(other._media, _media)&&const DeepCollectionEquality().equals(other._mediaUrls, _mediaUrls)&&const DeepCollectionEquality().equals(other._attributes, _attributes)&&(identical(other.status, status) || other.status == status)&&(identical(other.contactName, contactName) || other.contactName == contactName)&&(identical(other.contactEmail, contactEmail) || other.contactEmail == contactEmail)&&(identical(other.contactPhone, contactPhone) || other.contactPhone == contactPhone)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.refreshedAt, refreshedAt) || other.refreshedAt == refreshedAt)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.qualityScore, qualityScore) || other.qualityScore == qualityScore)&&(identical(other.contactPhoneMasked, contactPhoneMasked) || other.contactPhoneMasked == contactPhoneMasked)&&(identical(other.priceNormalized, priceNormalized) || other.priceNormalized == priceNormalized)&&(identical(other.isPromoted, isPromoted) || other.isPromoted == isPromoted)&&(identical(other.viewCount, viewCount) || other.viewCount == viewCount)&&(identical(other.favoriteCount, favoriteCount) || other.favoriteCount == favoriteCount)&&(identical(other.interestCount, interestCount) || other.interestCount == interestCount)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.user, user) || other.user == user)&&(identical(other.seller, seller) || other.seller == seller));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,title,description,priceAmount,priceCurrency,isPriceNegotiable,condition,dealType,sellerType,category,categoryName,categorySlug,location,locationName,locationSlug,lat,lon,const DeepCollectionEquality().hash(_media),const DeepCollectionEquality().hash(_mediaUrls),const DeepCollectionEquality().hash(_attributes),status,contactName,contactEmail,contactPhone,createdAt,updatedAt,refreshedAt,expiresAt,qualityScore,contactPhoneMasked,priceNormalized,isPromoted,viewCount,favoriteCount,interestCount,userId,user,seller]);

@override
String toString() {
  return 'ListingDto(id: $id, title: $title, description: $description, priceAmount: $priceAmount, priceCurrency: $priceCurrency, isPriceNegotiable: $isPriceNegotiable, condition: $condition, dealType: $dealType, sellerType: $sellerType, category: $category, categoryName: $categoryName, categorySlug: $categorySlug, location: $location, locationName: $locationName, locationSlug: $locationSlug, lat: $lat, lon: $lon, media: $media, mediaUrls: $mediaUrls, attributes: $attributes, status: $status, contactName: $contactName, contactEmail: $contactEmail, contactPhone: $contactPhone, createdAt: $createdAt, updatedAt: $updatedAt, refreshedAt: $refreshedAt, expiresAt: $expiresAt, qualityScore: $qualityScore, contactPhoneMasked: $contactPhoneMasked, priceNormalized: $priceNormalized, isPromoted: $isPromoted, viewCount: $viewCount, favoriteCount: $favoriteCount, interestCount: $interestCount, userId: $userId, user: $user, seller: $seller)';
}


}

/// @nodoc
abstract mixin class _$ListingDtoCopyWith<$Res> implements $ListingDtoCopyWith<$Res> {
  factory _$ListingDtoCopyWith(_ListingDto value, $Res Function(_ListingDto) _then) = __$ListingDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, String title, String? description,@JsonKey(name: 'price_amount', fromJson: _parseDouble) double priceAmount,@JsonKey(name: 'price_currency') String priceCurrency,@JsonKey(name: 'is_price_negotiable') bool? isPriceNegotiable, String condition,@JsonKey(name: 'deal_type') String? dealType,@JsonKey(name: 'seller_type') String? sellerType, int? category,@JsonKey(name: 'category_name') String? categoryName,@JsonKey(name: 'category_slug') String? categorySlug, int? location,@JsonKey(name: 'location_name') String? locationName,@JsonKey(name: 'location_slug') String? locationSlug, double? lat, double? lon, List<ListingMediaDto>? media,@JsonKey(name: 'media_urls') List<String>? mediaUrls, List<ListingAttributeDto>? attributes, String? status,@JsonKey(name: 'contact_name') String? contactName,@JsonKey(name: 'contact_email') String? contactEmail,@JsonKey(name: 'contact_phone') String? contactPhone,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt,@JsonKey(name: 'refreshed_at') String? refreshedAt,@JsonKey(name: 'expires_at') String? expiresAt,@JsonKey(name: 'quality_score', fromJson: _parseDoubleNullable) double? qualityScore,@JsonKey(name: 'contact_phone_masked') String? contactPhoneMasked,@JsonKey(name: 'price_normalized', fromJson: _parseDoubleNullable) double? priceNormalized,@JsonKey(name: 'is_promoted') bool? isPromoted,@JsonKey(name: 'view_count') int? viewCount,@JsonKey(name: 'favorite_count') int? favoriteCount,@JsonKey(name: 'interest_count') int? interestCount,@JsonKey(name: 'user_id') int? userId, ListingUserDto? user, ListingSellerDto? seller
});


@override $ListingUserDtoCopyWith<$Res>? get user;@override $ListingSellerDtoCopyWith<$Res>? get seller;

}
/// @nodoc
class __$ListingDtoCopyWithImpl<$Res>
    implements _$ListingDtoCopyWith<$Res> {
  __$ListingDtoCopyWithImpl(this._self, this._then);

  final _ListingDto _self;
  final $Res Function(_ListingDto) _then;

/// Create a copy of ListingDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = freezed,Object? priceAmount = null,Object? priceCurrency = null,Object? isPriceNegotiable = freezed,Object? condition = null,Object? dealType = freezed,Object? sellerType = freezed,Object? category = freezed,Object? categoryName = freezed,Object? categorySlug = freezed,Object? location = freezed,Object? locationName = freezed,Object? locationSlug = freezed,Object? lat = freezed,Object? lon = freezed,Object? media = freezed,Object? mediaUrls = freezed,Object? attributes = freezed,Object? status = freezed,Object? contactName = freezed,Object? contactEmail = freezed,Object? contactPhone = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? refreshedAt = freezed,Object? expiresAt = freezed,Object? qualityScore = freezed,Object? contactPhoneMasked = freezed,Object? priceNormalized = freezed,Object? isPromoted = freezed,Object? viewCount = freezed,Object? favoriteCount = freezed,Object? interestCount = freezed,Object? userId = freezed,Object? user = freezed,Object? seller = freezed,}) {
  return _then(_ListingDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,priceAmount: null == priceAmount ? _self.priceAmount : priceAmount // ignore: cast_nullable_to_non_nullable
as double,priceCurrency: null == priceCurrency ? _self.priceCurrency : priceCurrency // ignore: cast_nullable_to_non_nullable
as String,isPriceNegotiable: freezed == isPriceNegotiable ? _self.isPriceNegotiable : isPriceNegotiable // ignore: cast_nullable_to_non_nullable
as bool?,condition: null == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as String,dealType: freezed == dealType ? _self.dealType : dealType // ignore: cast_nullable_to_non_nullable
as String?,sellerType: freezed == sellerType ? _self.sellerType : sellerType // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as int?,categoryName: freezed == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String?,categorySlug: freezed == categorySlug ? _self.categorySlug : categorySlug // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as int?,locationName: freezed == locationName ? _self.locationName : locationName // ignore: cast_nullable_to_non_nullable
as String?,locationSlug: freezed == locationSlug ? _self.locationSlug : locationSlug // ignore: cast_nullable_to_non_nullable
as String?,lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double?,lon: freezed == lon ? _self.lon : lon // ignore: cast_nullable_to_non_nullable
as double?,media: freezed == media ? _self._media : media // ignore: cast_nullable_to_non_nullable
as List<ListingMediaDto>?,mediaUrls: freezed == mediaUrls ? _self._mediaUrls : mediaUrls // ignore: cast_nullable_to_non_nullable
as List<String>?,attributes: freezed == attributes ? _self._attributes : attributes // ignore: cast_nullable_to_non_nullable
as List<ListingAttributeDto>?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,contactName: freezed == contactName ? _self.contactName : contactName // ignore: cast_nullable_to_non_nullable
as String?,contactEmail: freezed == contactEmail ? _self.contactEmail : contactEmail // ignore: cast_nullable_to_non_nullable
as String?,contactPhone: freezed == contactPhone ? _self.contactPhone : contactPhone // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,refreshedAt: freezed == refreshedAt ? _self.refreshedAt : refreshedAt // ignore: cast_nullable_to_non_nullable
as String?,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as String?,qualityScore: freezed == qualityScore ? _self.qualityScore : qualityScore // ignore: cast_nullable_to_non_nullable
as double?,contactPhoneMasked: freezed == contactPhoneMasked ? _self.contactPhoneMasked : contactPhoneMasked // ignore: cast_nullable_to_non_nullable
as String?,priceNormalized: freezed == priceNormalized ? _self.priceNormalized : priceNormalized // ignore: cast_nullable_to_non_nullable
as double?,isPromoted: freezed == isPromoted ? _self.isPromoted : isPromoted // ignore: cast_nullable_to_non_nullable
as bool?,viewCount: freezed == viewCount ? _self.viewCount : viewCount // ignore: cast_nullable_to_non_nullable
as int?,favoriteCount: freezed == favoriteCount ? _self.favoriteCount : favoriteCount // ignore: cast_nullable_to_non_nullable
as int?,interestCount: freezed == interestCount ? _self.interestCount : interestCount // ignore: cast_nullable_to_non_nullable
as int?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as ListingUserDto?,seller: freezed == seller ? _self.seller : seller // ignore: cast_nullable_to_non_nullable
as ListingSellerDto?,
  ));
}

/// Create a copy of ListingDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ListingUserDtoCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $ListingUserDtoCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of ListingDto
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
mixin _$ListingPayloadDto {

 String get title; String? get description;@JsonKey(name: 'price_amount') dynamic get priceAmount;// String or number
@JsonKey(name: 'price_currency') String get priceCurrency;@JsonKey(name: 'is_price_negotiable') bool? get isPriceNegotiable; String get condition;@JsonKey(name: 'deal_type') String? get dealType;@JsonKey(name: 'seller_type') String? get sellerType; int get category; int get location; double? get lat; double? get lon; List<ListingAttributePayloadDto>? get attributes;@JsonKey(name: 'contact_name') String? get contactName;@JsonKey(name: 'contact_email') String? get contactEmail;@JsonKey(name: 'contact_phone') String? get contactPhone;
/// Create a copy of ListingPayloadDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListingPayloadDtoCopyWith<ListingPayloadDto> get copyWith => _$ListingPayloadDtoCopyWithImpl<ListingPayloadDto>(this as ListingPayloadDto, _$identity);

  /// Serializes this ListingPayloadDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListingPayloadDto&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.priceAmount, priceAmount)&&(identical(other.priceCurrency, priceCurrency) || other.priceCurrency == priceCurrency)&&(identical(other.isPriceNegotiable, isPriceNegotiable) || other.isPriceNegotiable == isPriceNegotiable)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.dealType, dealType) || other.dealType == dealType)&&(identical(other.sellerType, sellerType) || other.sellerType == sellerType)&&(identical(other.category, category) || other.category == category)&&(identical(other.location, location) || other.location == location)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lon, lon) || other.lon == lon)&&const DeepCollectionEquality().equals(other.attributes, attributes)&&(identical(other.contactName, contactName) || other.contactName == contactName)&&(identical(other.contactEmail, contactEmail) || other.contactEmail == contactEmail)&&(identical(other.contactPhone, contactPhone) || other.contactPhone == contactPhone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,description,const DeepCollectionEquality().hash(priceAmount),priceCurrency,isPriceNegotiable,condition,dealType,sellerType,category,location,lat,lon,const DeepCollectionEquality().hash(attributes),contactName,contactEmail,contactPhone);

@override
String toString() {
  return 'ListingPayloadDto(title: $title, description: $description, priceAmount: $priceAmount, priceCurrency: $priceCurrency, isPriceNegotiable: $isPriceNegotiable, condition: $condition, dealType: $dealType, sellerType: $sellerType, category: $category, location: $location, lat: $lat, lon: $lon, attributes: $attributes, contactName: $contactName, contactEmail: $contactEmail, contactPhone: $contactPhone)';
}


}

/// @nodoc
abstract mixin class $ListingPayloadDtoCopyWith<$Res>  {
  factory $ListingPayloadDtoCopyWith(ListingPayloadDto value, $Res Function(ListingPayloadDto) _then) = _$ListingPayloadDtoCopyWithImpl;
@useResult
$Res call({
 String title, String? description,@JsonKey(name: 'price_amount') dynamic priceAmount,@JsonKey(name: 'price_currency') String priceCurrency,@JsonKey(name: 'is_price_negotiable') bool? isPriceNegotiable, String condition,@JsonKey(name: 'deal_type') String? dealType,@JsonKey(name: 'seller_type') String? sellerType, int category, int location, double? lat, double? lon, List<ListingAttributePayloadDto>? attributes,@JsonKey(name: 'contact_name') String? contactName,@JsonKey(name: 'contact_email') String? contactEmail,@JsonKey(name: 'contact_phone') String? contactPhone
});




}
/// @nodoc
class _$ListingPayloadDtoCopyWithImpl<$Res>
    implements $ListingPayloadDtoCopyWith<$Res> {
  _$ListingPayloadDtoCopyWithImpl(this._self, this._then);

  final ListingPayloadDto _self;
  final $Res Function(ListingPayloadDto) _then;

/// Create a copy of ListingPayloadDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? description = freezed,Object? priceAmount = freezed,Object? priceCurrency = null,Object? isPriceNegotiable = freezed,Object? condition = null,Object? dealType = freezed,Object? sellerType = freezed,Object? category = null,Object? location = null,Object? lat = freezed,Object? lon = freezed,Object? attributes = freezed,Object? contactName = freezed,Object? contactEmail = freezed,Object? contactPhone = freezed,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,priceAmount: freezed == priceAmount ? _self.priceAmount : priceAmount // ignore: cast_nullable_to_non_nullable
as dynamic,priceCurrency: null == priceCurrency ? _self.priceCurrency : priceCurrency // ignore: cast_nullable_to_non_nullable
as String,isPriceNegotiable: freezed == isPriceNegotiable ? _self.isPriceNegotiable : isPriceNegotiable // ignore: cast_nullable_to_non_nullable
as bool?,condition: null == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as String,dealType: freezed == dealType ? _self.dealType : dealType // ignore: cast_nullable_to_non_nullable
as String?,sellerType: freezed == sellerType ? _self.sellerType : sellerType // ignore: cast_nullable_to_non_nullable
as String?,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as int,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as int,lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double?,lon: freezed == lon ? _self.lon : lon // ignore: cast_nullable_to_non_nullable
as double?,attributes: freezed == attributes ? _self.attributes : attributes // ignore: cast_nullable_to_non_nullable
as List<ListingAttributePayloadDto>?,contactName: freezed == contactName ? _self.contactName : contactName // ignore: cast_nullable_to_non_nullable
as String?,contactEmail: freezed == contactEmail ? _self.contactEmail : contactEmail // ignore: cast_nullable_to_non_nullable
as String?,contactPhone: freezed == contactPhone ? _self.contactPhone : contactPhone // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ListingPayloadDto].
extension ListingPayloadDtoPatterns on ListingPayloadDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ListingPayloadDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ListingPayloadDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ListingPayloadDto value)  $default,){
final _that = this;
switch (_that) {
case _ListingPayloadDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ListingPayloadDto value)?  $default,){
final _that = this;
switch (_that) {
case _ListingPayloadDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String? description, @JsonKey(name: 'price_amount')  dynamic priceAmount, @JsonKey(name: 'price_currency')  String priceCurrency, @JsonKey(name: 'is_price_negotiable')  bool? isPriceNegotiable,  String condition, @JsonKey(name: 'deal_type')  String? dealType, @JsonKey(name: 'seller_type')  String? sellerType,  int category,  int location,  double? lat,  double? lon,  List<ListingAttributePayloadDto>? attributes, @JsonKey(name: 'contact_name')  String? contactName, @JsonKey(name: 'contact_email')  String? contactEmail, @JsonKey(name: 'contact_phone')  String? contactPhone)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ListingPayloadDto() when $default != null:
return $default(_that.title,_that.description,_that.priceAmount,_that.priceCurrency,_that.isPriceNegotiable,_that.condition,_that.dealType,_that.sellerType,_that.category,_that.location,_that.lat,_that.lon,_that.attributes,_that.contactName,_that.contactEmail,_that.contactPhone);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String? description, @JsonKey(name: 'price_amount')  dynamic priceAmount, @JsonKey(name: 'price_currency')  String priceCurrency, @JsonKey(name: 'is_price_negotiable')  bool? isPriceNegotiable,  String condition, @JsonKey(name: 'deal_type')  String? dealType, @JsonKey(name: 'seller_type')  String? sellerType,  int category,  int location,  double? lat,  double? lon,  List<ListingAttributePayloadDto>? attributes, @JsonKey(name: 'contact_name')  String? contactName, @JsonKey(name: 'contact_email')  String? contactEmail, @JsonKey(name: 'contact_phone')  String? contactPhone)  $default,) {final _that = this;
switch (_that) {
case _ListingPayloadDto():
return $default(_that.title,_that.description,_that.priceAmount,_that.priceCurrency,_that.isPriceNegotiable,_that.condition,_that.dealType,_that.sellerType,_that.category,_that.location,_that.lat,_that.lon,_that.attributes,_that.contactName,_that.contactEmail,_that.contactPhone);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String? description, @JsonKey(name: 'price_amount')  dynamic priceAmount, @JsonKey(name: 'price_currency')  String priceCurrency, @JsonKey(name: 'is_price_negotiable')  bool? isPriceNegotiable,  String condition, @JsonKey(name: 'deal_type')  String? dealType, @JsonKey(name: 'seller_type')  String? sellerType,  int category,  int location,  double? lat,  double? lon,  List<ListingAttributePayloadDto>? attributes, @JsonKey(name: 'contact_name')  String? contactName, @JsonKey(name: 'contact_email')  String? contactEmail, @JsonKey(name: 'contact_phone')  String? contactPhone)?  $default,) {final _that = this;
switch (_that) {
case _ListingPayloadDto() when $default != null:
return $default(_that.title,_that.description,_that.priceAmount,_that.priceCurrency,_that.isPriceNegotiable,_that.condition,_that.dealType,_that.sellerType,_that.category,_that.location,_that.lat,_that.lon,_that.attributes,_that.contactName,_that.contactEmail,_that.contactPhone);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ListingPayloadDto implements ListingPayloadDto {
  const _ListingPayloadDto({required this.title, this.description, @JsonKey(name: 'price_amount') required this.priceAmount, @JsonKey(name: 'price_currency') required this.priceCurrency, @JsonKey(name: 'is_price_negotiable') this.isPriceNegotiable, required this.condition, @JsonKey(name: 'deal_type') this.dealType, @JsonKey(name: 'seller_type') this.sellerType, required this.category, required this.location, this.lat, this.lon, final  List<ListingAttributePayloadDto>? attributes, @JsonKey(name: 'contact_name') this.contactName, @JsonKey(name: 'contact_email') this.contactEmail, @JsonKey(name: 'contact_phone') this.contactPhone}): _attributes = attributes;
  factory _ListingPayloadDto.fromJson(Map<String, dynamic> json) => _$ListingPayloadDtoFromJson(json);

@override final  String title;
@override final  String? description;
@override@JsonKey(name: 'price_amount') final  dynamic priceAmount;
// String or number
@override@JsonKey(name: 'price_currency') final  String priceCurrency;
@override@JsonKey(name: 'is_price_negotiable') final  bool? isPriceNegotiable;
@override final  String condition;
@override@JsonKey(name: 'deal_type') final  String? dealType;
@override@JsonKey(name: 'seller_type') final  String? sellerType;
@override final  int category;
@override final  int location;
@override final  double? lat;
@override final  double? lon;
 final  List<ListingAttributePayloadDto>? _attributes;
@override List<ListingAttributePayloadDto>? get attributes {
  final value = _attributes;
  if (value == null) return null;
  if (_attributes is EqualUnmodifiableListView) return _attributes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'contact_name') final  String? contactName;
@override@JsonKey(name: 'contact_email') final  String? contactEmail;
@override@JsonKey(name: 'contact_phone') final  String? contactPhone;

/// Create a copy of ListingPayloadDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListingPayloadDtoCopyWith<_ListingPayloadDto> get copyWith => __$ListingPayloadDtoCopyWithImpl<_ListingPayloadDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ListingPayloadDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListingPayloadDto&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.priceAmount, priceAmount)&&(identical(other.priceCurrency, priceCurrency) || other.priceCurrency == priceCurrency)&&(identical(other.isPriceNegotiable, isPriceNegotiable) || other.isPriceNegotiable == isPriceNegotiable)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.dealType, dealType) || other.dealType == dealType)&&(identical(other.sellerType, sellerType) || other.sellerType == sellerType)&&(identical(other.category, category) || other.category == category)&&(identical(other.location, location) || other.location == location)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lon, lon) || other.lon == lon)&&const DeepCollectionEquality().equals(other._attributes, _attributes)&&(identical(other.contactName, contactName) || other.contactName == contactName)&&(identical(other.contactEmail, contactEmail) || other.contactEmail == contactEmail)&&(identical(other.contactPhone, contactPhone) || other.contactPhone == contactPhone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,description,const DeepCollectionEquality().hash(priceAmount),priceCurrency,isPriceNegotiable,condition,dealType,sellerType,category,location,lat,lon,const DeepCollectionEquality().hash(_attributes),contactName,contactEmail,contactPhone);

@override
String toString() {
  return 'ListingPayloadDto(title: $title, description: $description, priceAmount: $priceAmount, priceCurrency: $priceCurrency, isPriceNegotiable: $isPriceNegotiable, condition: $condition, dealType: $dealType, sellerType: $sellerType, category: $category, location: $location, lat: $lat, lon: $lon, attributes: $attributes, contactName: $contactName, contactEmail: $contactEmail, contactPhone: $contactPhone)';
}


}

/// @nodoc
abstract mixin class _$ListingPayloadDtoCopyWith<$Res> implements $ListingPayloadDtoCopyWith<$Res> {
  factory _$ListingPayloadDtoCopyWith(_ListingPayloadDto value, $Res Function(_ListingPayloadDto) _then) = __$ListingPayloadDtoCopyWithImpl;
@override @useResult
$Res call({
 String title, String? description,@JsonKey(name: 'price_amount') dynamic priceAmount,@JsonKey(name: 'price_currency') String priceCurrency,@JsonKey(name: 'is_price_negotiable') bool? isPriceNegotiable, String condition,@JsonKey(name: 'deal_type') String? dealType,@JsonKey(name: 'seller_type') String? sellerType, int category, int location, double? lat, double? lon, List<ListingAttributePayloadDto>? attributes,@JsonKey(name: 'contact_name') String? contactName,@JsonKey(name: 'contact_email') String? contactEmail,@JsonKey(name: 'contact_phone') String? contactPhone
});




}
/// @nodoc
class __$ListingPayloadDtoCopyWithImpl<$Res>
    implements _$ListingPayloadDtoCopyWith<$Res> {
  __$ListingPayloadDtoCopyWithImpl(this._self, this._then);

  final _ListingPayloadDto _self;
  final $Res Function(_ListingPayloadDto) _then;

/// Create a copy of ListingPayloadDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? description = freezed,Object? priceAmount = freezed,Object? priceCurrency = null,Object? isPriceNegotiable = freezed,Object? condition = null,Object? dealType = freezed,Object? sellerType = freezed,Object? category = null,Object? location = null,Object? lat = freezed,Object? lon = freezed,Object? attributes = freezed,Object? contactName = freezed,Object? contactEmail = freezed,Object? contactPhone = freezed,}) {
  return _then(_ListingPayloadDto(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,priceAmount: freezed == priceAmount ? _self.priceAmount : priceAmount // ignore: cast_nullable_to_non_nullable
as dynamic,priceCurrency: null == priceCurrency ? _self.priceCurrency : priceCurrency // ignore: cast_nullable_to_non_nullable
as String,isPriceNegotiable: freezed == isPriceNegotiable ? _self.isPriceNegotiable : isPriceNegotiable // ignore: cast_nullable_to_non_nullable
as bool?,condition: null == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as String,dealType: freezed == dealType ? _self.dealType : dealType // ignore: cast_nullable_to_non_nullable
as String?,sellerType: freezed == sellerType ? _self.sellerType : sellerType // ignore: cast_nullable_to_non_nullable
as String?,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as int,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as int,lat: freezed == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double?,lon: freezed == lon ? _self.lon : lon // ignore: cast_nullable_to_non_nullable
as double?,attributes: freezed == attributes ? _self._attributes : attributes // ignore: cast_nullable_to_non_nullable
as List<ListingAttributePayloadDto>?,contactName: freezed == contactName ? _self.contactName : contactName // ignore: cast_nullable_to_non_nullable
as String?,contactEmail: freezed == contactEmail ? _self.contactEmail : contactEmail // ignore: cast_nullable_to_non_nullable
as String?,contactPhone: freezed == contactPhone ? _self.contactPhone : contactPhone // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ListingAttributePayloadDto {

 int get attribute; dynamic get value;
/// Create a copy of ListingAttributePayloadDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListingAttributePayloadDtoCopyWith<ListingAttributePayloadDto> get copyWith => _$ListingAttributePayloadDtoCopyWithImpl<ListingAttributePayloadDto>(this as ListingAttributePayloadDto, _$identity);

  /// Serializes this ListingAttributePayloadDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListingAttributePayloadDto&&(identical(other.attribute, attribute) || other.attribute == attribute)&&const DeepCollectionEquality().equals(other.value, value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,attribute,const DeepCollectionEquality().hash(value));

@override
String toString() {
  return 'ListingAttributePayloadDto(attribute: $attribute, value: $value)';
}


}

/// @nodoc
abstract mixin class $ListingAttributePayloadDtoCopyWith<$Res>  {
  factory $ListingAttributePayloadDtoCopyWith(ListingAttributePayloadDto value, $Res Function(ListingAttributePayloadDto) _then) = _$ListingAttributePayloadDtoCopyWithImpl;
@useResult
$Res call({
 int attribute, dynamic value
});




}
/// @nodoc
class _$ListingAttributePayloadDtoCopyWithImpl<$Res>
    implements $ListingAttributePayloadDtoCopyWith<$Res> {
  _$ListingAttributePayloadDtoCopyWithImpl(this._self, this._then);

  final ListingAttributePayloadDto _self;
  final $Res Function(ListingAttributePayloadDto) _then;

/// Create a copy of ListingAttributePayloadDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? attribute = null,Object? value = freezed,}) {
  return _then(_self.copyWith(
attribute: null == attribute ? _self.attribute : attribute // ignore: cast_nullable_to_non_nullable
as int,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [ListingAttributePayloadDto].
extension ListingAttributePayloadDtoPatterns on ListingAttributePayloadDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ListingAttributePayloadDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ListingAttributePayloadDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ListingAttributePayloadDto value)  $default,){
final _that = this;
switch (_that) {
case _ListingAttributePayloadDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ListingAttributePayloadDto value)?  $default,){
final _that = this;
switch (_that) {
case _ListingAttributePayloadDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int attribute,  dynamic value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ListingAttributePayloadDto() when $default != null:
return $default(_that.attribute,_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int attribute,  dynamic value)  $default,) {final _that = this;
switch (_that) {
case _ListingAttributePayloadDto():
return $default(_that.attribute,_that.value);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int attribute,  dynamic value)?  $default,) {final _that = this;
switch (_that) {
case _ListingAttributePayloadDto() when $default != null:
return $default(_that.attribute,_that.value);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ListingAttributePayloadDto implements ListingAttributePayloadDto {
  const _ListingAttributePayloadDto({required this.attribute, required this.value});
  factory _ListingAttributePayloadDto.fromJson(Map<String, dynamic> json) => _$ListingAttributePayloadDtoFromJson(json);

@override final  int attribute;
@override final  dynamic value;

/// Create a copy of ListingAttributePayloadDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListingAttributePayloadDtoCopyWith<_ListingAttributePayloadDto> get copyWith => __$ListingAttributePayloadDtoCopyWithImpl<_ListingAttributePayloadDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ListingAttributePayloadDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListingAttributePayloadDto&&(identical(other.attribute, attribute) || other.attribute == attribute)&&const DeepCollectionEquality().equals(other.value, value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,attribute,const DeepCollectionEquality().hash(value));

@override
String toString() {
  return 'ListingAttributePayloadDto(attribute: $attribute, value: $value)';
}


}

/// @nodoc
abstract mixin class _$ListingAttributePayloadDtoCopyWith<$Res> implements $ListingAttributePayloadDtoCopyWith<$Res> {
  factory _$ListingAttributePayloadDtoCopyWith(_ListingAttributePayloadDto value, $Res Function(_ListingAttributePayloadDto) _then) = __$ListingAttributePayloadDtoCopyWithImpl;
@override @useResult
$Res call({
 int attribute, dynamic value
});




}
/// @nodoc
class __$ListingAttributePayloadDtoCopyWithImpl<$Res>
    implements _$ListingAttributePayloadDtoCopyWith<$Res> {
  __$ListingAttributePayloadDtoCopyWithImpl(this._self, this._then);

  final _ListingAttributePayloadDto _self;
  final $Res Function(_ListingAttributePayloadDto) _then;

/// Create a copy of ListingAttributePayloadDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? attribute = null,Object? value = freezed,}) {
  return _then(_ListingAttributePayloadDto(
attribute: null == attribute ? _self.attribute : attribute // ignore: cast_nullable_to_non_nullable
as int,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}


/// @nodoc
mixin _$MediaReorderRequestDto {

@JsonKey(name: 'media_ids') List<int> get mediaIds;
/// Create a copy of MediaReorderRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MediaReorderRequestDtoCopyWith<MediaReorderRequestDto> get copyWith => _$MediaReorderRequestDtoCopyWithImpl<MediaReorderRequestDto>(this as MediaReorderRequestDto, _$identity);

  /// Serializes this MediaReorderRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MediaReorderRequestDto&&const DeepCollectionEquality().equals(other.mediaIds, mediaIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(mediaIds));

@override
String toString() {
  return 'MediaReorderRequestDto(mediaIds: $mediaIds)';
}


}

/// @nodoc
abstract mixin class $MediaReorderRequestDtoCopyWith<$Res>  {
  factory $MediaReorderRequestDtoCopyWith(MediaReorderRequestDto value, $Res Function(MediaReorderRequestDto) _then) = _$MediaReorderRequestDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'media_ids') List<int> mediaIds
});




}
/// @nodoc
class _$MediaReorderRequestDtoCopyWithImpl<$Res>
    implements $MediaReorderRequestDtoCopyWith<$Res> {
  _$MediaReorderRequestDtoCopyWithImpl(this._self, this._then);

  final MediaReorderRequestDto _self;
  final $Res Function(MediaReorderRequestDto) _then;

/// Create a copy of MediaReorderRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mediaIds = null,}) {
  return _then(_self.copyWith(
mediaIds: null == mediaIds ? _self.mediaIds : mediaIds // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}

}


/// Adds pattern-matching-related methods to [MediaReorderRequestDto].
extension MediaReorderRequestDtoPatterns on MediaReorderRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MediaReorderRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MediaReorderRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MediaReorderRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _MediaReorderRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MediaReorderRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _MediaReorderRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'media_ids')  List<int> mediaIds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MediaReorderRequestDto() when $default != null:
return $default(_that.mediaIds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'media_ids')  List<int> mediaIds)  $default,) {final _that = this;
switch (_that) {
case _MediaReorderRequestDto():
return $default(_that.mediaIds);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'media_ids')  List<int> mediaIds)?  $default,) {final _that = this;
switch (_that) {
case _MediaReorderRequestDto() when $default != null:
return $default(_that.mediaIds);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MediaReorderRequestDto implements MediaReorderRequestDto {
  const _MediaReorderRequestDto({@JsonKey(name: 'media_ids') required final  List<int> mediaIds}): _mediaIds = mediaIds;
  factory _MediaReorderRequestDto.fromJson(Map<String, dynamic> json) => _$MediaReorderRequestDtoFromJson(json);

 final  List<int> _mediaIds;
@override@JsonKey(name: 'media_ids') List<int> get mediaIds {
  if (_mediaIds is EqualUnmodifiableListView) return _mediaIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_mediaIds);
}


/// Create a copy of MediaReorderRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MediaReorderRequestDtoCopyWith<_MediaReorderRequestDto> get copyWith => __$MediaReorderRequestDtoCopyWithImpl<_MediaReorderRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MediaReorderRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MediaReorderRequestDto&&const DeepCollectionEquality().equals(other._mediaIds, _mediaIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_mediaIds));

@override
String toString() {
  return 'MediaReorderRequestDto(mediaIds: $mediaIds)';
}


}

/// @nodoc
abstract mixin class _$MediaReorderRequestDtoCopyWith<$Res> implements $MediaReorderRequestDtoCopyWith<$Res> {
  factory _$MediaReorderRequestDtoCopyWith(_MediaReorderRequestDto value, $Res Function(_MediaReorderRequestDto) _then) = __$MediaReorderRequestDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'media_ids') List<int> mediaIds
});




}
/// @nodoc
class __$MediaReorderRequestDtoCopyWithImpl<$Res>
    implements _$MediaReorderRequestDtoCopyWith<$Res> {
  __$MediaReorderRequestDtoCopyWithImpl(this._self, this._then);

  final _MediaReorderRequestDto _self;
  final $Res Function(_MediaReorderRequestDto) _then;

/// Create a copy of MediaReorderRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mediaIds = null,}) {
  return _then(_MediaReorderRequestDto(
mediaIds: null == mediaIds ? _self._mediaIds : mediaIds // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}


}


/// @nodoc
mixin _$ListingShareRequestDto {

@JsonKey(name: 'telegram_chat_ids') List<int> get telegramChatIds;
/// Create a copy of ListingShareRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ListingShareRequestDtoCopyWith<ListingShareRequestDto> get copyWith => _$ListingShareRequestDtoCopyWithImpl<ListingShareRequestDto>(this as ListingShareRequestDto, _$identity);

  /// Serializes this ListingShareRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ListingShareRequestDto&&const DeepCollectionEquality().equals(other.telegramChatIds, telegramChatIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(telegramChatIds));

@override
String toString() {
  return 'ListingShareRequestDto(telegramChatIds: $telegramChatIds)';
}


}

/// @nodoc
abstract mixin class $ListingShareRequestDtoCopyWith<$Res>  {
  factory $ListingShareRequestDtoCopyWith(ListingShareRequestDto value, $Res Function(ListingShareRequestDto) _then) = _$ListingShareRequestDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'telegram_chat_ids') List<int> telegramChatIds
});




}
/// @nodoc
class _$ListingShareRequestDtoCopyWithImpl<$Res>
    implements $ListingShareRequestDtoCopyWith<$Res> {
  _$ListingShareRequestDtoCopyWithImpl(this._self, this._then);

  final ListingShareRequestDto _self;
  final $Res Function(ListingShareRequestDto) _then;

/// Create a copy of ListingShareRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? telegramChatIds = null,}) {
  return _then(_self.copyWith(
telegramChatIds: null == telegramChatIds ? _self.telegramChatIds : telegramChatIds // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}

}


/// Adds pattern-matching-related methods to [ListingShareRequestDto].
extension ListingShareRequestDtoPatterns on ListingShareRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ListingShareRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ListingShareRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ListingShareRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _ListingShareRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ListingShareRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _ListingShareRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'telegram_chat_ids')  List<int> telegramChatIds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ListingShareRequestDto() when $default != null:
return $default(_that.telegramChatIds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'telegram_chat_ids')  List<int> telegramChatIds)  $default,) {final _that = this;
switch (_that) {
case _ListingShareRequestDto():
return $default(_that.telegramChatIds);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'telegram_chat_ids')  List<int> telegramChatIds)?  $default,) {final _that = this;
switch (_that) {
case _ListingShareRequestDto() when $default != null:
return $default(_that.telegramChatIds);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ListingShareRequestDto implements ListingShareRequestDto {
  const _ListingShareRequestDto({@JsonKey(name: 'telegram_chat_ids') required final  List<int> telegramChatIds}): _telegramChatIds = telegramChatIds;
  factory _ListingShareRequestDto.fromJson(Map<String, dynamic> json) => _$ListingShareRequestDtoFromJson(json);

 final  List<int> _telegramChatIds;
@override@JsonKey(name: 'telegram_chat_ids') List<int> get telegramChatIds {
  if (_telegramChatIds is EqualUnmodifiableListView) return _telegramChatIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_telegramChatIds);
}


/// Create a copy of ListingShareRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ListingShareRequestDtoCopyWith<_ListingShareRequestDto> get copyWith => __$ListingShareRequestDtoCopyWithImpl<_ListingShareRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ListingShareRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ListingShareRequestDto&&const DeepCollectionEquality().equals(other._telegramChatIds, _telegramChatIds));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_telegramChatIds));

@override
String toString() {
  return 'ListingShareRequestDto(telegramChatIds: $telegramChatIds)';
}


}

/// @nodoc
abstract mixin class _$ListingShareRequestDtoCopyWith<$Res> implements $ListingShareRequestDtoCopyWith<$Res> {
  factory _$ListingShareRequestDtoCopyWith(_ListingShareRequestDto value, $Res Function(_ListingShareRequestDto) _then) = __$ListingShareRequestDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'telegram_chat_ids') List<int> telegramChatIds
});




}
/// @nodoc
class __$ListingShareRequestDtoCopyWithImpl<$Res>
    implements _$ListingShareRequestDtoCopyWith<$Res> {
  __$ListingShareRequestDtoCopyWithImpl(this._self, this._then);

  final _ListingShareRequestDto _self;
  final $Res Function(_ListingShareRequestDto) _then;

/// Create a copy of ListingShareRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? telegramChatIds = null,}) {
  return _then(_ListingShareRequestDto(
telegramChatIds: null == telegramChatIds ? _self._telegramChatIds : telegramChatIds // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}


}

// dart format on
