/// Listing mappers for ListingDto ↔ Listing conversion.
library;

import '../../domain/entities/listing.dart';
import '../../domain/entities/user.dart';
import '../models/listing/listing_dto.dart';

/// Mapper for ListingMediaDto → ListingMedia.
extension ListingMediaDtoMapper on ListingMediaDto {
  ListingMedia toEntity() {
    return ListingMedia(
      id: id,
      type: type,
      image: image,
      imageUrl: imageUrl,
      width: width,
      height: height,
      order: order,
      uploadedAt: uploadedAt,
    );
  }
}

/// Mapper for ListingAttributeDto → ListingAttribute.
extension ListingAttributeDtoMapper on ListingAttributeDto {
  ListingAttribute toEntity() {
    return ListingAttribute(
      attributeId: attribute,
      key: key,
      value: value,
      label: label,
      type: type,
    );
  }
}

/// Mapper for ListingUserDto → ListingUser.
extension ListingUserDtoMapper on ListingUserDto {
  ListingUser toEntity() {
    return ListingUser(
      id: id,
      phone: phone,
      name: name,
      displayName: displayName,
      phoneE164: phoneE164,
    );
  }
}

/// Mapper for ListingSellerDto → ListingSeller.
extension ListingSellerDtoMapper on ListingSellerDto {
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

/// Mapper for ListingDto → Listing.
extension ListingDtoMapper on ListingDto {
  Listing toEntity() {
    return Listing(
      id: id,
      title: title,
      description: description,
      priceAmount: priceAmount,
      priceCurrency: priceCurrency,
      isPriceNegotiable: isPriceNegotiable,
      condition: condition,
      dealType: dealType,
      sellerType: sellerType,
      categoryId: category ?? 0,
      categoryName: categoryName,
      categorySlug: categorySlug,
      locationId: location ?? 0,
      locationName: locationName,
      locationSlug: locationSlug,
      lat: lat,
      lon: lon,
      media: media?.map((m) => m.toEntity()).toList(),
      mediaUrls: mediaUrls,
      attributes: attributes?.map((a) => a.toEntity()).toList(),
      status: status,
      contactName: contactName,
      contactEmail: contactEmail,
      contactPhone: contactPhone,
      createdAt: createdAt != null ? DateTime.tryParse(createdAt!) : null,
      updatedAt: updatedAt != null ? DateTime.tryParse(updatedAt!) : null,
      refreshedAt: refreshedAt != null ? DateTime.tryParse(refreshedAt!) : null,
      expiresAt: expiresAt != null ? DateTime.tryParse(expiresAt!) : null,
      qualityScore: qualityScore,
      contactPhoneMasked: contactPhoneMasked,
      priceNormalized: priceNormalized,
      isPromoted: isPromoted,
      viewCount: viewCount ?? 0,
      favoriteCount: favoriteCount ?? 0,
      interestCount: interestCount ?? 0,
      userId: userId,
      user: user?.toEntity(),
      seller: seller?.toEntity(),
    );
  }
}

/// Mapper for ListingPayload → ListingPayloadDto.
extension ListingPayloadMapper on ListingPayload {
  ListingPayloadDto toDto() {
    return ListingPayloadDto(
      title: title,
      description: description,
      priceAmount: priceAmount,
      priceCurrency: priceCurrency,
      isPriceNegotiable: isPriceNegotiable,
      condition: condition,
      dealType: dealType,
      sellerType: sellerType,
      category: categoryId,
      location: locationId,
      lat: lat,
      lon: lon,
      attributes: attributes?.map((a) => a.toDto()).toList(),
      contactName: contactName,
      contactEmail: contactEmail,
      contactPhone: contactPhone,
    );
  }
}

/// Mapper for ListingAttributePayload → ListingAttributePayloadDto.
extension ListingAttributePayloadMapper on ListingAttributePayload {
  ListingAttributePayloadDto toDto() {
    return ListingAttributePayloadDto(
      attribute: attributeId,
      value: value,
    );
  }
}
