import 'package:freezed_annotation/freezed_annotation.dart';

import '../listing/listing_dto.dart';

part 'search_dto.freezed.dart';
part 'search_dto.g.dart';

/// Search listing DTO matching server OpenSearch response.
/// 
/// Matches web_client/data/models/SearchDTO.ts
@freezed
abstract class SearchListingDto with _$SearchListingDto {
  const factory SearchListingDto({
    required String id,
    required String title,
    double? price,
    String? description,
    String? condition,
    @JsonKey(name: 'quality_score') double? qualityScore,
    double? score,
    String? currency,
    @JsonKey(name: 'media_urls') List<String>? mediaUrls,
    @JsonKey(name: 'location_name_ru') String? locationNameRu,
    @JsonKey(name: 'location_name_uz') String? locationNameUz,
    @JsonKey(name: 'refreshed_at') String? refreshedAt,
    @JsonKey(name: 'is_promoted') bool? isPromoted,
    ListingSellerDto? seller,
  }) = _SearchListingDto;

  factory SearchListingDto.fromJson(Map<String, dynamic> json) =>
      _$SearchListingDtoFromJson(json);
}

/// Search facet option DTO.
@freezed
abstract class SearchFacetOptionDto with _$SearchFacetOptionDto {
  const factory SearchFacetOptionDto({
    String? key,
    int? count,
  }) = _SearchFacetOptionDto;

  factory SearchFacetOptionDto.fromJson(Map<String, dynamic> json) =>
      _$SearchFacetOptionDtoFromJson(json);
}

/// Search price range facet DTO.
@freezed
abstract class SearchPriceRangeFacetDto with _$SearchPriceRangeFacetDto {
  const factory SearchPriceRangeFacetDto({
    double? min,
    double? max,
    String? currency,
  }) = _SearchPriceRangeFacetDto;

  factory SearchPriceRangeFacetDto.fromJson(Map<String, dynamic> json) =>
      _$SearchPriceRangeFacetDtoFromJson(json);
}

/// Search facets DTO.
@freezed
abstract class SearchFacetsDto with _$SearchFacetsDto {
  const factory SearchFacetsDto({
    List<SearchFacetOptionDto>? categories,
    List<SearchFacetOptionDto>? locations,
    List<SearchFacetOptionDto>? conditions,
    @JsonKey(name: 'price_range') SearchPriceRangeFacetDto? priceRange,
    Map<String, List<SearchFacetOptionDto>?>? attributes,
  }) = _SearchFacetsDto;

  factory SearchFacetsDto.fromJson(Map<String, dynamic> json) =>
      _$SearchFacetsDtoFromJson(json);
}

/// Search result DTO matching server OpenSearch response.
@freezed
abstract class SearchResultDto with _$SearchResultDto {
  const factory SearchResultDto({
    List<SearchListingDto>? results,
    int? total,
    int? page,
    @JsonKey(name: 'per_page') int? perPage,
    SearchFacetsDto? facets,
  }) = _SearchResultDto;

  factory SearchResultDto.fromJson(Map<String, dynamic> json) =>
      _$SearchResultDtoFromJson(json);
}
