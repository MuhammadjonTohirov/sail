// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchState {

 String get query; List<SearchListing> get results; List<Listing> get suggested; List<Category> get categories; int get total; int get page; int get perPage; bool get isLoading; bool get isLoadingMore; bool get hasReachedMax; String get sort; String? get condition; double? get priceMin; double? get priceMax; String? get currency; int? get categoryId; SearchFacets? get facets; Failure? get error;
/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchStateCopyWith<SearchState> get copyWith => _$SearchStateCopyWithImpl<SearchState>(this as SearchState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchState&&(identical(other.query, query) || other.query == query)&&const DeepCollectionEquality().equals(other.results, results)&&const DeepCollectionEquality().equals(other.suggested, suggested)&&const DeepCollectionEquality().equals(other.categories, categories)&&(identical(other.total, total) || other.total == total)&&(identical(other.page, page) || other.page == page)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.hasReachedMax, hasReachedMax) || other.hasReachedMax == hasReachedMax)&&(identical(other.sort, sort) || other.sort == sort)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.priceMin, priceMin) || other.priceMin == priceMin)&&(identical(other.priceMax, priceMax) || other.priceMax == priceMax)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.facets, facets) || other.facets == facets)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,query,const DeepCollectionEquality().hash(results),const DeepCollectionEquality().hash(suggested),const DeepCollectionEquality().hash(categories),total,page,perPage,isLoading,isLoadingMore,hasReachedMax,sort,condition,priceMin,priceMax,currency,categoryId,facets,error);

@override
String toString() {
  return 'SearchState(query: $query, results: $results, suggested: $suggested, categories: $categories, total: $total, page: $page, perPage: $perPage, isLoading: $isLoading, isLoadingMore: $isLoadingMore, hasReachedMax: $hasReachedMax, sort: $sort, condition: $condition, priceMin: $priceMin, priceMax: $priceMax, currency: $currency, categoryId: $categoryId, facets: $facets, error: $error)';
}


}

/// @nodoc
abstract mixin class $SearchStateCopyWith<$Res>  {
  factory $SearchStateCopyWith(SearchState value, $Res Function(SearchState) _then) = _$SearchStateCopyWithImpl;
@useResult
$Res call({
 String query, List<SearchListing> results, List<Listing> suggested, List<Category> categories, int total, int page, int perPage, bool isLoading, bool isLoadingMore, bool hasReachedMax, String sort, String? condition, double? priceMin, double? priceMax, String? currency, int? categoryId, SearchFacets? facets, Failure? error
});


$SearchFacetsCopyWith<$Res>? get facets;

}
/// @nodoc
class _$SearchStateCopyWithImpl<$Res>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._self, this._then);

  final SearchState _self;
  final $Res Function(SearchState) _then;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,Object? results = null,Object? suggested = null,Object? categories = null,Object? total = null,Object? page = null,Object? perPage = null,Object? isLoading = null,Object? isLoadingMore = null,Object? hasReachedMax = null,Object? sort = null,Object? condition = freezed,Object? priceMin = freezed,Object? priceMax = freezed,Object? currency = freezed,Object? categoryId = freezed,Object? facets = freezed,Object? error = freezed,}) {
  return _then(_self.copyWith(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,results: null == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<SearchListing>,suggested: null == suggested ? _self.suggested : suggested // ignore: cast_nullable_to_non_nullable
as List<Listing>,categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<Category>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,hasReachedMax: null == hasReachedMax ? _self.hasReachedMax : hasReachedMax // ignore: cast_nullable_to_non_nullable
as bool,sort: null == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as String,condition: freezed == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as String?,priceMin: freezed == priceMin ? _self.priceMin : priceMin // ignore: cast_nullable_to_non_nullable
as double?,priceMax: freezed == priceMax ? _self.priceMax : priceMax // ignore: cast_nullable_to_non_nullable
as double?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int?,facets: freezed == facets ? _self.facets : facets // ignore: cast_nullable_to_non_nullable
as SearchFacets?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Failure?,
  ));
}
/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchFacetsCopyWith<$Res>? get facets {
    if (_self.facets == null) {
    return null;
  }

  return $SearchFacetsCopyWith<$Res>(_self.facets!, (value) {
    return _then(_self.copyWith(facets: value));
  });
}
}


/// Adds pattern-matching-related methods to [SearchState].
extension SearchStatePatterns on SearchState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchState value)  $default,){
final _that = this;
switch (_that) {
case _SearchState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchState value)?  $default,){
final _that = this;
switch (_that) {
case _SearchState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String query,  List<SearchListing> results,  List<Listing> suggested,  List<Category> categories,  int total,  int page,  int perPage,  bool isLoading,  bool isLoadingMore,  bool hasReachedMax,  String sort,  String? condition,  double? priceMin,  double? priceMax,  String? currency,  int? categoryId,  SearchFacets? facets,  Failure? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchState() when $default != null:
return $default(_that.query,_that.results,_that.suggested,_that.categories,_that.total,_that.page,_that.perPage,_that.isLoading,_that.isLoadingMore,_that.hasReachedMax,_that.sort,_that.condition,_that.priceMin,_that.priceMax,_that.currency,_that.categoryId,_that.facets,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String query,  List<SearchListing> results,  List<Listing> suggested,  List<Category> categories,  int total,  int page,  int perPage,  bool isLoading,  bool isLoadingMore,  bool hasReachedMax,  String sort,  String? condition,  double? priceMin,  double? priceMax,  String? currency,  int? categoryId,  SearchFacets? facets,  Failure? error)  $default,) {final _that = this;
switch (_that) {
case _SearchState():
return $default(_that.query,_that.results,_that.suggested,_that.categories,_that.total,_that.page,_that.perPage,_that.isLoading,_that.isLoadingMore,_that.hasReachedMax,_that.sort,_that.condition,_that.priceMin,_that.priceMax,_that.currency,_that.categoryId,_that.facets,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String query,  List<SearchListing> results,  List<Listing> suggested,  List<Category> categories,  int total,  int page,  int perPage,  bool isLoading,  bool isLoadingMore,  bool hasReachedMax,  String sort,  String? condition,  double? priceMin,  double? priceMax,  String? currency,  int? categoryId,  SearchFacets? facets,  Failure? error)?  $default,) {final _that = this;
switch (_that) {
case _SearchState() when $default != null:
return $default(_that.query,_that.results,_that.suggested,_that.categories,_that.total,_that.page,_that.perPage,_that.isLoading,_that.isLoadingMore,_that.hasReachedMax,_that.sort,_that.condition,_that.priceMin,_that.priceMax,_that.currency,_that.categoryId,_that.facets,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _SearchState implements SearchState {
  const _SearchState({this.query = '', final  List<SearchListing> results = const [], final  List<Listing> suggested = const [], final  List<Category> categories = const [], this.total = 0, this.page = 1, this.perPage = 24, this.isLoading = false, this.isLoadingMore = false, this.hasReachedMax = false, this.sort = 'relevance', this.condition, this.priceMin, this.priceMax, this.currency, this.categoryId, this.facets, this.error}): _results = results,_suggested = suggested,_categories = categories;
  

@override@JsonKey() final  String query;
 final  List<SearchListing> _results;
@override@JsonKey() List<SearchListing> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}

 final  List<Listing> _suggested;
@override@JsonKey() List<Listing> get suggested {
  if (_suggested is EqualUnmodifiableListView) return _suggested;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_suggested);
}

 final  List<Category> _categories;
@override@JsonKey() List<Category> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

@override@JsonKey() final  int total;
@override@JsonKey() final  int page;
@override@JsonKey() final  int perPage;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isLoadingMore;
@override@JsonKey() final  bool hasReachedMax;
@override@JsonKey() final  String sort;
@override final  String? condition;
@override final  double? priceMin;
@override final  double? priceMax;
@override final  String? currency;
@override final  int? categoryId;
@override final  SearchFacets? facets;
@override final  Failure? error;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchStateCopyWith<_SearchState> get copyWith => __$SearchStateCopyWithImpl<_SearchState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchState&&(identical(other.query, query) || other.query == query)&&const DeepCollectionEquality().equals(other._results, _results)&&const DeepCollectionEquality().equals(other._suggested, _suggested)&&const DeepCollectionEquality().equals(other._categories, _categories)&&(identical(other.total, total) || other.total == total)&&(identical(other.page, page) || other.page == page)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.hasReachedMax, hasReachedMax) || other.hasReachedMax == hasReachedMax)&&(identical(other.sort, sort) || other.sort == sort)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.priceMin, priceMin) || other.priceMin == priceMin)&&(identical(other.priceMax, priceMax) || other.priceMax == priceMax)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.facets, facets) || other.facets == facets)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,query,const DeepCollectionEquality().hash(_results),const DeepCollectionEquality().hash(_suggested),const DeepCollectionEquality().hash(_categories),total,page,perPage,isLoading,isLoadingMore,hasReachedMax,sort,condition,priceMin,priceMax,currency,categoryId,facets,error);

@override
String toString() {
  return 'SearchState(query: $query, results: $results, suggested: $suggested, categories: $categories, total: $total, page: $page, perPage: $perPage, isLoading: $isLoading, isLoadingMore: $isLoadingMore, hasReachedMax: $hasReachedMax, sort: $sort, condition: $condition, priceMin: $priceMin, priceMax: $priceMax, currency: $currency, categoryId: $categoryId, facets: $facets, error: $error)';
}


}

/// @nodoc
abstract mixin class _$SearchStateCopyWith<$Res> implements $SearchStateCopyWith<$Res> {
  factory _$SearchStateCopyWith(_SearchState value, $Res Function(_SearchState) _then) = __$SearchStateCopyWithImpl;
@override @useResult
$Res call({
 String query, List<SearchListing> results, List<Listing> suggested, List<Category> categories, int total, int page, int perPage, bool isLoading, bool isLoadingMore, bool hasReachedMax, String sort, String? condition, double? priceMin, double? priceMax, String? currency, int? categoryId, SearchFacets? facets, Failure? error
});


@override $SearchFacetsCopyWith<$Res>? get facets;

}
/// @nodoc
class __$SearchStateCopyWithImpl<$Res>
    implements _$SearchStateCopyWith<$Res> {
  __$SearchStateCopyWithImpl(this._self, this._then);

  final _SearchState _self;
  final $Res Function(_SearchState) _then;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? query = null,Object? results = null,Object? suggested = null,Object? categories = null,Object? total = null,Object? page = null,Object? perPage = null,Object? isLoading = null,Object? isLoadingMore = null,Object? hasReachedMax = null,Object? sort = null,Object? condition = freezed,Object? priceMin = freezed,Object? priceMax = freezed,Object? currency = freezed,Object? categoryId = freezed,Object? facets = freezed,Object? error = freezed,}) {
  return _then(_SearchState(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,results: null == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<SearchListing>,suggested: null == suggested ? _self._suggested : suggested // ignore: cast_nullable_to_non_nullable
as List<Listing>,categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<Category>,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,hasReachedMax: null == hasReachedMax ? _self.hasReachedMax : hasReachedMax // ignore: cast_nullable_to_non_nullable
as bool,sort: null == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as String,condition: freezed == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as String?,priceMin: freezed == priceMin ? _self.priceMin : priceMin // ignore: cast_nullable_to_non_nullable
as double?,priceMax: freezed == priceMax ? _self.priceMax : priceMax // ignore: cast_nullable_to_non_nullable
as double?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int?,facets: freezed == facets ? _self.facets : facets // ignore: cast_nullable_to_non_nullable
as SearchFacets?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Failure?,
  ));
}

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SearchFacetsCopyWith<$Res>? get facets {
    if (_self.facets == null) {
    return null;
  }

  return $SearchFacetsCopyWith<$Res>(_self.facets!, (value) {
    return _then(_self.copyWith(facets: value));
  });
}
}

// dart format on
