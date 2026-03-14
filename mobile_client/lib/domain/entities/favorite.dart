import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite.freezed.dart';

/// Favorite listing entity.
@freezed
abstract class Favorite with _$Favorite {
  const factory Favorite({
    required int id,
    required int listingId,
    required String title,
    double? price,
    String? locationName,
    List<String>? mediaUrls,
    DateTime? createdAt,
  }) = _Favorite;
}

/// Recently viewed listing entity.
@freezed
abstract class RecentlyViewedListing with _$RecentlyViewedListing {
  const factory RecentlyViewedListing({
    required int id,
    required int listingId,
    required String title,
    double? price,
    String? locationName,
    List<String>? mediaUrls,
    DateTime? viewedAt,
  }) = _RecentlyViewedListing;
}
