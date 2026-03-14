// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PostState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PostState()';
}


}

/// @nodoc
class $PostStateCopyWith<$Res>  {
$PostStateCopyWith(PostState _, $Res Function(PostState) __);
}


/// Adds pattern-matching-related methods to [PostState].
extension PostStatePatterns on PostState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( PostInitial value)?  initial,TResult Function( PostLoadingState value)?  loading,TResult Function( PostReady value)?  ready,TResult Function( PostSubmitting value)?  submitting,TResult Function( PostSuccess value)?  success,TResult Function( PostFailure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case PostInitial() when initial != null:
return initial(_that);case PostLoadingState() when loading != null:
return loading(_that);case PostReady() when ready != null:
return ready(_that);case PostSubmitting() when submitting != null:
return submitting(_that);case PostSuccess() when success != null:
return success(_that);case PostFailure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( PostInitial value)  initial,required TResult Function( PostLoadingState value)  loading,required TResult Function( PostReady value)  ready,required TResult Function( PostSubmitting value)  submitting,required TResult Function( PostSuccess value)  success,required TResult Function( PostFailure value)  failure,}){
final _that = this;
switch (_that) {
case PostInitial():
return initial(_that);case PostLoadingState():
return loading(_that);case PostReady():
return ready(_that);case PostSubmitting():
return submitting(_that);case PostSuccess():
return success(_that);case PostFailure():
return failure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( PostInitial value)?  initial,TResult? Function( PostLoadingState value)?  loading,TResult? Function( PostReady value)?  ready,TResult? Function( PostSubmitting value)?  submitting,TResult? Function( PostSuccess value)?  success,TResult? Function( PostFailure value)?  failure,}){
final _that = this;
switch (_that) {
case PostInitial() when initial != null:
return initial(_that);case PostLoadingState() when loading != null:
return loading(_that);case PostReady() when ready != null:
return ready(_that);case PostSubmitting() when submitting != null:
return submitting(_that);case PostSuccess() when success != null:
return success(_that);case PostFailure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<Category> categories,  List<Location> locations,  List<Attribute>? attributes)?  ready,TResult Function( String? statusMessage)?  submitting,TResult Function( Listing listing)?  success,TResult Function( Failure failure)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case PostInitial() when initial != null:
return initial();case PostLoadingState() when loading != null:
return loading();case PostReady() when ready != null:
return ready(_that.categories,_that.locations,_that.attributes);case PostSubmitting() when submitting != null:
return submitting(_that.statusMessage);case PostSuccess() when success != null:
return success(_that.listing);case PostFailure() when failure != null:
return failure(_that.failure);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<Category> categories,  List<Location> locations,  List<Attribute>? attributes)  ready,required TResult Function( String? statusMessage)  submitting,required TResult Function( Listing listing)  success,required TResult Function( Failure failure)  failure,}) {final _that = this;
switch (_that) {
case PostInitial():
return initial();case PostLoadingState():
return loading();case PostReady():
return ready(_that.categories,_that.locations,_that.attributes);case PostSubmitting():
return submitting(_that.statusMessage);case PostSuccess():
return success(_that.listing);case PostFailure():
return failure(_that.failure);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<Category> categories,  List<Location> locations,  List<Attribute>? attributes)?  ready,TResult? Function( String? statusMessage)?  submitting,TResult? Function( Listing listing)?  success,TResult? Function( Failure failure)?  failure,}) {final _that = this;
switch (_that) {
case PostInitial() when initial != null:
return initial();case PostLoadingState() when loading != null:
return loading();case PostReady() when ready != null:
return ready(_that.categories,_that.locations,_that.attributes);case PostSubmitting() when submitting != null:
return submitting(_that.statusMessage);case PostSuccess() when success != null:
return success(_that.listing);case PostFailure() when failure != null:
return failure(_that.failure);case _:
  return null;

}
}

}

/// @nodoc


class PostInitial implements PostState {
  const PostInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PostState.initial()';
}


}




/// @nodoc


class PostLoadingState implements PostState {
  const PostLoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostLoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PostState.loading()';
}


}




/// @nodoc


class PostReady implements PostState {
  const PostReady({required final  List<Category> categories, required final  List<Location> locations, final  List<Attribute>? attributes}): _categories = categories,_locations = locations,_attributes = attributes;
  

 final  List<Category> _categories;
 List<Category> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

 final  List<Location> _locations;
 List<Location> get locations {
  if (_locations is EqualUnmodifiableListView) return _locations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_locations);
}

 final  List<Attribute>? _attributes;
 List<Attribute>? get attributes {
  final value = _attributes;
  if (value == null) return null;
  if (_attributes is EqualUnmodifiableListView) return _attributes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of PostState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostReadyCopyWith<PostReady> get copyWith => _$PostReadyCopyWithImpl<PostReady>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostReady&&const DeepCollectionEquality().equals(other._categories, _categories)&&const DeepCollectionEquality().equals(other._locations, _locations)&&const DeepCollectionEquality().equals(other._attributes, _attributes));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_categories),const DeepCollectionEquality().hash(_locations),const DeepCollectionEquality().hash(_attributes));

@override
String toString() {
  return 'PostState.ready(categories: $categories, locations: $locations, attributes: $attributes)';
}


}

/// @nodoc
abstract mixin class $PostReadyCopyWith<$Res> implements $PostStateCopyWith<$Res> {
  factory $PostReadyCopyWith(PostReady value, $Res Function(PostReady) _then) = _$PostReadyCopyWithImpl;
@useResult
$Res call({
 List<Category> categories, List<Location> locations, List<Attribute>? attributes
});




}
/// @nodoc
class _$PostReadyCopyWithImpl<$Res>
    implements $PostReadyCopyWith<$Res> {
  _$PostReadyCopyWithImpl(this._self, this._then);

  final PostReady _self;
  final $Res Function(PostReady) _then;

/// Create a copy of PostState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? categories = null,Object? locations = null,Object? attributes = freezed,}) {
  return _then(PostReady(
categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<Category>,locations: null == locations ? _self._locations : locations // ignore: cast_nullable_to_non_nullable
as List<Location>,attributes: freezed == attributes ? _self._attributes : attributes // ignore: cast_nullable_to_non_nullable
as List<Attribute>?,
  ));
}


}

/// @nodoc


class PostSubmitting implements PostState {
  const PostSubmitting({this.statusMessage = null});
  

@JsonKey() final  String? statusMessage;

/// Create a copy of PostState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostSubmittingCopyWith<PostSubmitting> get copyWith => _$PostSubmittingCopyWithImpl<PostSubmitting>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostSubmitting&&(identical(other.statusMessage, statusMessage) || other.statusMessage == statusMessage));
}


@override
int get hashCode => Object.hash(runtimeType,statusMessage);

@override
String toString() {
  return 'PostState.submitting(statusMessage: $statusMessage)';
}


}

/// @nodoc
abstract mixin class $PostSubmittingCopyWith<$Res> implements $PostStateCopyWith<$Res> {
  factory $PostSubmittingCopyWith(PostSubmitting value, $Res Function(PostSubmitting) _then) = _$PostSubmittingCopyWithImpl;
@useResult
$Res call({
 String? statusMessage
});




}
/// @nodoc
class _$PostSubmittingCopyWithImpl<$Res>
    implements $PostSubmittingCopyWith<$Res> {
  _$PostSubmittingCopyWithImpl(this._self, this._then);

  final PostSubmitting _self;
  final $Res Function(PostSubmitting) _then;

/// Create a copy of PostState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? statusMessage = freezed,}) {
  return _then(PostSubmitting(
statusMessage: freezed == statusMessage ? _self.statusMessage : statusMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class PostSuccess implements PostState {
  const PostSuccess(this.listing);
  

 final  Listing listing;

/// Create a copy of PostState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostSuccessCopyWith<PostSuccess> get copyWith => _$PostSuccessCopyWithImpl<PostSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostSuccess&&(identical(other.listing, listing) || other.listing == listing));
}


@override
int get hashCode => Object.hash(runtimeType,listing);

@override
String toString() {
  return 'PostState.success(listing: $listing)';
}


}

/// @nodoc
abstract mixin class $PostSuccessCopyWith<$Res> implements $PostStateCopyWith<$Res> {
  factory $PostSuccessCopyWith(PostSuccess value, $Res Function(PostSuccess) _then) = _$PostSuccessCopyWithImpl;
@useResult
$Res call({
 Listing listing
});


$ListingCopyWith<$Res> get listing;

}
/// @nodoc
class _$PostSuccessCopyWithImpl<$Res>
    implements $PostSuccessCopyWith<$Res> {
  _$PostSuccessCopyWithImpl(this._self, this._then);

  final PostSuccess _self;
  final $Res Function(PostSuccess) _then;

/// Create a copy of PostState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? listing = null,}) {
  return _then(PostSuccess(
null == listing ? _self.listing : listing // ignore: cast_nullable_to_non_nullable
as Listing,
  ));
}

/// Create a copy of PostState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ListingCopyWith<$Res> get listing {
  
  return $ListingCopyWith<$Res>(_self.listing, (value) {
    return _then(_self.copyWith(listing: value));
  });
}
}

/// @nodoc


class PostFailure implements PostState {
  const PostFailure(this.failure);
  

 final  Failure failure;

/// Create a copy of PostState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostFailureCopyWith<PostFailure> get copyWith => _$PostFailureCopyWithImpl<PostFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostFailure&&(identical(other.failure, failure) || other.failure == failure));
}


@override
int get hashCode => Object.hash(runtimeType,failure);

@override
String toString() {
  return 'PostState.failure(failure: $failure)';
}


}

/// @nodoc
abstract mixin class $PostFailureCopyWith<$Res> implements $PostStateCopyWith<$Res> {
  factory $PostFailureCopyWith(PostFailure value, $Res Function(PostFailure) _then) = _$PostFailureCopyWithImpl;
@useResult
$Res call({
 Failure failure
});




}
/// @nodoc
class _$PostFailureCopyWithImpl<$Res>
    implements $PostFailureCopyWith<$Res> {
  _$PostFailureCopyWithImpl(this._self, this._then);

  final PostFailure _self;
  final $Res Function(PostFailure) _then;

/// Create a copy of PostState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? failure = null,}) {
  return _then(PostFailure(
null == failure ? _self.failure : failure // ignore: cast_nullable_to_non_nullable
as Failure,
  ));
}


}

// dart format on
