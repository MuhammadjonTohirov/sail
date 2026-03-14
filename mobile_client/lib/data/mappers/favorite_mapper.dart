/// Favorite mappers for FavoriteDto ↔ Favorite conversion.
library;

import '../../domain/entities/favorite.dart';
import '../models/favorites/favorites_dto.dart';

/// Mapper for FavoriteDto → Favorite.
extension FavoriteDtoMapper on FavoriteDto {
  Favorite toEntity() {
    return Favorite(
      id: id,
      listingId: listing,
      title: listingTitle,
      price: listingPrice,
      locationName: listingLocation,
      mediaUrls: listingMediaUrls,
      createdAt: createdAt != null ? DateTime.tryParse(createdAt!) : null,
    );
  }
}

/// Mapper for RecentlyViewedDto → RecentlyViewedListing.
extension RecentlyViewedDtoMapper on RecentlyViewedDto {
  RecentlyViewedListing toEntity() {
    return RecentlyViewedListing(
      id: id,
      listingId: listing,
      title: listingTitle,
      price: listingPrice,
      locationName: listingLocation,
      mediaUrls: listingMediaUrls,
      viewedAt: viewedAt != null ? DateTime.tryParse(viewedAt!) : null,
    );
  }
}
