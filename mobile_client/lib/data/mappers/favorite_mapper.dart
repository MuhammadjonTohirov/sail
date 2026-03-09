/// Favorite mappers for FavoriteDto ↔ Favorite conversion.
library;

import '../../domain/entities/favorite.dart';
import '../models/favorites/favorites_dto.dart';

/// Mapper for FavoriteDto → Favorite.
extension FavoriteDtoMapper on FavoriteDto {
  Favorite toEntity() {
    return Favorite(
      id: id,
      listingId: listingId,
      title: title,
      price: price,
      currency: currency,
      thumbnailUrl: thumbnailUrl,
      locationName: locationName,
      status: status,
      addedAt: addedAt != null ? DateTime.tryParse(addedAt!) : null,
    );
  }
}

/// Mapper for RecentlyViewedDto → RecentlyViewedListing.
extension RecentlyViewedDtoMapper on RecentlyViewedDto {
  RecentlyViewedListing toEntity() {
    return RecentlyViewedListing(
      id: id,
      listingId: listingId,
      title: title,
      price: price,
      currency: currency,
      thumbnailUrl: thumbnailUrl,
      locationName: locationName,
      viewedAt: viewedAt != null ? DateTime.tryParse(viewedAt!) : null,
    );
  }
}
