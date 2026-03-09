import 'package:freezed_annotation/freezed_annotation.dart';

import 'user.dart';

part 'listing.freezed.dart';

/// Listing media entity.
@freezed
abstract class ListingMedia with _$ListingMedia {
  const factory ListingMedia({
    required int id,
    String? type,
    String? image,
    String? imageUrl,
    int? width,
    int? height,
    int? order,
    String? uploadedAt,
  }) = _ListingMedia;
}

/// Listing attribute value entity.
@freezed
abstract class ListingAttribute with _$ListingAttribute {
  const factory ListingAttribute({
    required String key,
    required dynamic value,
    String? label,
  }) = _ListingAttribute;
}

/// Listing domain entity.
/// 
/// Matches web_client/domain/models/Listing.ts
@freezed
abstract class Listing with _$Listing {
  const factory Listing({
    required int id,
    required String title,
    String? description,
    required double priceAmount,
    required String priceCurrency,
    bool? isPriceNegotiable,
    required String condition,
    String? dealType, // 'sell', 'exchange', 'free'
    String? sellerType, // 'person', 'business'
    required int categoryId,
    String? categoryName,
    String? categorySlug,
    required int locationId,
    String? locationName,
    String? locationSlug,
    double? lat,
    double? lon,
    List<ListingMedia>? media,
    List<String>? mediaUrls,
    List<ListingAttribute>? attributes,
    String? status,
    String? contactName,
    String? contactEmail,
    String? contactPhone,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? refreshedAt,
    DateTime? expiresAt,
    double? qualityScore,
    String? contactPhoneMasked,
    double? priceNormalized,
    bool? isPromoted,
    int? userId,
    ListingUser? user,
    ListingSeller? seller,
  }) = _Listing;
}

/// Listing payload for create/update operations.
/// 
/// Matches web_client/domain/models/ListingPayload.ts
@freezed
abstract class ListingPayload with _$ListingPayload {
  const factory ListingPayload({
    required String title,
    String? description,
    required double priceAmount,
    required String priceCurrency,
    bool? isPriceNegotiable,
    required String condition,
    String? dealType,
    String? sellerType,
    required int categoryId,
    required int locationId,
    double? lat,
    double? lon,
    List<ListingAttributePayload>? attributes,
    String? contactName,
    String? contactEmail,
    String? contactPhone,
  }) = _ListingPayload;
}

/// Listing attribute payload for create/update.
@freezed
abstract class ListingAttributePayload with _$ListingAttributePayload {
  const factory ListingAttributePayload({
    required int attributeId,
    required dynamic value,
  }) = _ListingAttributePayload;
}
