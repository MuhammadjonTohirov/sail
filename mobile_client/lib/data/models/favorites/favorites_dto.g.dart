// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorites_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FavoriteDto _$FavoriteDtoFromJson(Map<String, dynamic> json) => _FavoriteDto(
  id: (json['id'] as num).toInt(),
  listingId: (json['listing_id'] as num).toInt(),
  title: json['title'] as String,
  price: (json['price'] as num?)?.toDouble(),
  currency: json['currency'] as String?,
  thumbnailUrl: json['thumbnail_url'] as String?,
  locationName: json['location_name'] as String?,
  status: json['status'] as String?,
  addedAt: json['added_at'] as String?,
);

Map<String, dynamic> _$FavoriteDtoToJson(_FavoriteDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'listing_id': instance.listingId,
      'title': instance.title,
      'price': instance.price,
      'currency': instance.currency,
      'thumbnail_url': instance.thumbnailUrl,
      'location_name': instance.locationName,
      'status': instance.status,
      'added_at': instance.addedAt,
    };

_FavoriteToggleResponseDto _$FavoriteToggleResponseDtoFromJson(
  Map<String, dynamic> json,
) => _FavoriteToggleResponseDto(
  isFavorite: json['is_favorite'] as bool,
  listingId: (json['listing_id'] as num).toInt(),
);

Map<String, dynamic> _$FavoriteToggleResponseDtoToJson(
  _FavoriteToggleResponseDto instance,
) => <String, dynamic>{
  'is_favorite': instance.isFavorite,
  'listing_id': instance.listingId,
};

_RecentlyViewedDto _$RecentlyViewedDtoFromJson(Map<String, dynamic> json) =>
    _RecentlyViewedDto(
      id: (json['id'] as num).toInt(),
      listingId: (json['listing_id'] as num).toInt(),
      title: json['title'] as String,
      price: (json['price'] as num?)?.toDouble(),
      currency: json['currency'] as String?,
      thumbnailUrl: json['thumbnail_url'] as String?,
      locationName: json['location_name'] as String?,
      viewedAt: json['viewed_at'] as String?,
    );

Map<String, dynamic> _$RecentlyViewedDtoToJson(_RecentlyViewedDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'listing_id': instance.listingId,
      'title': instance.title,
      'price': instance.price,
      'currency': instance.currency,
      'thumbnail_url': instance.thumbnailUrl,
      'location_name': instance.locationName,
      'viewed_at': instance.viewedAt,
    };
