// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'saved_search_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SavedSearchDto {

 int get id; String get title; Map<String, dynamic> get query; String? get frequency;// 'instant', 'daily'
@JsonKey(name: 'is_active') bool get isActive;@JsonKey(name: 'new_listings_count') int get newListingsCount;@JsonKey(name: 'last_notified_at') String? get lastNotifiedAt;@JsonKey(name: 'last_viewed_at') String? get lastViewedAt;@JsonKey(name: 'created_at') String? get createdAt;@JsonKey(name: 'updated_at') String? get updatedAt;
/// Create a copy of SavedSearchDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SavedSearchDtoCopyWith<SavedSearchDto> get copyWith => _$SavedSearchDtoCopyWithImpl<SavedSearchDto>(this as SavedSearchDto, _$identity);

  /// Serializes this SavedSearchDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SavedSearchDto&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other.query, query)&&(identical(other.frequency, frequency) || other.frequency == frequency)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.newListingsCount, newListingsCount) || other.newListingsCount == newListingsCount)&&(identical(other.lastNotifiedAt, lastNotifiedAt) || other.lastNotifiedAt == lastNotifiedAt)&&(identical(other.lastViewedAt, lastViewedAt) || other.lastViewedAt == lastViewedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,const DeepCollectionEquality().hash(query),frequency,isActive,newListingsCount,lastNotifiedAt,lastViewedAt,createdAt,updatedAt);

@override
String toString() {
  return 'SavedSearchDto(id: $id, title: $title, query: $query, frequency: $frequency, isActive: $isActive, newListingsCount: $newListingsCount, lastNotifiedAt: $lastNotifiedAt, lastViewedAt: $lastViewedAt, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $SavedSearchDtoCopyWith<$Res>  {
  factory $SavedSearchDtoCopyWith(SavedSearchDto value, $Res Function(SavedSearchDto) _then) = _$SavedSearchDtoCopyWithImpl;
@useResult
$Res call({
 int id, String title, Map<String, dynamic> query, String? frequency,@JsonKey(name: 'is_active') bool isActive,@JsonKey(name: 'new_listings_count') int newListingsCount,@JsonKey(name: 'last_notified_at') String? lastNotifiedAt,@JsonKey(name: 'last_viewed_at') String? lastViewedAt,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt
});




}
/// @nodoc
class _$SavedSearchDtoCopyWithImpl<$Res>
    implements $SavedSearchDtoCopyWith<$Res> {
  _$SavedSearchDtoCopyWithImpl(this._self, this._then);

  final SavedSearchDto _self;
  final $Res Function(SavedSearchDto) _then;

/// Create a copy of SavedSearchDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? query = null,Object? frequency = freezed,Object? isActive = null,Object? newListingsCount = null,Object? lastNotifiedAt = freezed,Object? lastViewedAt = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,frequency: freezed == frequency ? _self.frequency : frequency // ignore: cast_nullable_to_non_nullable
as String?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,newListingsCount: null == newListingsCount ? _self.newListingsCount : newListingsCount // ignore: cast_nullable_to_non_nullable
as int,lastNotifiedAt: freezed == lastNotifiedAt ? _self.lastNotifiedAt : lastNotifiedAt // ignore: cast_nullable_to_non_nullable
as String?,lastViewedAt: freezed == lastViewedAt ? _self.lastViewedAt : lastViewedAt // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SavedSearchDto].
extension SavedSearchDtoPatterns on SavedSearchDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SavedSearchDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SavedSearchDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SavedSearchDto value)  $default,){
final _that = this;
switch (_that) {
case _SavedSearchDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SavedSearchDto value)?  $default,){
final _that = this;
switch (_that) {
case _SavedSearchDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String title,  Map<String, dynamic> query,  String? frequency, @JsonKey(name: 'is_active')  bool isActive, @JsonKey(name: 'new_listings_count')  int newListingsCount, @JsonKey(name: 'last_notified_at')  String? lastNotifiedAt, @JsonKey(name: 'last_viewed_at')  String? lastViewedAt, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SavedSearchDto() when $default != null:
return $default(_that.id,_that.title,_that.query,_that.frequency,_that.isActive,_that.newListingsCount,_that.lastNotifiedAt,_that.lastViewedAt,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String title,  Map<String, dynamic> query,  String? frequency, @JsonKey(name: 'is_active')  bool isActive, @JsonKey(name: 'new_listings_count')  int newListingsCount, @JsonKey(name: 'last_notified_at')  String? lastNotifiedAt, @JsonKey(name: 'last_viewed_at')  String? lastViewedAt, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _SavedSearchDto():
return $default(_that.id,_that.title,_that.query,_that.frequency,_that.isActive,_that.newListingsCount,_that.lastNotifiedAt,_that.lastViewedAt,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String title,  Map<String, dynamic> query,  String? frequency, @JsonKey(name: 'is_active')  bool isActive, @JsonKey(name: 'new_listings_count')  int newListingsCount, @JsonKey(name: 'last_notified_at')  String? lastNotifiedAt, @JsonKey(name: 'last_viewed_at')  String? lastViewedAt, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'updated_at')  String? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _SavedSearchDto() when $default != null:
return $default(_that.id,_that.title,_that.query,_that.frequency,_that.isActive,_that.newListingsCount,_that.lastNotifiedAt,_that.lastViewedAt,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SavedSearchDto implements SavedSearchDto {
  const _SavedSearchDto({required this.id, required this.title, required final  Map<String, dynamic> query, this.frequency, @JsonKey(name: 'is_active') this.isActive = true, @JsonKey(name: 'new_listings_count') this.newListingsCount = 0, @JsonKey(name: 'last_notified_at') this.lastNotifiedAt, @JsonKey(name: 'last_viewed_at') this.lastViewedAt, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'updated_at') this.updatedAt}): _query = query;
  factory _SavedSearchDto.fromJson(Map<String, dynamic> json) => _$SavedSearchDtoFromJson(json);

@override final  int id;
@override final  String title;
 final  Map<String, dynamic> _query;
@override Map<String, dynamic> get query {
  if (_query is EqualUnmodifiableMapView) return _query;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_query);
}

@override final  String? frequency;
// 'instant', 'daily'
@override@JsonKey(name: 'is_active') final  bool isActive;
@override@JsonKey(name: 'new_listings_count') final  int newListingsCount;
@override@JsonKey(name: 'last_notified_at') final  String? lastNotifiedAt;
@override@JsonKey(name: 'last_viewed_at') final  String? lastViewedAt;
@override@JsonKey(name: 'created_at') final  String? createdAt;
@override@JsonKey(name: 'updated_at') final  String? updatedAt;

/// Create a copy of SavedSearchDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SavedSearchDtoCopyWith<_SavedSearchDto> get copyWith => __$SavedSearchDtoCopyWithImpl<_SavedSearchDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SavedSearchDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SavedSearchDto&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other._query, _query)&&(identical(other.frequency, frequency) || other.frequency == frequency)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.newListingsCount, newListingsCount) || other.newListingsCount == newListingsCount)&&(identical(other.lastNotifiedAt, lastNotifiedAt) || other.lastNotifiedAt == lastNotifiedAt)&&(identical(other.lastViewedAt, lastViewedAt) || other.lastViewedAt == lastViewedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,const DeepCollectionEquality().hash(_query),frequency,isActive,newListingsCount,lastNotifiedAt,lastViewedAt,createdAt,updatedAt);

@override
String toString() {
  return 'SavedSearchDto(id: $id, title: $title, query: $query, frequency: $frequency, isActive: $isActive, newListingsCount: $newListingsCount, lastNotifiedAt: $lastNotifiedAt, lastViewedAt: $lastViewedAt, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$SavedSearchDtoCopyWith<$Res> implements $SavedSearchDtoCopyWith<$Res> {
  factory _$SavedSearchDtoCopyWith(_SavedSearchDto value, $Res Function(_SavedSearchDto) _then) = __$SavedSearchDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, String title, Map<String, dynamic> query, String? frequency,@JsonKey(name: 'is_active') bool isActive,@JsonKey(name: 'new_listings_count') int newListingsCount,@JsonKey(name: 'last_notified_at') String? lastNotifiedAt,@JsonKey(name: 'last_viewed_at') String? lastViewedAt,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'updated_at') String? updatedAt
});




}
/// @nodoc
class __$SavedSearchDtoCopyWithImpl<$Res>
    implements _$SavedSearchDtoCopyWith<$Res> {
  __$SavedSearchDtoCopyWithImpl(this._self, this._then);

  final _SavedSearchDto _self;
  final $Res Function(_SavedSearchDto) _then;

/// Create a copy of SavedSearchDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? query = null,Object? frequency = freezed,Object? isActive = null,Object? newListingsCount = null,Object? lastNotifiedAt = freezed,Object? lastViewedAt = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_SavedSearchDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,query: null == query ? _self._query : query // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,frequency: freezed == frequency ? _self.frequency : frequency // ignore: cast_nullable_to_non_nullable
as String?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,newListingsCount: null == newListingsCount ? _self.newListingsCount : newListingsCount // ignore: cast_nullable_to_non_nullable
as int,lastNotifiedAt: freezed == lastNotifiedAt ? _self.lastNotifiedAt : lastNotifiedAt // ignore: cast_nullable_to_non_nullable
as String?,lastViewedAt: freezed == lastViewedAt ? _self.lastViewedAt : lastViewedAt // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$CreateSavedSearchRequestDto {

 String get title; Map<String, dynamic> get query; String? get frequency;
/// Create a copy of CreateSavedSearchRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateSavedSearchRequestDtoCopyWith<CreateSavedSearchRequestDto> get copyWith => _$CreateSavedSearchRequestDtoCopyWithImpl<CreateSavedSearchRequestDto>(this as CreateSavedSearchRequestDto, _$identity);

  /// Serializes this CreateSavedSearchRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateSavedSearchRequestDto&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other.query, query)&&(identical(other.frequency, frequency) || other.frequency == frequency));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,const DeepCollectionEquality().hash(query),frequency);

@override
String toString() {
  return 'CreateSavedSearchRequestDto(title: $title, query: $query, frequency: $frequency)';
}


}

/// @nodoc
abstract mixin class $CreateSavedSearchRequestDtoCopyWith<$Res>  {
  factory $CreateSavedSearchRequestDtoCopyWith(CreateSavedSearchRequestDto value, $Res Function(CreateSavedSearchRequestDto) _then) = _$CreateSavedSearchRequestDtoCopyWithImpl;
@useResult
$Res call({
 String title, Map<String, dynamic> query, String? frequency
});




}
/// @nodoc
class _$CreateSavedSearchRequestDtoCopyWithImpl<$Res>
    implements $CreateSavedSearchRequestDtoCopyWith<$Res> {
  _$CreateSavedSearchRequestDtoCopyWithImpl(this._self, this._then);

  final CreateSavedSearchRequestDto _self;
  final $Res Function(CreateSavedSearchRequestDto) _then;

/// Create a copy of CreateSavedSearchRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? query = null,Object? frequency = freezed,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,frequency: freezed == frequency ? _self.frequency : frequency // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateSavedSearchRequestDto].
extension CreateSavedSearchRequestDtoPatterns on CreateSavedSearchRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateSavedSearchRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateSavedSearchRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateSavedSearchRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _CreateSavedSearchRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateSavedSearchRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _CreateSavedSearchRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  Map<String, dynamic> query,  String? frequency)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateSavedSearchRequestDto() when $default != null:
return $default(_that.title,_that.query,_that.frequency);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  Map<String, dynamic> query,  String? frequency)  $default,) {final _that = this;
switch (_that) {
case _CreateSavedSearchRequestDto():
return $default(_that.title,_that.query,_that.frequency);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  Map<String, dynamic> query,  String? frequency)?  $default,) {final _that = this;
switch (_that) {
case _CreateSavedSearchRequestDto() when $default != null:
return $default(_that.title,_that.query,_that.frequency);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateSavedSearchRequestDto implements CreateSavedSearchRequestDto {
  const _CreateSavedSearchRequestDto({required this.title, required final  Map<String, dynamic> query, this.frequency}): _query = query;
  factory _CreateSavedSearchRequestDto.fromJson(Map<String, dynamic> json) => _$CreateSavedSearchRequestDtoFromJson(json);

@override final  String title;
 final  Map<String, dynamic> _query;
@override Map<String, dynamic> get query {
  if (_query is EqualUnmodifiableMapView) return _query;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_query);
}

@override final  String? frequency;

/// Create a copy of CreateSavedSearchRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateSavedSearchRequestDtoCopyWith<_CreateSavedSearchRequestDto> get copyWith => __$CreateSavedSearchRequestDtoCopyWithImpl<_CreateSavedSearchRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateSavedSearchRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateSavedSearchRequestDto&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other._query, _query)&&(identical(other.frequency, frequency) || other.frequency == frequency));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,const DeepCollectionEquality().hash(_query),frequency);

@override
String toString() {
  return 'CreateSavedSearchRequestDto(title: $title, query: $query, frequency: $frequency)';
}


}

/// @nodoc
abstract mixin class _$CreateSavedSearchRequestDtoCopyWith<$Res> implements $CreateSavedSearchRequestDtoCopyWith<$Res> {
  factory _$CreateSavedSearchRequestDtoCopyWith(_CreateSavedSearchRequestDto value, $Res Function(_CreateSavedSearchRequestDto) _then) = __$CreateSavedSearchRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String title, Map<String, dynamic> query, String? frequency
});




}
/// @nodoc
class __$CreateSavedSearchRequestDtoCopyWithImpl<$Res>
    implements _$CreateSavedSearchRequestDtoCopyWith<$Res> {
  __$CreateSavedSearchRequestDtoCopyWithImpl(this._self, this._then);

  final _CreateSavedSearchRequestDto _self;
  final $Res Function(_CreateSavedSearchRequestDto) _then;

/// Create a copy of CreateSavedSearchRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? query = null,Object? frequency = freezed,}) {
  return _then(_CreateSavedSearchRequestDto(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,query: null == query ? _self._query : query // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,frequency: freezed == frequency ? _self.frequency : frequency // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$UpdateSavedSearchRequestDto {

 String? get title; Map<String, dynamic>? get query; String? get frequency;@JsonKey(name: 'is_active') bool? get isActive;
/// Create a copy of UpdateSavedSearchRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateSavedSearchRequestDtoCopyWith<UpdateSavedSearchRequestDto> get copyWith => _$UpdateSavedSearchRequestDtoCopyWithImpl<UpdateSavedSearchRequestDto>(this as UpdateSavedSearchRequestDto, _$identity);

  /// Serializes this UpdateSavedSearchRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateSavedSearchRequestDto&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other.query, query)&&(identical(other.frequency, frequency) || other.frequency == frequency)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,const DeepCollectionEquality().hash(query),frequency,isActive);

@override
String toString() {
  return 'UpdateSavedSearchRequestDto(title: $title, query: $query, frequency: $frequency, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class $UpdateSavedSearchRequestDtoCopyWith<$Res>  {
  factory $UpdateSavedSearchRequestDtoCopyWith(UpdateSavedSearchRequestDto value, $Res Function(UpdateSavedSearchRequestDto) _then) = _$UpdateSavedSearchRequestDtoCopyWithImpl;
@useResult
$Res call({
 String? title, Map<String, dynamic>? query, String? frequency,@JsonKey(name: 'is_active') bool? isActive
});




}
/// @nodoc
class _$UpdateSavedSearchRequestDtoCopyWithImpl<$Res>
    implements $UpdateSavedSearchRequestDtoCopyWith<$Res> {
  _$UpdateSavedSearchRequestDtoCopyWithImpl(this._self, this._then);

  final UpdateSavedSearchRequestDto _self;
  final $Res Function(UpdateSavedSearchRequestDto) _then;

/// Create a copy of UpdateSavedSearchRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = freezed,Object? query = freezed,Object? frequency = freezed,Object? isActive = freezed,}) {
  return _then(_self.copyWith(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,query: freezed == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,frequency: freezed == frequency ? _self.frequency : frequency // ignore: cast_nullable_to_non_nullable
as String?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateSavedSearchRequestDto].
extension UpdateSavedSearchRequestDtoPatterns on UpdateSavedSearchRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateSavedSearchRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateSavedSearchRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateSavedSearchRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _UpdateSavedSearchRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateSavedSearchRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateSavedSearchRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? title,  Map<String, dynamic>? query,  String? frequency, @JsonKey(name: 'is_active')  bool? isActive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateSavedSearchRequestDto() when $default != null:
return $default(_that.title,_that.query,_that.frequency,_that.isActive);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? title,  Map<String, dynamic>? query,  String? frequency, @JsonKey(name: 'is_active')  bool? isActive)  $default,) {final _that = this;
switch (_that) {
case _UpdateSavedSearchRequestDto():
return $default(_that.title,_that.query,_that.frequency,_that.isActive);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? title,  Map<String, dynamic>? query,  String? frequency, @JsonKey(name: 'is_active')  bool? isActive)?  $default,) {final _that = this;
switch (_that) {
case _UpdateSavedSearchRequestDto() when $default != null:
return $default(_that.title,_that.query,_that.frequency,_that.isActive);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UpdateSavedSearchRequestDto implements UpdateSavedSearchRequestDto {
  const _UpdateSavedSearchRequestDto({this.title, final  Map<String, dynamic>? query, this.frequency, @JsonKey(name: 'is_active') this.isActive}): _query = query;
  factory _UpdateSavedSearchRequestDto.fromJson(Map<String, dynamic> json) => _$UpdateSavedSearchRequestDtoFromJson(json);

@override final  String? title;
 final  Map<String, dynamic>? _query;
@override Map<String, dynamic>? get query {
  final value = _query;
  if (value == null) return null;
  if (_query is EqualUnmodifiableMapView) return _query;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override final  String? frequency;
@override@JsonKey(name: 'is_active') final  bool? isActive;

/// Create a copy of UpdateSavedSearchRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateSavedSearchRequestDtoCopyWith<_UpdateSavedSearchRequestDto> get copyWith => __$UpdateSavedSearchRequestDtoCopyWithImpl<_UpdateSavedSearchRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UpdateSavedSearchRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateSavedSearchRequestDto&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other._query, _query)&&(identical(other.frequency, frequency) || other.frequency == frequency)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,const DeepCollectionEquality().hash(_query),frequency,isActive);

@override
String toString() {
  return 'UpdateSavedSearchRequestDto(title: $title, query: $query, frequency: $frequency, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class _$UpdateSavedSearchRequestDtoCopyWith<$Res> implements $UpdateSavedSearchRequestDtoCopyWith<$Res> {
  factory _$UpdateSavedSearchRequestDtoCopyWith(_UpdateSavedSearchRequestDto value, $Res Function(_UpdateSavedSearchRequestDto) _then) = __$UpdateSavedSearchRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 String? title, Map<String, dynamic>? query, String? frequency,@JsonKey(name: 'is_active') bool? isActive
});




}
/// @nodoc
class __$UpdateSavedSearchRequestDtoCopyWithImpl<$Res>
    implements _$UpdateSavedSearchRequestDtoCopyWith<$Res> {
  __$UpdateSavedSearchRequestDtoCopyWithImpl(this._self, this._then);

  final _UpdateSavedSearchRequestDto _self;
  final $Res Function(_UpdateSavedSearchRequestDto) _then;

/// Create a copy of UpdateSavedSearchRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = freezed,Object? query = freezed,Object? frequency = freezed,Object? isActive = freezed,}) {
  return _then(_UpdateSavedSearchRequestDto(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,query: freezed == query ? _self._query : query // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,frequency: freezed == frequency ? _self.frequency : frequency // ignore: cast_nullable_to_non_nullable
as String?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
