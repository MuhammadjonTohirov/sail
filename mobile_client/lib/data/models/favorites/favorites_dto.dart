import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorites_dto.freezed.dart';
part 'favorites_dto.g.dart';

/// Favorite listing DTO matching server response.
/// 
/// Matches web_client/data/models/FavoriteDTO.ts
@freezed
abstract class FavoriteDto with _$FavoriteDto {
  const factory FavoriteDto({
    required int id,
    @JsonKey(name: 'listing_id') required int listingId,
    required String title,
    double? price,
    String? currency,
    @JsonKey(name: 'thumbnail_url') String? thumbnailUrl,
    @JsonKey(name: 'location_name') String? locationName,
    String? status, // 'active', 'sold', 'expired', etc.
    @JsonKey(name: 'added_at') String? addedAt,
  }) = _FavoriteDto;

  factory FavoriteDto.fromJson(Map<String, dynamic> json) =>
      _$FavoriteDtoFromJson(json);
}

/// Toggle favorite response.
@freezed
abstract class FavoriteToggleResponseDto with _$FavoriteToggleResponseDto {
  const factory FavoriteToggleResponseDto({
    @JsonKey(name: 'is_favorite') required bool isFavorite,
    @JsonKey(name: 'listing_id') required int listingId,
  }) = _FavoriteToggleResponseDto;

  factory FavoriteToggleResponseDto.fromJson(Map<String, dynamic> json) =>
      _$FavoriteToggleResponseDtoFromJson(json);
}

/// Recently viewed listing DTO.
/// 
/// Matches web_client/data/models/RecentlyViewedDTO.ts
@freezed
abstract class RecentlyViewedDto with _$RecentlyViewedDto {
  const factory RecentlyViewedDto({
    required int id,
    @JsonKey(name: 'listing_id') required int listingId,
    required String title,
    double? price,
    String? currency,
    @JsonKey(name: 'thumbnail_url') String? thumbnailUrl,
    @JsonKey(name: 'location_name') String? locationName,
    @JsonKey(name: 'viewed_at') String? viewedAt,
  }) = _RecentlyViewedDto;

  factory RecentlyViewedDto.fromJson(Map<String, dynamic> json) =>
      _$RecentlyViewedDtoFromJson(json);
}
