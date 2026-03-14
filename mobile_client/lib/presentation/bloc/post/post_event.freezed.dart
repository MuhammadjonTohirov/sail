// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PostEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PostEvent()';
}


}

/// @nodoc
class $PostEventCopyWith<$Res>  {
$PostEventCopyWith(PostEvent _, $Res Function(PostEvent) __);
}


/// Adds pattern-matching-related methods to [PostEvent].
extension PostEventPatterns on PostEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( PostStarted value)?  started,TResult Function( PostCategorySelected value)?  categorySelected,TResult Function( PostLocationSelected value)?  locationSelected,TResult Function( PostSubmit value)?  submit,required TResult orElse(),}){
final _that = this;
switch (_that) {
case PostStarted() when started != null:
return started(_that);case PostCategorySelected() when categorySelected != null:
return categorySelected(_that);case PostLocationSelected() when locationSelected != null:
return locationSelected(_that);case PostSubmit() when submit != null:
return submit(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( PostStarted value)  started,required TResult Function( PostCategorySelected value)  categorySelected,required TResult Function( PostLocationSelected value)  locationSelected,required TResult Function( PostSubmit value)  submit,}){
final _that = this;
switch (_that) {
case PostStarted():
return started(_that);case PostCategorySelected():
return categorySelected(_that);case PostLocationSelected():
return locationSelected(_that);case PostSubmit():
return submit(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( PostStarted value)?  started,TResult? Function( PostCategorySelected value)?  categorySelected,TResult? Function( PostLocationSelected value)?  locationSelected,TResult? Function( PostSubmit value)?  submit,}){
final _that = this;
switch (_that) {
case PostStarted() when started != null:
return started(_that);case PostCategorySelected() when categorySelected != null:
return categorySelected(_that);case PostLocationSelected() when locationSelected != null:
return locationSelected(_that);case PostSubmit() when submit != null:
return submit(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( int categoryId)?  categorySelected,TResult Function( int locationId,  String locationPath)?  locationSelected,TResult Function( ListingPayload payload,  List<String> photoPaths)?  submit,required TResult orElse(),}) {final _that = this;
switch (_that) {
case PostStarted() when started != null:
return started();case PostCategorySelected() when categorySelected != null:
return categorySelected(_that.categoryId);case PostLocationSelected() when locationSelected != null:
return locationSelected(_that.locationId,_that.locationPath);case PostSubmit() when submit != null:
return submit(_that.payload,_that.photoPaths);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( int categoryId)  categorySelected,required TResult Function( int locationId,  String locationPath)  locationSelected,required TResult Function( ListingPayload payload,  List<String> photoPaths)  submit,}) {final _that = this;
switch (_that) {
case PostStarted():
return started();case PostCategorySelected():
return categorySelected(_that.categoryId);case PostLocationSelected():
return locationSelected(_that.locationId,_that.locationPath);case PostSubmit():
return submit(_that.payload,_that.photoPaths);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( int categoryId)?  categorySelected,TResult? Function( int locationId,  String locationPath)?  locationSelected,TResult? Function( ListingPayload payload,  List<String> photoPaths)?  submit,}) {final _that = this;
switch (_that) {
case PostStarted() when started != null:
return started();case PostCategorySelected() when categorySelected != null:
return categorySelected(_that.categoryId);case PostLocationSelected() when locationSelected != null:
return locationSelected(_that.locationId,_that.locationPath);case PostSubmit() when submit != null:
return submit(_that.payload,_that.photoPaths);case _:
  return null;

}
}

}

/// @nodoc


class PostStarted implements PostEvent {
  const PostStarted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostStarted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PostEvent.started()';
}


}




/// @nodoc


class PostCategorySelected implements PostEvent {
  const PostCategorySelected(this.categoryId);
  

 final  int categoryId;

/// Create a copy of PostEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostCategorySelectedCopyWith<PostCategorySelected> get copyWith => _$PostCategorySelectedCopyWithImpl<PostCategorySelected>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostCategorySelected&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId));
}


@override
int get hashCode => Object.hash(runtimeType,categoryId);

@override
String toString() {
  return 'PostEvent.categorySelected(categoryId: $categoryId)';
}


}

/// @nodoc
abstract mixin class $PostCategorySelectedCopyWith<$Res> implements $PostEventCopyWith<$Res> {
  factory $PostCategorySelectedCopyWith(PostCategorySelected value, $Res Function(PostCategorySelected) _then) = _$PostCategorySelectedCopyWithImpl;
@useResult
$Res call({
 int categoryId
});




}
/// @nodoc
class _$PostCategorySelectedCopyWithImpl<$Res>
    implements $PostCategorySelectedCopyWith<$Res> {
  _$PostCategorySelectedCopyWithImpl(this._self, this._then);

  final PostCategorySelected _self;
  final $Res Function(PostCategorySelected) _then;

/// Create a copy of PostEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? categoryId = null,}) {
  return _then(PostCategorySelected(
null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class PostLocationSelected implements PostEvent {
  const PostLocationSelected(this.locationId, this.locationPath);
  

 final  int locationId;
 final  String locationPath;

/// Create a copy of PostEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostLocationSelectedCopyWith<PostLocationSelected> get copyWith => _$PostLocationSelectedCopyWithImpl<PostLocationSelected>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostLocationSelected&&(identical(other.locationId, locationId) || other.locationId == locationId)&&(identical(other.locationPath, locationPath) || other.locationPath == locationPath));
}


@override
int get hashCode => Object.hash(runtimeType,locationId,locationPath);

@override
String toString() {
  return 'PostEvent.locationSelected(locationId: $locationId, locationPath: $locationPath)';
}


}

/// @nodoc
abstract mixin class $PostLocationSelectedCopyWith<$Res> implements $PostEventCopyWith<$Res> {
  factory $PostLocationSelectedCopyWith(PostLocationSelected value, $Res Function(PostLocationSelected) _then) = _$PostLocationSelectedCopyWithImpl;
@useResult
$Res call({
 int locationId, String locationPath
});




}
/// @nodoc
class _$PostLocationSelectedCopyWithImpl<$Res>
    implements $PostLocationSelectedCopyWith<$Res> {
  _$PostLocationSelectedCopyWithImpl(this._self, this._then);

  final PostLocationSelected _self;
  final $Res Function(PostLocationSelected) _then;

/// Create a copy of PostEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? locationId = null,Object? locationPath = null,}) {
  return _then(PostLocationSelected(
null == locationId ? _self.locationId : locationId // ignore: cast_nullable_to_non_nullable
as int,null == locationPath ? _self.locationPath : locationPath // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class PostSubmit implements PostEvent {
  const PostSubmit(this.payload, final  List<String> photoPaths): _photoPaths = photoPaths;
  

 final  ListingPayload payload;
 final  List<String> _photoPaths;
 List<String> get photoPaths {
  if (_photoPaths is EqualUnmodifiableListView) return _photoPaths;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_photoPaths);
}


/// Create a copy of PostEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostSubmitCopyWith<PostSubmit> get copyWith => _$PostSubmitCopyWithImpl<PostSubmit>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostSubmit&&(identical(other.payload, payload) || other.payload == payload)&&const DeepCollectionEquality().equals(other._photoPaths, _photoPaths));
}


@override
int get hashCode => Object.hash(runtimeType,payload,const DeepCollectionEquality().hash(_photoPaths));

@override
String toString() {
  return 'PostEvent.submit(payload: $payload, photoPaths: $photoPaths)';
}


}

/// @nodoc
abstract mixin class $PostSubmitCopyWith<$Res> implements $PostEventCopyWith<$Res> {
  factory $PostSubmitCopyWith(PostSubmit value, $Res Function(PostSubmit) _then) = _$PostSubmitCopyWithImpl;
@useResult
$Res call({
 ListingPayload payload, List<String> photoPaths
});


$ListingPayloadCopyWith<$Res> get payload;

}
/// @nodoc
class _$PostSubmitCopyWithImpl<$Res>
    implements $PostSubmitCopyWith<$Res> {
  _$PostSubmitCopyWithImpl(this._self, this._then);

  final PostSubmit _self;
  final $Res Function(PostSubmit) _then;

/// Create a copy of PostEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? payload = null,Object? photoPaths = null,}) {
  return _then(PostSubmit(
null == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as ListingPayload,null == photoPaths ? _self._photoPaths : photoPaths // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

/// Create a copy of PostEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ListingPayloadCopyWith<$Res> get payload {
  
  return $ListingPayloadCopyWith<$Res>(_self.payload, (value) {
    return _then(_self.copyWith(payload: value));
  });
}
}

// dart format on
