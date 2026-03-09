// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'moderation_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReportReasonDto {

 String get code; String get label; String? get description;
/// Create a copy of ReportReasonDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReportReasonDtoCopyWith<ReportReasonDto> get copyWith => _$ReportReasonDtoCopyWithImpl<ReportReasonDto>(this as ReportReasonDto, _$identity);

  /// Serializes this ReportReasonDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportReasonDto&&(identical(other.code, code) || other.code == code)&&(identical(other.label, label) || other.label == label)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,label,description);

@override
String toString() {
  return 'ReportReasonDto(code: $code, label: $label, description: $description)';
}


}

/// @nodoc
abstract mixin class $ReportReasonDtoCopyWith<$Res>  {
  factory $ReportReasonDtoCopyWith(ReportReasonDto value, $Res Function(ReportReasonDto) _then) = _$ReportReasonDtoCopyWithImpl;
@useResult
$Res call({
 String code, String label, String? description
});




}
/// @nodoc
class _$ReportReasonDtoCopyWithImpl<$Res>
    implements $ReportReasonDtoCopyWith<$Res> {
  _$ReportReasonDtoCopyWithImpl(this._self, this._then);

  final ReportReasonDto _self;
  final $Res Function(ReportReasonDto) _then;

/// Create a copy of ReportReasonDto
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


/// Adds pattern-matching-related methods to [ReportReasonDto].
extension ReportReasonDtoPatterns on ReportReasonDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReportReasonDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReportReasonDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReportReasonDto value)  $default,){
final _that = this;
switch (_that) {
case _ReportReasonDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReportReasonDto value)?  $default,){
final _that = this;
switch (_that) {
case _ReportReasonDto() when $default != null:
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
case _ReportReasonDto() when $default != null:
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
case _ReportReasonDto():
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
case _ReportReasonDto() when $default != null:
return $default(_that.code,_that.label,_that.description);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReportReasonDto implements ReportReasonDto {
  const _ReportReasonDto({required this.code, required this.label, this.description});
  factory _ReportReasonDto.fromJson(Map<String, dynamic> json) => _$ReportReasonDtoFromJson(json);

@override final  String code;
@override final  String label;
@override final  String? description;

/// Create a copy of ReportReasonDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReportReasonDtoCopyWith<_ReportReasonDto> get copyWith => __$ReportReasonDtoCopyWithImpl<_ReportReasonDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReportReasonDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReportReasonDto&&(identical(other.code, code) || other.code == code)&&(identical(other.label, label) || other.label == label)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,code,label,description);

@override
String toString() {
  return 'ReportReasonDto(code: $code, label: $label, description: $description)';
}


}

/// @nodoc
abstract mixin class _$ReportReasonDtoCopyWith<$Res> implements $ReportReasonDtoCopyWith<$Res> {
  factory _$ReportReasonDtoCopyWith(_ReportReasonDto value, $Res Function(_ReportReasonDto) _then) = __$ReportReasonDtoCopyWithImpl;
@override @useResult
$Res call({
 String code, String label, String? description
});




}
/// @nodoc
class __$ReportReasonDtoCopyWithImpl<$Res>
    implements _$ReportReasonDtoCopyWith<$Res> {
  __$ReportReasonDtoCopyWithImpl(this._self, this._then);

  final _ReportReasonDto _self;
  final $Res Function(_ReportReasonDto) _then;

/// Create a copy of ReportReasonDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = null,Object? label = null,Object? description = freezed,}) {
  return _then(_ReportReasonDto(
code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$CreateReportRequestDto {

 int get listing;@JsonKey(name: 'reason_code') String get reasonCode; String? get notes;
/// Create a copy of CreateReportRequestDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateReportRequestDtoCopyWith<CreateReportRequestDto> get copyWith => _$CreateReportRequestDtoCopyWithImpl<CreateReportRequestDto>(this as CreateReportRequestDto, _$identity);

  /// Serializes this CreateReportRequestDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateReportRequestDto&&(identical(other.listing, listing) || other.listing == listing)&&(identical(other.reasonCode, reasonCode) || other.reasonCode == reasonCode)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,listing,reasonCode,notes);

@override
String toString() {
  return 'CreateReportRequestDto(listing: $listing, reasonCode: $reasonCode, notes: $notes)';
}


}

/// @nodoc
abstract mixin class $CreateReportRequestDtoCopyWith<$Res>  {
  factory $CreateReportRequestDtoCopyWith(CreateReportRequestDto value, $Res Function(CreateReportRequestDto) _then) = _$CreateReportRequestDtoCopyWithImpl;
@useResult
$Res call({
 int listing,@JsonKey(name: 'reason_code') String reasonCode, String? notes
});




}
/// @nodoc
class _$CreateReportRequestDtoCopyWithImpl<$Res>
    implements $CreateReportRequestDtoCopyWith<$Res> {
  _$CreateReportRequestDtoCopyWithImpl(this._self, this._then);

  final CreateReportRequestDto _self;
  final $Res Function(CreateReportRequestDto) _then;

/// Create a copy of CreateReportRequestDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? listing = null,Object? reasonCode = null,Object? notes = freezed,}) {
  return _then(_self.copyWith(
listing: null == listing ? _self.listing : listing // ignore: cast_nullable_to_non_nullable
as int,reasonCode: null == reasonCode ? _self.reasonCode : reasonCode // ignore: cast_nullable_to_non_nullable
as String,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CreateReportRequestDto].
extension CreateReportRequestDtoPatterns on CreateReportRequestDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CreateReportRequestDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CreateReportRequestDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CreateReportRequestDto value)  $default,){
final _that = this;
switch (_that) {
case _CreateReportRequestDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CreateReportRequestDto value)?  $default,){
final _that = this;
switch (_that) {
case _CreateReportRequestDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int listing, @JsonKey(name: 'reason_code')  String reasonCode,  String? notes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CreateReportRequestDto() when $default != null:
return $default(_that.listing,_that.reasonCode,_that.notes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int listing, @JsonKey(name: 'reason_code')  String reasonCode,  String? notes)  $default,) {final _that = this;
switch (_that) {
case _CreateReportRequestDto():
return $default(_that.listing,_that.reasonCode,_that.notes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int listing, @JsonKey(name: 'reason_code')  String reasonCode,  String? notes)?  $default,) {final _that = this;
switch (_that) {
case _CreateReportRequestDto() when $default != null:
return $default(_that.listing,_that.reasonCode,_that.notes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CreateReportRequestDto implements CreateReportRequestDto {
  const _CreateReportRequestDto({required this.listing, @JsonKey(name: 'reason_code') required this.reasonCode, this.notes});
  factory _CreateReportRequestDto.fromJson(Map<String, dynamic> json) => _$CreateReportRequestDtoFromJson(json);

@override final  int listing;
@override@JsonKey(name: 'reason_code') final  String reasonCode;
@override final  String? notes;

/// Create a copy of CreateReportRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CreateReportRequestDtoCopyWith<_CreateReportRequestDto> get copyWith => __$CreateReportRequestDtoCopyWithImpl<_CreateReportRequestDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CreateReportRequestDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CreateReportRequestDto&&(identical(other.listing, listing) || other.listing == listing)&&(identical(other.reasonCode, reasonCode) || other.reasonCode == reasonCode)&&(identical(other.notes, notes) || other.notes == notes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,listing,reasonCode,notes);

@override
String toString() {
  return 'CreateReportRequestDto(listing: $listing, reasonCode: $reasonCode, notes: $notes)';
}


}

/// @nodoc
abstract mixin class _$CreateReportRequestDtoCopyWith<$Res> implements $CreateReportRequestDtoCopyWith<$Res> {
  factory _$CreateReportRequestDtoCopyWith(_CreateReportRequestDto value, $Res Function(_CreateReportRequestDto) _then) = __$CreateReportRequestDtoCopyWithImpl;
@override @useResult
$Res call({
 int listing,@JsonKey(name: 'reason_code') String reasonCode, String? notes
});




}
/// @nodoc
class __$CreateReportRequestDtoCopyWithImpl<$Res>
    implements _$CreateReportRequestDtoCopyWith<$Res> {
  __$CreateReportRequestDtoCopyWithImpl(this._self, this._then);

  final _CreateReportRequestDto _self;
  final $Res Function(_CreateReportRequestDto) _then;

/// Create a copy of CreateReportRequestDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? listing = null,Object? reasonCode = null,Object? notes = freezed,}) {
  return _then(_CreateReportRequestDto(
listing: null == listing ? _self.listing : listing // ignore: cast_nullable_to_non_nullable
as int,reasonCode: null == reasonCode ? _self.reasonCode : reasonCode // ignore: cast_nullable_to_non_nullable
as String,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ReportResponseDto {

 int get id; int get listing;@JsonKey(name: 'reason_code') String get reasonCode; String? get notes; String get status;@JsonKey(name: 'created_at') String? get createdAt;
/// Create a copy of ReportResponseDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReportResponseDtoCopyWith<ReportResponseDto> get copyWith => _$ReportResponseDtoCopyWithImpl<ReportResponseDto>(this as ReportResponseDto, _$identity);

  /// Serializes this ReportResponseDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReportResponseDto&&(identical(other.id, id) || other.id == id)&&(identical(other.listing, listing) || other.listing == listing)&&(identical(other.reasonCode, reasonCode) || other.reasonCode == reasonCode)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,listing,reasonCode,notes,status,createdAt);

@override
String toString() {
  return 'ReportResponseDto(id: $id, listing: $listing, reasonCode: $reasonCode, notes: $notes, status: $status, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $ReportResponseDtoCopyWith<$Res>  {
  factory $ReportResponseDtoCopyWith(ReportResponseDto value, $Res Function(ReportResponseDto) _then) = _$ReportResponseDtoCopyWithImpl;
@useResult
$Res call({
 int id, int listing,@JsonKey(name: 'reason_code') String reasonCode, String? notes, String status,@JsonKey(name: 'created_at') String? createdAt
});




}
/// @nodoc
class _$ReportResponseDtoCopyWithImpl<$Res>
    implements $ReportResponseDtoCopyWith<$Res> {
  _$ReportResponseDtoCopyWithImpl(this._self, this._then);

  final ReportResponseDto _self;
  final $Res Function(ReportResponseDto) _then;

/// Create a copy of ReportResponseDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? listing = null,Object? reasonCode = null,Object? notes = freezed,Object? status = null,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,listing: null == listing ? _self.listing : listing // ignore: cast_nullable_to_non_nullable
as int,reasonCode: null == reasonCode ? _self.reasonCode : reasonCode // ignore: cast_nullable_to_non_nullable
as String,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReportResponseDto].
extension ReportResponseDtoPatterns on ReportResponseDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReportResponseDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReportResponseDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReportResponseDto value)  $default,){
final _that = this;
switch (_that) {
case _ReportResponseDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReportResponseDto value)?  $default,){
final _that = this;
switch (_that) {
case _ReportResponseDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int listing, @JsonKey(name: 'reason_code')  String reasonCode,  String? notes,  String status, @JsonKey(name: 'created_at')  String? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReportResponseDto() when $default != null:
return $default(_that.id,_that.listing,_that.reasonCode,_that.notes,_that.status,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int listing, @JsonKey(name: 'reason_code')  String reasonCode,  String? notes,  String status, @JsonKey(name: 'created_at')  String? createdAt)  $default,) {final _that = this;
switch (_that) {
case _ReportResponseDto():
return $default(_that.id,_that.listing,_that.reasonCode,_that.notes,_that.status,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int listing, @JsonKey(name: 'reason_code')  String reasonCode,  String? notes,  String status, @JsonKey(name: 'created_at')  String? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _ReportResponseDto() when $default != null:
return $default(_that.id,_that.listing,_that.reasonCode,_that.notes,_that.status,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReportResponseDto implements ReportResponseDto {
  const _ReportResponseDto({required this.id, required this.listing, @JsonKey(name: 'reason_code') required this.reasonCode, this.notes, required this.status, @JsonKey(name: 'created_at') this.createdAt});
  factory _ReportResponseDto.fromJson(Map<String, dynamic> json) => _$ReportResponseDtoFromJson(json);

@override final  int id;
@override final  int listing;
@override@JsonKey(name: 'reason_code') final  String reasonCode;
@override final  String? notes;
@override final  String status;
@override@JsonKey(name: 'created_at') final  String? createdAt;

/// Create a copy of ReportResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReportResponseDtoCopyWith<_ReportResponseDto> get copyWith => __$ReportResponseDtoCopyWithImpl<_ReportResponseDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReportResponseDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReportResponseDto&&(identical(other.id, id) || other.id == id)&&(identical(other.listing, listing) || other.listing == listing)&&(identical(other.reasonCode, reasonCode) || other.reasonCode == reasonCode)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,listing,reasonCode,notes,status,createdAt);

@override
String toString() {
  return 'ReportResponseDto(id: $id, listing: $listing, reasonCode: $reasonCode, notes: $notes, status: $status, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$ReportResponseDtoCopyWith<$Res> implements $ReportResponseDtoCopyWith<$Res> {
  factory _$ReportResponseDtoCopyWith(_ReportResponseDto value, $Res Function(_ReportResponseDto) _then) = __$ReportResponseDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, int listing,@JsonKey(name: 'reason_code') String reasonCode, String? notes, String status,@JsonKey(name: 'created_at') String? createdAt
});




}
/// @nodoc
class __$ReportResponseDtoCopyWithImpl<$Res>
    implements _$ReportResponseDtoCopyWith<$Res> {
  __$ReportResponseDtoCopyWithImpl(this._self, this._then);

  final _ReportResponseDto _self;
  final $Res Function(_ReportResponseDto) _then;

/// Create a copy of ReportResponseDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? listing = null,Object? reasonCode = null,Object? notes = freezed,Object? status = null,Object? createdAt = freezed,}) {
  return _then(_ReportResponseDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,listing: null == listing ? _self.listing : listing // ignore: cast_nullable_to_non_nullable
as int,reasonCode: null == reasonCode ? _self.reasonCode : reasonCode // ignore: cast_nullable_to_non_nullable
as String,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
