// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchEvent()';
}


}

/// @nodoc
class $SearchEventCopyWith<$Res>  {
$SearchEventCopyWith(SearchEvent _, $Res Function(SearchEvent) __);
}


/// Adds pattern-matching-related methods to [SearchEvent].
extension SearchEventPatterns on SearchEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SearchStarted value)?  started,TResult Function( SearchQueryChanged value)?  queryChanged,TResult Function( SearchSubmitted value)?  search,TResult Function( SearchLoadMore value)?  loadMore,TResult Function( SearchSortChanged value)?  sortChanged,TResult Function( SearchConditionChanged value)?  conditionChanged,TResult Function( SearchPriceRangeChanged value)?  priceRangeChanged,TResult Function( SearchCurrencyChanged value)?  currencyChanged,TResult Function( SearchCategoryChanged value)?  categoryChanged,TResult Function( SearchFiltersCleared value)?  filtersCleared,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SearchStarted() when started != null:
return started(_that);case SearchQueryChanged() when queryChanged != null:
return queryChanged(_that);case SearchSubmitted() when search != null:
return search(_that);case SearchLoadMore() when loadMore != null:
return loadMore(_that);case SearchSortChanged() when sortChanged != null:
return sortChanged(_that);case SearchConditionChanged() when conditionChanged != null:
return conditionChanged(_that);case SearchPriceRangeChanged() when priceRangeChanged != null:
return priceRangeChanged(_that);case SearchCurrencyChanged() when currencyChanged != null:
return currencyChanged(_that);case SearchCategoryChanged() when categoryChanged != null:
return categoryChanged(_that);case SearchFiltersCleared() when filtersCleared != null:
return filtersCleared(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SearchStarted value)  started,required TResult Function( SearchQueryChanged value)  queryChanged,required TResult Function( SearchSubmitted value)  search,required TResult Function( SearchLoadMore value)  loadMore,required TResult Function( SearchSortChanged value)  sortChanged,required TResult Function( SearchConditionChanged value)  conditionChanged,required TResult Function( SearchPriceRangeChanged value)  priceRangeChanged,required TResult Function( SearchCurrencyChanged value)  currencyChanged,required TResult Function( SearchCategoryChanged value)  categoryChanged,required TResult Function( SearchFiltersCleared value)  filtersCleared,}){
final _that = this;
switch (_that) {
case SearchStarted():
return started(_that);case SearchQueryChanged():
return queryChanged(_that);case SearchSubmitted():
return search(_that);case SearchLoadMore():
return loadMore(_that);case SearchSortChanged():
return sortChanged(_that);case SearchConditionChanged():
return conditionChanged(_that);case SearchPriceRangeChanged():
return priceRangeChanged(_that);case SearchCurrencyChanged():
return currencyChanged(_that);case SearchCategoryChanged():
return categoryChanged(_that);case SearchFiltersCleared():
return filtersCleared(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SearchStarted value)?  started,TResult? Function( SearchQueryChanged value)?  queryChanged,TResult? Function( SearchSubmitted value)?  search,TResult? Function( SearchLoadMore value)?  loadMore,TResult? Function( SearchSortChanged value)?  sortChanged,TResult? Function( SearchConditionChanged value)?  conditionChanged,TResult? Function( SearchPriceRangeChanged value)?  priceRangeChanged,TResult? Function( SearchCurrencyChanged value)?  currencyChanged,TResult? Function( SearchCategoryChanged value)?  categoryChanged,TResult? Function( SearchFiltersCleared value)?  filtersCleared,}){
final _that = this;
switch (_that) {
case SearchStarted() when started != null:
return started(_that);case SearchQueryChanged() when queryChanged != null:
return queryChanged(_that);case SearchSubmitted() when search != null:
return search(_that);case SearchLoadMore() when loadMore != null:
return loadMore(_that);case SearchSortChanged() when sortChanged != null:
return sortChanged(_that);case SearchConditionChanged() when conditionChanged != null:
return conditionChanged(_that);case SearchPriceRangeChanged() when priceRangeChanged != null:
return priceRangeChanged(_that);case SearchCurrencyChanged() when currencyChanged != null:
return currencyChanged(_that);case SearchCategoryChanged() when categoryChanged != null:
return categoryChanged(_that);case SearchFiltersCleared() when filtersCleared != null:
return filtersCleared(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( String query)?  queryChanged,TResult Function()?  search,TResult Function()?  loadMore,TResult Function( String sort)?  sortChanged,TResult Function( String? condition)?  conditionChanged,TResult Function( double? min,  double? max)?  priceRangeChanged,TResult Function( String? currency)?  currencyChanged,TResult Function( int? categoryId)?  categoryChanged,TResult Function()?  filtersCleared,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SearchStarted() when started != null:
return started();case SearchQueryChanged() when queryChanged != null:
return queryChanged(_that.query);case SearchSubmitted() when search != null:
return search();case SearchLoadMore() when loadMore != null:
return loadMore();case SearchSortChanged() when sortChanged != null:
return sortChanged(_that.sort);case SearchConditionChanged() when conditionChanged != null:
return conditionChanged(_that.condition);case SearchPriceRangeChanged() when priceRangeChanged != null:
return priceRangeChanged(_that.min,_that.max);case SearchCurrencyChanged() when currencyChanged != null:
return currencyChanged(_that.currency);case SearchCategoryChanged() when categoryChanged != null:
return categoryChanged(_that.categoryId);case SearchFiltersCleared() when filtersCleared != null:
return filtersCleared();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( String query)  queryChanged,required TResult Function()  search,required TResult Function()  loadMore,required TResult Function( String sort)  sortChanged,required TResult Function( String? condition)  conditionChanged,required TResult Function( double? min,  double? max)  priceRangeChanged,required TResult Function( String? currency)  currencyChanged,required TResult Function( int? categoryId)  categoryChanged,required TResult Function()  filtersCleared,}) {final _that = this;
switch (_that) {
case SearchStarted():
return started();case SearchQueryChanged():
return queryChanged(_that.query);case SearchSubmitted():
return search();case SearchLoadMore():
return loadMore();case SearchSortChanged():
return sortChanged(_that.sort);case SearchConditionChanged():
return conditionChanged(_that.condition);case SearchPriceRangeChanged():
return priceRangeChanged(_that.min,_that.max);case SearchCurrencyChanged():
return currencyChanged(_that.currency);case SearchCategoryChanged():
return categoryChanged(_that.categoryId);case SearchFiltersCleared():
return filtersCleared();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( String query)?  queryChanged,TResult? Function()?  search,TResult? Function()?  loadMore,TResult? Function( String sort)?  sortChanged,TResult? Function( String? condition)?  conditionChanged,TResult? Function( double? min,  double? max)?  priceRangeChanged,TResult? Function( String? currency)?  currencyChanged,TResult? Function( int? categoryId)?  categoryChanged,TResult? Function()?  filtersCleared,}) {final _that = this;
switch (_that) {
case SearchStarted() when started != null:
return started();case SearchQueryChanged() when queryChanged != null:
return queryChanged(_that.query);case SearchSubmitted() when search != null:
return search();case SearchLoadMore() when loadMore != null:
return loadMore();case SearchSortChanged() when sortChanged != null:
return sortChanged(_that.sort);case SearchConditionChanged() when conditionChanged != null:
return conditionChanged(_that.condition);case SearchPriceRangeChanged() when priceRangeChanged != null:
return priceRangeChanged(_that.min,_that.max);case SearchCurrencyChanged() when currencyChanged != null:
return currencyChanged(_that.currency);case SearchCategoryChanged() when categoryChanged != null:
return categoryChanged(_that.categoryId);case SearchFiltersCleared() when filtersCleared != null:
return filtersCleared();case _:
  return null;

}
}

}

/// @nodoc


class SearchStarted implements SearchEvent {
  const SearchStarted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchStarted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchEvent.started()';
}


}




/// @nodoc


class SearchQueryChanged implements SearchEvent {
  const SearchQueryChanged(this.query);
  

 final  String query;

/// Create a copy of SearchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchQueryChangedCopyWith<SearchQueryChanged> get copyWith => _$SearchQueryChangedCopyWithImpl<SearchQueryChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchQueryChanged&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'SearchEvent.queryChanged(query: $query)';
}


}

/// @nodoc
abstract mixin class $SearchQueryChangedCopyWith<$Res> implements $SearchEventCopyWith<$Res> {
  factory $SearchQueryChangedCopyWith(SearchQueryChanged value, $Res Function(SearchQueryChanged) _then) = _$SearchQueryChangedCopyWithImpl;
@useResult
$Res call({
 String query
});




}
/// @nodoc
class _$SearchQueryChangedCopyWithImpl<$Res>
    implements $SearchQueryChangedCopyWith<$Res> {
  _$SearchQueryChangedCopyWithImpl(this._self, this._then);

  final SearchQueryChanged _self;
  final $Res Function(SearchQueryChanged) _then;

/// Create a copy of SearchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(SearchQueryChanged(
null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SearchSubmitted implements SearchEvent {
  const SearchSubmitted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchSubmitted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchEvent.search()';
}


}




/// @nodoc


class SearchLoadMore implements SearchEvent {
  const SearchLoadMore();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchLoadMore);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchEvent.loadMore()';
}


}




/// @nodoc


class SearchSortChanged implements SearchEvent {
  const SearchSortChanged(this.sort);
  

 final  String sort;

/// Create a copy of SearchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchSortChangedCopyWith<SearchSortChanged> get copyWith => _$SearchSortChangedCopyWithImpl<SearchSortChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchSortChanged&&(identical(other.sort, sort) || other.sort == sort));
}


@override
int get hashCode => Object.hash(runtimeType,sort);

@override
String toString() {
  return 'SearchEvent.sortChanged(sort: $sort)';
}


}

/// @nodoc
abstract mixin class $SearchSortChangedCopyWith<$Res> implements $SearchEventCopyWith<$Res> {
  factory $SearchSortChangedCopyWith(SearchSortChanged value, $Res Function(SearchSortChanged) _then) = _$SearchSortChangedCopyWithImpl;
@useResult
$Res call({
 String sort
});




}
/// @nodoc
class _$SearchSortChangedCopyWithImpl<$Res>
    implements $SearchSortChangedCopyWith<$Res> {
  _$SearchSortChangedCopyWithImpl(this._self, this._then);

  final SearchSortChanged _self;
  final $Res Function(SearchSortChanged) _then;

/// Create a copy of SearchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? sort = null,}) {
  return _then(SearchSortChanged(
null == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SearchConditionChanged implements SearchEvent {
  const SearchConditionChanged(this.condition);
  

 final  String? condition;

/// Create a copy of SearchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchConditionChangedCopyWith<SearchConditionChanged> get copyWith => _$SearchConditionChangedCopyWithImpl<SearchConditionChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchConditionChanged&&(identical(other.condition, condition) || other.condition == condition));
}


@override
int get hashCode => Object.hash(runtimeType,condition);

@override
String toString() {
  return 'SearchEvent.conditionChanged(condition: $condition)';
}


}

/// @nodoc
abstract mixin class $SearchConditionChangedCopyWith<$Res> implements $SearchEventCopyWith<$Res> {
  factory $SearchConditionChangedCopyWith(SearchConditionChanged value, $Res Function(SearchConditionChanged) _then) = _$SearchConditionChangedCopyWithImpl;
@useResult
$Res call({
 String? condition
});




}
/// @nodoc
class _$SearchConditionChangedCopyWithImpl<$Res>
    implements $SearchConditionChangedCopyWith<$Res> {
  _$SearchConditionChangedCopyWithImpl(this._self, this._then);

  final SearchConditionChanged _self;
  final $Res Function(SearchConditionChanged) _then;

/// Create a copy of SearchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? condition = freezed,}) {
  return _then(SearchConditionChanged(
freezed == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class SearchPriceRangeChanged implements SearchEvent {
  const SearchPriceRangeChanged({this.min, this.max});
  

 final  double? min;
 final  double? max;

/// Create a copy of SearchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchPriceRangeChangedCopyWith<SearchPriceRangeChanged> get copyWith => _$SearchPriceRangeChangedCopyWithImpl<SearchPriceRangeChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchPriceRangeChanged&&(identical(other.min, min) || other.min == min)&&(identical(other.max, max) || other.max == max));
}


@override
int get hashCode => Object.hash(runtimeType,min,max);

@override
String toString() {
  return 'SearchEvent.priceRangeChanged(min: $min, max: $max)';
}


}

/// @nodoc
abstract mixin class $SearchPriceRangeChangedCopyWith<$Res> implements $SearchEventCopyWith<$Res> {
  factory $SearchPriceRangeChangedCopyWith(SearchPriceRangeChanged value, $Res Function(SearchPriceRangeChanged) _then) = _$SearchPriceRangeChangedCopyWithImpl;
@useResult
$Res call({
 double? min, double? max
});




}
/// @nodoc
class _$SearchPriceRangeChangedCopyWithImpl<$Res>
    implements $SearchPriceRangeChangedCopyWith<$Res> {
  _$SearchPriceRangeChangedCopyWithImpl(this._self, this._then);

  final SearchPriceRangeChanged _self;
  final $Res Function(SearchPriceRangeChanged) _then;

/// Create a copy of SearchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? min = freezed,Object? max = freezed,}) {
  return _then(SearchPriceRangeChanged(
min: freezed == min ? _self.min : min // ignore: cast_nullable_to_non_nullable
as double?,max: freezed == max ? _self.max : max // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

/// @nodoc


class SearchCurrencyChanged implements SearchEvent {
  const SearchCurrencyChanged(this.currency);
  

 final  String? currency;

/// Create a copy of SearchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchCurrencyChangedCopyWith<SearchCurrencyChanged> get copyWith => _$SearchCurrencyChangedCopyWithImpl<SearchCurrencyChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchCurrencyChanged&&(identical(other.currency, currency) || other.currency == currency));
}


@override
int get hashCode => Object.hash(runtimeType,currency);

@override
String toString() {
  return 'SearchEvent.currencyChanged(currency: $currency)';
}


}

/// @nodoc
abstract mixin class $SearchCurrencyChangedCopyWith<$Res> implements $SearchEventCopyWith<$Res> {
  factory $SearchCurrencyChangedCopyWith(SearchCurrencyChanged value, $Res Function(SearchCurrencyChanged) _then) = _$SearchCurrencyChangedCopyWithImpl;
@useResult
$Res call({
 String? currency
});




}
/// @nodoc
class _$SearchCurrencyChangedCopyWithImpl<$Res>
    implements $SearchCurrencyChangedCopyWith<$Res> {
  _$SearchCurrencyChangedCopyWithImpl(this._self, this._then);

  final SearchCurrencyChanged _self;
  final $Res Function(SearchCurrencyChanged) _then;

/// Create a copy of SearchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? currency = freezed,}) {
  return _then(SearchCurrencyChanged(
freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class SearchCategoryChanged implements SearchEvent {
  const SearchCategoryChanged(this.categoryId);
  

 final  int? categoryId;

/// Create a copy of SearchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchCategoryChangedCopyWith<SearchCategoryChanged> get copyWith => _$SearchCategoryChangedCopyWithImpl<SearchCategoryChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchCategoryChanged&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId));
}


@override
int get hashCode => Object.hash(runtimeType,categoryId);

@override
String toString() {
  return 'SearchEvent.categoryChanged(categoryId: $categoryId)';
}


}

/// @nodoc
abstract mixin class $SearchCategoryChangedCopyWith<$Res> implements $SearchEventCopyWith<$Res> {
  factory $SearchCategoryChangedCopyWith(SearchCategoryChanged value, $Res Function(SearchCategoryChanged) _then) = _$SearchCategoryChangedCopyWithImpl;
@useResult
$Res call({
 int? categoryId
});




}
/// @nodoc
class _$SearchCategoryChangedCopyWithImpl<$Res>
    implements $SearchCategoryChangedCopyWith<$Res> {
  _$SearchCategoryChangedCopyWithImpl(this._self, this._then);

  final SearchCategoryChanged _self;
  final $Res Function(SearchCategoryChanged) _then;

/// Create a copy of SearchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? categoryId = freezed,}) {
  return _then(SearchCategoryChanged(
freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc


class SearchFiltersCleared implements SearchEvent {
  const SearchFiltersCleared();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchFiltersCleared);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchEvent.filtersCleared()';
}


}




// dart format on
