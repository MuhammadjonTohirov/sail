// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ReportReason {

 String get code; String get label; String? get description;
/// Create a copy of ReportReason
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReportReasonCopyWith<ReportReason> get copyWith => _$ReportReasonCopyWithImpl<ReportReason>(this as ReportReason, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportReason&&(identical(other.code, code) || other.code == code)&&(identical(other.label, label) || other.label == label)&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,code,label,description);

@override
String toString() {
  return 'ReportReason(code: $code, label: $label, description: $description)';
}


}

/// @nodoc
abstract mixin class $ReportReasonCopyWith<$Res>  {
  factory $ReportReasonCopyWith(ReportReason value, $Res Function(ReportReason) _then) = _$ReportReasonCopyWithImpl;
@useResult
$Res call({
 String code, String label, String? description
});




}
/// @nodoc
class _$ReportReasonCopyWithImpl<$Res>
    implements $ReportReasonCopyWith<$Res> {
  _$ReportReasonCopyWithImpl(this._self, this._then);

  final ReportReason _self;
  final $Res Function(ReportReason) _then;

/// Create a copy of ReportReason
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = null,Object? label = null,Object? description = freezed,}) {
  return _then(_self.copyWith(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReportReason].
extension ReportReasonPatterns on ReportReason {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReportReason value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReportReason() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReportReason value)  $default,){
final _that = this;
switch (_that) {
case _ReportReason():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReportReason value)?  $default,){
final _that = this;
switch (_that) {
case _ReportReason() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String code,  String label,  String? description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReportReason() when $default != null:
return $default(_that.code,_that.label,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String code,  String label,  String? description)  $default,) {final _that = this;
switch (_that) {
case _ReportReason():
return $default(_that.code,_that.label,_that.description);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String code,  String label,  String? description)?  $default,) {final _that = this;
switch (_that) {
case _ReportReason() when $default != null:
return $default(_that.code,_that.label,_that.description);case _:
  return null;

}
}

}

/// @nodoc


class _ReportReason implements ReportReason {
  const _ReportReason({required this.code, required this.label, this.description});
  

@override final  String code;
@override final  String label;
@override final  String? description;

/// Create a copy of ReportReason
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReportReasonCopyWith<_ReportReason> get copyWith => __$ReportReasonCopyWithImpl<_ReportReason>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReportReason&&(identical(other.code, code) || other.code == code)&&(identical(other.label, label) || other.label == label)&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,code,label,description);

@override
String toString() {
  return 'ReportReason(code: $code, label: $label, description: $description)';
}


}

/// @nodoc
abstract mixin class _$ReportReasonCopyWith<$Res> implements $ReportReasonCopyWith<$Res> {
  factory _$ReportReasonCopyWith(_ReportReason value, $Res Function(_ReportReason) _then) = __$ReportReasonCopyWithImpl;
@override @useResult
$Res call({
 String code, String label, String? description
});




}
/// @nodoc
class __$ReportReasonCopyWithImpl<$Res>
    implements _$ReportReasonCopyWith<$Res> {
  __$ReportReasonCopyWithImpl(this._self, this._then);

  final _ReportReason _self;
  final $Res Function(_ReportReason) _then;

/// Create a copy of ReportReason
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? label = null,Object? description = freezed,}) {
  return _then(_ReportReason(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$ReportPayload {

 int get listingId; String get reasonCode; String? get notes;
/// Create a copy of ReportPayload
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReportPayloadCopyWith<ReportPayload> get copyWith => _$ReportPayloadCopyWithImpl<ReportPayload>(this as ReportPayload, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportPayload&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.reasonCode, reasonCode) || other.reasonCode == reasonCode)&&(identical(other.notes, notes) || other.notes == notes));
}


@override
int get hashCode => Object.hash(runtimeType,listingId,reasonCode,notes);

@override
String toString() {
  return 'ReportPayload(listingId: $listingId, reasonCode: $reasonCode, notes: $notes)';
}


}

/// @nodoc
abstract mixin class $ReportPayloadCopyWith<$Res>  {
  factory $ReportPayloadCopyWith(ReportPayload value, $Res Function(ReportPayload) _then) = _$ReportPayloadCopyWithImpl;
@useResult
$Res call({
 int listingId, String reasonCode, String? notes
});




}
/// @nodoc
class _$ReportPayloadCopyWithImpl<$Res>
    implements $ReportPayloadCopyWith<$Res> {
  _$ReportPayloadCopyWithImpl(this._self, this._then);

  final ReportPayload _self;
  final $Res Function(ReportPayload) _then;

/// Create a copy of ReportPayload
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? listingId = null,Object? reasonCode = null,Object? notes = freezed,}) {
  return _then(_self.copyWith(
listingId: null == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as int,reasonCode: null == reasonCode ? _self.reasonCode : reasonCode // ignore: cast_nullable_to_non_nullable
as String,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReportPayload].
extension ReportPayloadPatterns on ReportPayload {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReportPayload value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReportPayload() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReportPayload value)  $default,){
final _that = this;
switch (_that) {
case _ReportPayload():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReportPayload value)?  $default,){
final _that = this;
switch (_that) {
case _ReportPayload() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int listingId,  String reasonCode,  String? notes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReportPayload() when $default != null:
return $default(_that.listingId,_that.reasonCode,_that.notes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int listingId,  String reasonCode,  String? notes)  $default,) {final _that = this;
switch (_that) {
case _ReportPayload():
return $default(_that.listingId,_that.reasonCode,_that.notes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int listingId,  String reasonCode,  String? notes)?  $default,) {final _that = this;
switch (_that) {
case _ReportPayload() when $default != null:
return $default(_that.listingId,_that.reasonCode,_that.notes);case _:
  return null;

}
}

}

/// @nodoc


class _ReportPayload implements ReportPayload {
  const _ReportPayload({required this.listingId, required this.reasonCode, this.notes});
  

@override final  int listingId;
@override final  String reasonCode;
@override final  String? notes;

/// Create a copy of ReportPayload
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReportPayloadCopyWith<_ReportPayload> get copyWith => __$ReportPayloadCopyWithImpl<_ReportPayload>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReportPayload&&(identical(other.listingId, listingId) || other.listingId == listingId)&&(identical(other.reasonCode, reasonCode) || other.reasonCode == reasonCode)&&(identical(other.notes, notes) || other.notes == notes));
}


@override
int get hashCode => Object.hash(runtimeType,listingId,reasonCode,notes);

@override
String toString() {
  return 'ReportPayload(listingId: $listingId, reasonCode: $reasonCode, notes: $notes)';
}


}

/// @nodoc
abstract mixin class _$ReportPayloadCopyWith<$Res> implements $ReportPayloadCopyWith<$Res> {
  factory _$ReportPayloadCopyWith(_ReportPayload value, $Res Function(_ReportPayload) _then) = __$ReportPayloadCopyWithImpl;
@override @useResult
$Res call({
 int listingId, String reasonCode, String? notes
});




}
/// @nodoc
class __$ReportPayloadCopyWithImpl<$Res>
    implements _$ReportPayloadCopyWith<$Res> {
  __$ReportPayloadCopyWithImpl(this._self, this._then);

  final _ReportPayload _self;
  final $Res Function(_ReportPayload) _then;

/// Create a copy of ReportPayload
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? listingId = null,Object? reasonCode = null,Object? notes = freezed,}) {
  return _then(_ReportPayload(
listingId: null == listingId ? _self.listingId : listingId // ignore: cast_nullable_to_non_nullable
as int,reasonCode: null == reasonCode ? _self.reasonCode : reasonCode // ignore: cast_nullable_to_non_nullable
as String,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
