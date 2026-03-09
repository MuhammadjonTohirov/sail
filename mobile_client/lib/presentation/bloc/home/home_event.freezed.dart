// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent()';
}


}

/// @nodoc
class $HomeEventCopyWith<$Res>  {
$HomeEventCopyWith(HomeEvent _, $Res Function(HomeEvent) __);
}


/// Adds pattern-matching-related methods to [HomeEvent].
extension HomeEventPatterns on HomeEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( HomeStarted value)?  started,TResult Function( HomeRefresh value)?  refresh,TResult Function( HomeLoadMore value)?  loadMore,TResult Function( HomeCategorySelected value)?  categorySelected,required TResult orElse(),}){
final _that = this;
switch (_that) {
case HomeStarted() when started != null:
return started(_that);case HomeRefresh() when refresh != null:
return refresh(_that);case HomeLoadMore() when loadMore != null:
return loadMore(_that);case HomeCategorySelected() when categorySelected != null:
return categorySelected(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( HomeStarted value)  started,required TResult Function( HomeRefresh value)  refresh,required TResult Function( HomeLoadMore value)  loadMore,required TResult Function( HomeCategorySelected value)  categorySelected,}){
final _that = this;
switch (_that) {
case HomeStarted():
return started(_that);case HomeRefresh():
return refresh(_that);case HomeLoadMore():
return loadMore(_that);case HomeCategorySelected():
return categorySelected(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( HomeStarted value)?  started,TResult? Function( HomeRefresh value)?  refresh,TResult? Function( HomeLoadMore value)?  loadMore,TResult? Function( HomeCategorySelected value)?  categorySelected,}){
final _that = this;
switch (_that) {
case HomeStarted() when started != null:
return started(_that);case HomeRefresh() when refresh != null:
return refresh(_that);case HomeLoadMore() when loadMore != null:
return loadMore(_that);case HomeCategorySelected() when categorySelected != null:
return categorySelected(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function()?  refresh,TResult Function()?  loadMore,TResult Function( int categoryId)?  categorySelected,required TResult orElse(),}) {final _that = this;
switch (_that) {
case HomeStarted() when started != null:
return started();case HomeRefresh() when refresh != null:
return refresh();case HomeLoadMore() when loadMore != null:
return loadMore();case HomeCategorySelected() when categorySelected != null:
return categorySelected(_that.categoryId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function()  refresh,required TResult Function()  loadMore,required TResult Function( int categoryId)  categorySelected,}) {final _that = this;
switch (_that) {
case HomeStarted():
return started();case HomeRefresh():
return refresh();case HomeLoadMore():
return loadMore();case HomeCategorySelected():
return categorySelected(_that.categoryId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function()?  refresh,TResult? Function()?  loadMore,TResult? Function( int categoryId)?  categorySelected,}) {final _that = this;
switch (_that) {
case HomeStarted() when started != null:
return started();case HomeRefresh() when refresh != null:
return refresh();case HomeLoadMore() when loadMore != null:
return loadMore();case HomeCategorySelected() when categorySelected != null:
return categorySelected(_that.categoryId);case _:
  return null;

}
}

}

/// @nodoc


class HomeStarted implements HomeEvent {
  const HomeStarted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeStarted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.started()';
}


}




/// @nodoc


class HomeRefresh implements HomeEvent {
  const HomeRefresh();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeRefresh);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.refresh()';
}


}




/// @nodoc


class HomeLoadMore implements HomeEvent {
  const HomeLoadMore();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeLoadMore);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.loadMore()';
}


}




/// @nodoc


class HomeCategorySelected implements HomeEvent {
  const HomeCategorySelected(this.categoryId);
  

 final  int categoryId;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeCategorySelectedCopyWith<HomeCategorySelected> get copyWith => _$HomeCategorySelectedCopyWithImpl<HomeCategorySelected>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeCategorySelected&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId));
}


@override
int get hashCode => Object.hash(runtimeType,categoryId);

@override
String toString() {
  return 'HomeEvent.categorySelected(categoryId: $categoryId)';
}


}

/// @nodoc
abstract mixin class $HomeCategorySelectedCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory $HomeCategorySelectedCopyWith(HomeCategorySelected value, $Res Function(HomeCategorySelected) _then) = _$HomeCategorySelectedCopyWithImpl;
@useResult
$Res call({
 int categoryId
});




}
/// @nodoc
class _$HomeCategorySelectedCopyWithImpl<$Res>
    implements $HomeCategorySelectedCopyWith<$Res> {
  _$HomeCategorySelectedCopyWithImpl(this._self, this._then);

  final HomeCategorySelected _self;
  final $Res Function(HomeCategorySelected) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? categoryId = null,}) {
  return _then(HomeCategorySelected(
null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
