// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SearchListingDto _$SearchListingDtoFromJson(Map<String, dynamic> json) =>
    _SearchListingDto(
      id: json['id'] as String,
      title: json['title'] as String,
      price: (json['price'] as num?)?.toDouble(),
      description: json['description'] as String?,
      condition: json['condition'] as String?,
      qualityScore: (json['quality_score'] as num?)?.toDouble(),
      score: (json['score'] as num?)?.toDouble(),
      currency: json['currency'] as String?,
      mediaUrls: (json['media_urls'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      locationNameRu: json['location_name_ru'] as String?,
      locationNameUz: json['location_name_uz'] as String?,
      refreshedAt: json['refreshed_at'] as String?,
      isPromoted: json['is_promoted'] as bool?,
      seller: json['seller'] == null
          ? null
          : ListingSellerDto.fromJson(json['seller'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SearchListingDtoToJson(_SearchListingDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'price': instance.price,
      'description': instance.description,
      'condition': instance.condition,
      'quality_score': instance.qualityScore,
      'score': instance.score,
      'currency': instance.currency,
      'media_urls': instance.mediaUrls,
      'location_name_ru': instance.locationNameRu,
      'location_name_uz': instance.locationNameUz,
      'refreshed_at': instance.refreshedAt,
      'is_promoted': instance.isPromoted,
      'seller': instance.seller,
    };

_SearchFacetOptionDto _$SearchFacetOptionDtoFromJson(
  Map<String, dynamic> json,
) => _SearchFacetOptionDto(
  key: json['key'] as String?,
  count: (json['count'] as num?)?.toInt(),
);

Map<String, dynamic> _$SearchFacetOptionDtoToJson(
  _SearchFacetOptionDto instance,
) => <String, dynamic>{'key': instance.key, 'count': instance.count};

_SearchPriceRangeFacetDto _$SearchPriceRangeFacetDtoFromJson(
  Map<String, dynamic> json,
) => _SearchPriceRangeFacetDto(
  min: (json['min'] as num?)?.toDouble(),
  max: (json['max'] as num?)?.toDouble(),
  currency: json['currency'] as String?,
);

Map<String, dynamic> _$SearchPriceRangeFacetDtoToJson(
  _SearchPriceRangeFacetDto instance,
) => <String, dynamic>{
  'min': instance.min,
  'max': instance.max,
  'currency': instance.currency,
};

_SearchFacetsDto _$SearchFacetsDtoFromJson(Map<String, dynamic> json) =>
    _SearchFacetsDto(
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => SearchFacetOptionDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      locations: (json['locations'] as List<dynamic>?)
          ?.map((e) => SearchFacetOptionDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      conditions: (json['conditions'] as List<dynamic>?)
          ?.map((e) => SearchFacetOptionDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      priceRange: json['price_range'] == null
          ? null
          : SearchPriceRangeFacetDto.fromJson(
              json['price_range'] as Map<String, dynamic>,
            ),
      attributes: (json['attributes'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
          k,
          (e as List<dynamic>?)
              ?.map(
                (e) => SearchFacetOptionDto.fromJson(e as Map<String, dynamic>),
              )
              .toList(),
        ),
      ),
    );

Map<String, dynamic> _$SearchFacetsDtoToJson(_SearchFacetsDto instance) =>
    <String, dynamic>{
      'categories': instance.categories,
      'locations': instance.locations,
      'conditions': instance.conditions,
      'price_range': instance.priceRange,
      'attributes': instance.attributes,
    };

_SearchResultDto _$SearchResultDtoFromJson(Map<String, dynamic> json) =>
    _SearchResultDto(
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => SearchListingDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: (json['total'] as num?)?.toInt(),
      page: (json['page'] as num?)?.toInt(),
      perPage: (json['per_page'] as num?)?.toInt(),
      facets: json['facets'] == null
          ? null
          : SearchFacetsDto.fromJson(json['facets'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SearchResultDtoToJson(_SearchResultDto instance) =>
    <String, dynamic>{
      'results': instance.results,
      'total': instance.total,
      'page': instance.page,
      'per_page': instance.perPage,
      'facets': instance.facets,
    };
