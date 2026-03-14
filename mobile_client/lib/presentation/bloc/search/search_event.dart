import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_event.freezed.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.started() = SearchStarted;
  const factory SearchEvent.queryChanged(String query) = SearchQueryChanged;
  const factory SearchEvent.search() = SearchSubmitted;
  const factory SearchEvent.loadMore() = SearchLoadMore;
  const factory SearchEvent.sortChanged(String sort) = SearchSortChanged;
  const factory SearchEvent.conditionChanged(String? condition) = SearchConditionChanged;
  const factory SearchEvent.priceRangeChanged({double? min, double? max}) = SearchPriceRangeChanged;
  const factory SearchEvent.currencyChanged(String? currency) = SearchCurrencyChanged;
  const factory SearchEvent.categoryChanged(int? categoryId) = SearchCategoryChanged;
  const factory SearchEvent.filtersCleared() = SearchFiltersCleared;
}
