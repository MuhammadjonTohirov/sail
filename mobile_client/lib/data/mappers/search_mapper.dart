/// Search mappers for SearchResultDto ↔ SearchResult conversion.
library;

import '../../domain/entities/search_result.dart';
import '../../domain/entities/user.dart';
import '../models/search/search_dto.dart';
import '../models/listing/listing_dto.dart';

/// Mapper for ListingSellerDto → ListingSeller (for search results).
extension SearchListingSellerDtoMapper on ListingSellerDto {
  ListingSeller toEntity() {
    return ListingSeller(
      id: id,
      name: name,
      avatarUrl: avatarUrl,
      since: since,
      logo: logo,
      banner: banner,
      phone: phone,
      lastActiveAt: lastActiveAt,
    );
  }
}

/// Mapper for SearchListingDto → SearchListing.
extension SearchListingDtoMapper on SearchListingDto {
  SearchListing toEntity() {
    return SearchListing(
      id: id,
      title: title,
      price: price,
      description: description,
      condition: condition,
      qualityScore: qualityScore,
      score: score,
      currency: currency,
      mediaUrls: mediaUrls,
      locationNameRu: locationNameRu,
      locationNameUz: locationNameUz,
      refreshedAt: refreshedAt,
      isPromoted: isPromoted,
      seller: seller?.toEntity(),
    );
  }
}

/// Mapper for SearchFacetOptionDto → SearchFacetOption.
extension SearchFacetOptionDtoMapper on SearchFacetOptionDto {
  SearchFacetOption toEntity() {
    return SearchFacetOption(
      key: key,
      count: count,
    );
  }
}

/// Mapper for SearchPriceRangeFacetDto → SearchPriceRangeFacet.
extension SearchPriceRangeFacetDtoMapper on SearchPriceRangeFacetDto {
  SearchPriceRangeFacet toEntity() {
    return SearchPriceRangeFacet(
      min: min,
      max: max,
      currency: currency,
    );
  }
}

/// Mapper for SearchFacetsDto → SearchFacets.
extension SearchFacetsDtoMapper on SearchFacetsDto {
  SearchFacets toEntity() {
    return SearchFacets(
      categories: categories?.map((f) => f.toEntity()).toList(),
      locations: locations?.map((f) => f.toEntity()).toList(),
      conditions: conditions?.map((f) => f.toEntity()).toList(),
      priceRange: priceRange?.toEntity(),
      attributes: attributes?.map(
        (key, value) => MapEntry(
          key,
          value?.map((f) => f.toEntity()).toList() ?? [],
        ),
      ),
    );
  }
}

/// Mapper for SearchResultDto → SearchResult.
extension SearchResultDtoMapper on SearchResultDto {
  SearchResult toEntity() {
    return SearchResult(
      results: results?.map((r) => r.toEntity()).toList() ?? [],
      total: total ?? 0,
      page: page ?? 1,
      perPage: perPage ?? 24,
      facets: facets?.toEntity(),
    );
  }
}

/// Mapper for SearchParams → query parameters map.
extension SearchParamsMapper on SearchParams {
  Map<String, dynamic> toQueryParams() {
    final params = <String, dynamic>{};
    
    if (query != null && query!.isNotEmpty) params['q'] = query;
    if (category != null) params['category'] = category.toString();
    if (location != null) params['location'] = location.toString();
    if (priceMin != null) params['price_min'] = priceMin.toString();
    if (priceMax != null) params['price_max'] = priceMax.toString();
    if (condition != null) params['condition'] = condition;
    if (sort != null) params['sort'] = sort;
    params['page'] = page.toString();
    params['per_page'] = perPage.toString();
    
    // Add dynamic attributes
    attributes?.forEach((key, value) {
      if (value != null) {
        params['attr_$key'] = value.toString();
      }
    });
    
    return params;
  }
}
