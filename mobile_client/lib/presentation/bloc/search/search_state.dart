import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/errors/failures.dart';
import '../../../../domain/entities/category.dart';
import '../../../../domain/entities/listing.dart';
import '../../../../domain/entities/search_result.dart';

part 'search_state.freezed.dart';

@freezed
abstract class SearchState with _$SearchState {
  const factory SearchState({
    @Default('') String query,
    @Default([]) List<SearchListing> results,
    @Default([]) List<Listing> suggested,
    @Default([]) List<Category> categories,
    @Default(0) int total,
    @Default(1) int page,
    @Default(24) int perPage,
    @Default(false) bool isLoading,
    @Default(false) bool isLoadingMore,
    @Default(false) bool hasReachedMax,
    @Default('relevance') String sort,
    String? condition,
    double? priceMin,
    double? priceMax,
    String? currency,
    int? categoryId,
    SearchFacets? facets,
    Failure? error,
  }) = _SearchState;
}
