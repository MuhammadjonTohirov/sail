import 'package:freezed_annotation/freezed_annotation.dart';

import 'user.dart';


part 'search_result.freezed.dart';

/// Search listing entity (simplified listing for search results).
/// 
/// Matches web_client/domain/models/SearchListing.ts
@freezed
abstract class SearchListing with _$SearchListing {
  const factory SearchListing({
    required String id,
    required String title,
    double? price,
    String? description,
    String? condition,
    double? qualityScore,
    double? score,
    String? currency,
    List<String>? mediaUrls,
    String? locationNameRu,
    String? locationNameUz,
    String? refreshedAt,
    bool? isPromoted,
    ListingSeller? seller,
  }) = _SearchListing;
}

/// Search facet option entity.
@freezed
abstract class SearchFacetOption with _$SearchFacetOption {
  const factory SearchFacetOption({
    String? key,
    int? count,
  }) = _SearchFacetOption;
}

/// Search price range facet entity.
@freezed
abstract class SearchPriceRangeFacet with _$SearchPriceRangeFacet {
  const factory SearchPriceRangeFacet({
    double? min,
    double? max,
    String? currency,
  }) = _SearchPriceRangeFacet;
}

/// Search facets entity.
@freezed
abstract class SearchFacets with _$SearchFacets {
  const factory SearchFacets({
    List<SearchFacetOption>? categories,
    List<SearchFacetOption>? locations,
    List<SearchFacetOption>? conditions,
    SearchPriceRangeFacet? priceRange,
    Map<String, List<SearchFacetOption>>? attributes,
  }) = _SearchFacets;
}

/// Search result entity.
/// 
/// Matches web_client/domain/models/SearchResult.ts
@freezed
abstract class SearchResult with _$SearchResult {
  const factory SearchResult({
    @Default([]) List<SearchListing> results,
    @Default(0) int total,
    @Default(1) int page,
    @Default(24) int perPage,
    SearchFacets? facets,
  }) = _SearchResult;
}

/// Search parameters entity.
/// 
/// Matches web_client/domain/models/SearchParams.ts
@freezed
abstract class SearchParams with _$SearchParams {
  const factory SearchParams({
    String? query,
    int? category,
    int? location,
    double? priceMin,
    double? priceMax,
    String? condition,
    String? sort,
    @Default(1) int page,
    @Default(24) int perPage,
    Map<String, dynamic>? attributes,
  }) = _SearchParams;
}
