// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorites_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FavoriteDto _$FavoriteDtoFromJson(Map<String, dynamic> json) => _FavoriteDto(
  id: (json['id'] as num).toInt(),
  listing: (json['listing'] as num).toInt(),
  listingTitle: json['listing_title'] as String,
  listingPrice: _parsePrice(json['listing_price']),
  listingLocation: json['listing_location'] as String?,
  listingMediaUrls: (json['listing_media_urls'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  createdAt: json['created_at'] as String?,
);

Map<String, dynamic> _$FavoriteDtoToJson(_FavoriteDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'listing': instance.listing,
      'listing_title': instance.listingTitle,
      'listing_price': instance.listingPrice,
      'listing_location': instance.listingLocation,
      'listing_media_urls': instance.listingMediaUrls,
      'created_at': instance.createdAt,
    };

_FavoriteToggleResponseDto _$FavoriteToggleResponseDtoFromJson(
  Map<String, dynamic> json,
) => _FavoriteToggleResponseDto(favorited: json['favorited'] as bool);

Map<String, dynamic> _$FavoriteToggleResponseDtoToJson(
  _FavoriteToggleResponseDto instance,
) => <String, dynamic>{'favorited': instance.favorited};

_RecentlyViewedDto _$RecentlyViewedDtoFromJson(Map<String, dynamic> json) =>
    _RecentlyViewedDto(
      id: (json['id'] as num).toInt(),
      listing: (json['listing'] as num).toInt(),
      listingTitle: json['listing_title'] as String,
      listingPrice: _parsePrice(json['listing_price']),
      listingLocation: json['listing_location'] as String?,
      listingMediaUrls: (json['listing_media_urls'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      viewedAt: json['viewed_at'] as String?,
    );

Map<String, dynamic> _$RecentlyViewedDtoToJson(_RecentlyViewedDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'listing': instance.listing,
      'listing_title': instance.listingTitle,
      'listing_price': instance.listingPrice,
      'listing_location': instance.listingLocation,
      'listing_media_urls': instance.listingMediaUrls,
      'viewed_at': instance.viewedAt,
    };
