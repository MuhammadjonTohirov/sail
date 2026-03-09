// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'saved_search.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SavedSearch {

 int get id; String get title; Map<String, dynamic> get query; String? get frequency;// 'instant', 'daily'
 bool get isActive; int get newListingsCount; DateTime? get lastNotifiedAt; DateTime? get lastViewedAt; DateTime? get createdAt; DateTime? get updatedAt;
/// Create a copy of SavedSearch
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SavedSearchCopyWith<SavedSearch> get copyWith => _$SavedSearchCopyWithImpl<SavedSearch>(this as SavedSearch, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SavedSearch&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other.query, query)&&(identical(other.frequency, frequency) || other.frequency == frequency)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.newListingsCount, newListingsCount) || other.newListingsCount == newListingsCount)&&(identical(other.lastNotifiedAt, lastNotifiedAt) || other.lastNotifiedAt == lastNotifiedAt)&&(identical(other.lastViewedAt, lastViewedAt) || other.lastViewedAt == lastViewedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,const DeepCollectionEquality().hash(query),frequency,isActive,newListingsCount,lastNotifiedAt,lastViewedAt,createdAt,updatedAt);

@override
String toString() {
  return 'SavedSearch(id: $id, title: $title, query: $query, frequency: $frequency, isActive: $isActive, newListingsCount: $newListingsCount, lastNotifiedAt: $lastNotifiedAt, lastViewedAt: $lastViewedAt, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $SavedSearchCopyWith<$Res>  {
  factory $SavedSearchCopyWith(SavedSearch value, $Res Function(SavedSearch) _then) = _$SavedSearchCopyWithImpl;
@useResult
$Res call({
 int id, String title, Map<String, dynamic> query, String? frequency, bool isActive, int newListingsCount, DateTime? lastNotifiedAt, DateTime? lastViewedAt, DateTime? createdAt, DateTime? updatedAt
});




}
/// @nodoc
class _$SavedSearchCopyWithImpl<$Res>
    implements $SavedSearchCopyWith<$Res> {
  _$SavedSearchCopyWithImpl(this._self, this._then);

  final SavedSearch _self;
  final $Res Function(SavedSearch) _then;

/// Create a copy of SavedSearch
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
as DateTime?,lastViewedAt: freezed == lastViewedAt ? _self.lastViewedAt : lastViewedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [SavedSearch].
extension SavedSearchPatterns on SavedSearch {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SavedSearch value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SavedSearch() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SavedSearch value)  $default,){
final _that = this;
switch (_that) {
case _SavedSearch():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SavedSearch value)?  $default,){
final _that = this;
switch (_that) {
case _SavedSearch() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String title,  Map<String, dynamic> query,  String? frequency,  bool isActive,  int newListingsCount,  DateTime? lastNotifiedAt,  DateTime? lastViewedAt,  DateTime? createdAt,  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SavedSearch() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String title,  Map<String, dynamic> query,  String? frequency,  bool isActive,  int newListingsCount,  DateTime? lastNotifiedAt,  DateTime? lastViewedAt,  DateTime? createdAt,  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _SavedSearch():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String title,  Map<String, dynamic> query,  String? frequency,  bool isActive,  int newListingsCount,  DateTime? lastNotifiedAt,  DateTime? lastViewedAt,  DateTime? createdAt,  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _SavedSearch() when $default != null:
return $default(_that.id,_that.title,_that.query,_that.frequency,_that.isActive,_that.newListingsCount,_that.lastNotifiedAt,_that.lastViewedAt,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc


class _SavedSearch implements SavedSearch {
  const _SavedSearch({required this.id, required this.title, required final  Map<String, dynamic> query, this.frequency, this.isActive = true, this.newListingsCount = 0, this.lastNotifiedAt, this.lastViewedAt, this.createdAt, this.updatedAt}): _query = query;
  

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
@override@JsonKey() final  bool isActive;
@override@JsonKey() final  int newListingsCount;
@override final  DateTime? lastNotifiedAt;
@override final  DateTime? lastViewedAt;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;

/// Create a copy of SavedSearch
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SavedSearchCopyWith<_SavedSearch> get copyWith => __$SavedSearchCopyWithImpl<_SavedSearch>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SavedSearch&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other._query, _query)&&(identical(other.frequency, frequency) || other.frequency == frequency)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.newListingsCount, newListingsCount) || other.newListingsCount == newListingsCount)&&(identical(other.lastNotifiedAt, lastNotifiedAt) || other.lastNotifiedAt == lastNotifiedAt)&&(identical(other.lastViewedAt, lastViewedAt) || other.lastViewedAt == lastViewedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,const DeepCollectionEquality().hash(_query),frequency,isActive,newListingsCount,lastNotifiedAt,lastViewedAt,createdAt,updatedAt);

@override
String toString() {
  return 'SavedSearch(id: $id, title: $title, query: $query, frequency: $frequency, isActive: $isActive, newListingsCount: $newListingsCount, lastNotifiedAt: $lastNotifiedAt, lastViewedAt: $lastViewedAt, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$SavedSearchCopyWith<$Res> implements $SavedSearchCopyWith<$Res> {
  factory _$SavedSearchCopyWith(_SavedSearch value, $Res Function(_SavedSearch) _then) = __$SavedSearchCopyWithImpl;
@override @useResult
$Res call({
 int id, String title, Map<String, dynamic> query, String? frequency, bool isActive, int newListingsCount, DateTime? lastNotifiedAt, DateTime? lastViewedAt, DateTime? createdAt, DateTime? updatedAt
});




}
/// @nodoc
class __$SavedSearchCopyWithImpl<$Res>
    implements _$SavedSearchCopyWith<$Res> {
  __$SavedSearchCopyWithImpl(this._self, this._then);

  final _SavedSearch _self;
  final $Res Function(_SavedSearch) _then;

/// Create a copy of SavedSearch
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? query = null,Object? frequency = freezed,Object? isActive = null,Object? newListingsCount = null,Object? lastNotifiedAt = freezed,Object? lastViewedAt = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_SavedSearch(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,query: null == query ? _self._query : query // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,frequency: freezed == frequency ? _self.frequency : frequency // ignore: cast_nullable_to_non_nullable
as String?,isActive: null == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool,newListingsCount: null == newListingsCount ? _self.newListingsCount : newListingsCount // ignore: cast_nullable_to_non_nullable
as int,lastNotifiedAt: freezed == lastNotifiedAt ? _self.lastNotifiedAt : lastNotifiedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,lastViewedAt: freezed == lastViewedAt ? _self.lastViewedAt : lastViewedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

/// @nodoc
mixin _$SavedSearchPayload {

 String get title; Map<String, dynamic> get query; String? get frequency; bool? get isActive;
/// Create a copy of SavedSearchPayload
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SavedSearchPayloadCopyWith<SavedSearchPayload> get copyWith => _$SavedSearchPayloadCopyWithImpl<SavedSearchPayload>(this as SavedSearchPayload, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SavedSearchPayload&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other.query, query)&&(identical(other.frequency, frequency) || other.frequency == frequency)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}


@override
int get hashCode => Object.hash(runtimeType,title,const DeepCollectionEquality().hash(query),frequency,isActive);

@override
String toString() {
  return 'SavedSearchPayload(title: $title, query: $query, frequency: $frequency, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class $SavedSearchPayloadCopyWith<$Res>  {
  factory $SavedSearchPayloadCopyWith(SavedSearchPayload value, $Res Function(SavedSearchPayload) _then) = _$SavedSearchPayloadCopyWithImpl;
@useResult
$Res call({
 String title, Map<String, dynamic> query, String? frequency, bool? isActive
});




}
/// @nodoc
class _$SavedSearchPayloadCopyWithImpl<$Res>
    implements $SavedSearchPayloadCopyWith<$Res> {
  _$SavedSearchPayloadCopyWithImpl(this._self, this._then);

  final SavedSearchPayload _self;
  final $Res Function(SavedSearchPayload) _then;

/// Create a copy of SavedSearchPayload
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? query = null,Object? frequency = freezed,Object? isActive = freezed,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,frequency: freezed == frequency ? _self.frequency : frequency // ignore: cast_nullable_to_non_nullable
as String?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [SavedSearchPayload].
extension SavedSearchPayloadPatterns on SavedSearchPayload {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SavedSearchPayload value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SavedSearchPayload() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SavedSearchPayload value)  $default,){
final _that = this;
switch (_that) {
case _SavedSearchPayload():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SavedSearchPayload value)?  $default,){
final _that = this;
switch (_that) {
case _SavedSearchPayload() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  Map<String, dynamic> query,  String? frequency,  bool? isActive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SavedSearchPayload() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  Map<String, dynamic> query,  String? frequency,  bool? isActive)  $default,) {final _that = this;
switch (_that) {
case _SavedSearchPayload():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  Map<String, dynamic> query,  String? frequency,  bool? isActive)?  $default,) {final _that = this;
switch (_that) {
case _SavedSearchPayload() when $default != null:
return $default(_that.title,_that.query,_that.frequency,_that.isActive);case _:
  return null;

}
}

}

/// @nodoc


class _SavedSearchPayload implements SavedSearchPayload {
  const _SavedSearchPayload({required this.title, required final  Map<String, dynamic> query, this.frequency, this.isActive}): _query = query;
  

@override final  String title;
 final  Map<String, dynamic> _query;
@override Map<String, dynamic> get query {
  if (_query is EqualUnmodifiableMapView) return _query;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_query);
}

@override final  String? frequency;
@override final  bool? isActive;

/// Create a copy of SavedSearchPayload
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SavedSearchPayloadCopyWith<_SavedSearchPayload> get copyWith => __$SavedSearchPayloadCopyWithImpl<_SavedSearchPayload>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SavedSearchPayload&&(identical(other.title, title) || other.title == title)&&const DeepCollectionEquality().equals(other._query, _query)&&(identical(other.frequency, frequency) || other.frequency == frequency)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}


@override
int get hashCode => Object.hash(runtimeType,title,const DeepCollectionEquality().hash(_query),frequency,isActive);

@override
String toString() {
  return 'SavedSearchPayload(title: $title, query: $query, frequency: $frequency, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class _$SavedSearchPayloadCopyWith<$Res> implements $SavedSearchPayloadCopyWith<$Res> {
  factory _$SavedSearchPayloadCopyWith(_SavedSearchPayload value, $Res Function(_SavedSearchPayload) _then) = __$SavedSearchPayloadCopyWithImpl;
@override @useResult
$Res call({
 String title, Map<String, dynamic> query, String? frequency, bool? isActive
});




}
/// @nodoc
class __$SavedSearchPayloadCopyWithImpl<$Res>
    implements _$SavedSearchPayloadCopyWith<$Res> {
  __$SavedSearchPayloadCopyWithImpl(this._self, this._then);

  final _SavedSearchPayload _self;
  final $Res Function(_SavedSearchPayload) _then;

/// Create a copy of SavedSearchPayload
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? query = null,Object? frequency = freezed,Object? isActive = freezed,}) {
  return _then(_SavedSearchPayload(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,query: null == query ? _self._query : query // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,frequency: freezed == frequency ? _self.frequency : frequency // ignore: cast_nullable_to_non_nullable
as String?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
