import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorites_dto.freezed.dart';
part 'favorites_dto.g.dart';

/// Server sends DecimalField as string (e.g. "800.00").
double? _parsePrice(dynamic value) {
  if (value == null) return null;
  if (value is double) return value;
  if (value is int) return value.toDouble();
  if (value is String) return double.tryParse(value);
  return null;
}

/// Favorite listing DTO matching server FavoriteListingSerializer.
///
/// Server fields: id, listing (ID), listing_title, listing_price,
/// listing_location, listing_media_urls, created_at
@freezed
abstract class FavoriteDto with _$FavoriteDto {
  const factory FavoriteDto({
    required int id,
    required int listing,
    @JsonKey(name: 'listing_title') required String listingTitle,
    @JsonKey(name: 'listing_price', fromJson: _parsePrice) double? listingPrice,
    @JsonKey(name: 'listing_location') String? listingLocation,
    @JsonKey(name: 'listing_media_urls') List<String>? listingMediaUrls,
    @JsonKey(name: 'created_at') String? createdAt,
  }) = _FavoriteDto;

  factory FavoriteDto.fromJson(Map<String, dynamic> json) =>
      _$FavoriteDtoFromJson(json);
}

/// Toggle favorite response.
///
/// Server returns: { favorited: bool }
@freezed
abstract class FavoriteToggleResponseDto with _$FavoriteToggleResponseDto {
  const factory FavoriteToggleResponseDto({
    required bool favorited,
  }) = _FavoriteToggleResponseDto;

  factory FavoriteToggleResponseDto.fromJson(Map<String, dynamic> json) =>
      _$FavoriteToggleResponseDtoFromJson(json);
}

/// Recently viewed listing DTO matching server RecentlyViewedListingSerializer.
///
/// Server fields: id, listing (ID), listing_title, listing_price,
/// listing_location, listing_media_urls, viewed_at
@freezed
abstract class RecentlyViewedDto with _$RecentlyViewedDto {
  const factory RecentlyViewedDto({
    required int id,
    required int listing,
    @JsonKey(name: 'listing_title') required String listingTitle,
    @JsonKey(name: 'listing_price', fromJson: _parsePrice) double? listingPrice,
    @JsonKey(name: 'listing_location') String? listingLocation,
    @JsonKey(name: 'listing_media_urls') List<String>? listingMediaUrls,
    @JsonKey(name: 'viewed_at') String? viewedAt,
  }) = _RecentlyViewedDto;

  factory RecentlyViewedDto.fromJson(Map<String, dynamic> json) =>
      _$RecentlyViewedDtoFromJson(json);
}
