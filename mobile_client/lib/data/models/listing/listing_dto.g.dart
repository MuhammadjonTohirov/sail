// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listing_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ListingMediaDto _$ListingMediaDtoFromJson(Map<String, dynamic> json) =>
    _ListingMediaDto(
      id: (json['id'] as num).toInt(),
      type: json['type'] as String?,
      image: json['image'] as String?,
      imageUrl: json['image_url'] as String?,
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
      order: (json['order'] as num?)?.toInt(),
      uploadedAt: json['uploaded_at'] as String?,
    );

Map<String, dynamic> _$ListingMediaDtoToJson(_ListingMediaDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'image': instance.image,
      'image_url': instance.imageUrl,
      'width': instance.width,
      'height': instance.height,
      'order': instance.order,
      'uploaded_at': instance.uploadedAt,
    };

_ListingSellerDto _$ListingSellerDtoFromJson(Map<String, dynamic> json) =>
    _ListingSellerDto(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String?,
      avatarUrl: json['avatar_url'] as String?,
      since: json['since'] as String?,
      logo: json['logo'] as String?,
      banner: json['banner'] as String?,
      phone: json['phone'] as String?,
      lastActiveAt: json['last_active_at'] as String?,
    );

Map<String, dynamic> _$ListingSellerDtoToJson(_ListingSellerDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'avatar_url': instance.avatarUrl,
      'since': instance.since,
      'logo': instance.logo,
      'banner': instance.banner,
      'phone': instance.phone,
      'last_active_at': instance.lastActiveAt,
    };

_ListingUserDto _$ListingUserDtoFromJson(Map<String, dynamic> json) =>
    _ListingUserDto(
      id: (json['id'] as num).toInt(),
      phone: json['phone'] as String?,
      name: json['name'] as String?,
      displayName: json['display_name'] as String?,
      phoneE164: json['phone_e164'] as String?,
    );

Map<String, dynamic> _$ListingUserDtoToJson(_ListingUserDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'phone': instance.phone,
      'name': instance.name,
      'display_name': instance.displayName,
      'phone_e164': instance.phoneE164,
    };

_ListingAttributeDto _$ListingAttributeDtoFromJson(Map<String, dynamic> json) =>
    _ListingAttributeDto(
      attribute: (json['attribute'] as num?)?.toInt(),
      key: json['key'] as String,
      value: json['value'],
      label: json['label'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$ListingAttributeDtoToJson(
  _ListingAttributeDto instance,
) => <String, dynamic>{
  'attribute': instance.attribute,
  'key': instance.key,
  'value': instance.value,
  'label': instance.label,
  'type': instance.type,
};

_ListingDto _$ListingDtoFromJson(Map<String, dynamic> json) => _ListingDto(
  id: (json['id'] as num).toInt(),
  title: json['title'] as String,
  description: json['description'] as String?,
  priceAmount: _parseDouble(json['price_amount']),
  priceCurrency: json['price_currency'] as String,
  isPriceNegotiable: json['is_price_negotiable'] as bool?,
  condition: json['condition'] as String,
  dealType: json['deal_type'] as String?,
  sellerType: json['seller_type'] as String?,
  category: (json['category'] as num?)?.toInt(),
  categoryName: json['category_name'] as String?,
  categorySlug: json['category_slug'] as String?,
  location: (json['location'] as num?)?.toInt(),
  locationName: json['location_name'] as String?,
  locationSlug: json['location_slug'] as String?,
  lat: (json['lat'] as num?)?.toDouble(),
  lon: (json['lon'] as num?)?.toDouble(),
  media: (json['media'] as List<dynamic>?)
      ?.map((e) => ListingMediaDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  mediaUrls: (json['media_urls'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  attributes: (json['attributes'] as List<dynamic>?)
      ?.map((e) => ListingAttributeDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  status: json['status'] as String?,
  contactName: json['contact_name'] as String?,
  contactEmail: json['contact_email'] as String?,
  contactPhone: json['contact_phone'] as String?,
  createdAt: json['created_at'] as String?,
  updatedAt: json['updated_at'] as String?,
  refreshedAt: json['refreshed_at'] as String?,
  expiresAt: json['expires_at'] as String?,
  qualityScore: _parseDoubleNullable(json['quality_score']),
  contactPhoneMasked: json['contact_phone_masked'] as String?,
  priceNormalized: _parseDoubleNullable(json['price_normalized']),
  isPromoted: json['is_promoted'] as bool?,
  viewCount: (json['view_count'] as num?)?.toInt(),
  favoriteCount: (json['favorite_count'] as num?)?.toInt(),
  interestCount: (json['interest_count'] as num?)?.toInt(),
  userId: (json['user_id'] as num?)?.toInt(),
  user: json['user'] == null
      ? null
      : ListingUserDto.fromJson(json['user'] as Map<String, dynamic>),
  seller: json['seller'] == null
      ? null
      : ListingSellerDto.fromJson(json['seller'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ListingDtoToJson(_ListingDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'price_amount': instance.priceAmount,
      'price_currency': instance.priceCurrency,
      'is_price_negotiable': instance.isPriceNegotiable,
      'condition': instance.condition,
      'deal_type': instance.dealType,
      'seller_type': instance.sellerType,
      'category': instance.category,
      'category_name': instance.categoryName,
      'category_slug': instance.categorySlug,
      'location': instance.location,
      'location_name': instance.locationName,
      'location_slug': instance.locationSlug,
      'lat': instance.lat,
      'lon': instance.lon,
      'media': instance.media,
      'media_urls': instance.mediaUrls,
      'attributes': instance.attributes,
      'status': instance.status,
      'contact_name': instance.contactName,
      'contact_email': instance.contactEmail,
      'contact_phone': instance.contactPhone,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'refreshed_at': instance.refreshedAt,
      'expires_at': instance.expiresAt,
      'quality_score': instance.qualityScore,
      'contact_phone_masked': instance.contactPhoneMasked,
      'price_normalized': instance.priceNormalized,
      'is_promoted': instance.isPromoted,
      'view_count': instance.viewCount,
      'favorite_count': instance.favoriteCount,
      'interest_count': instance.interestCount,
      'user_id': instance.userId,
      'user': instance.user,
      'seller': instance.seller,
    };

_ListingPayloadDto _$ListingPayloadDtoFromJson(Map<String, dynamic> json) =>
    _ListingPayloadDto(
      title: json['title'] as String,
      description: json['description'] as String?,
      priceAmount: json['price_amount'],
      priceCurrency: json['price_currency'] as String,
      isPriceNegotiable: json['is_price_negotiable'] as bool?,
      condition: json['condition'] as String,
      dealType: json['deal_type'] as String?,
      sellerType: json['seller_type'] as String?,
      category: (json['category'] as num).toInt(),
      location: (json['location'] as num).toInt(),
      lat: (json['lat'] as num?)?.toDouble(),
      lon: (json['lon'] as num?)?.toDouble(),
      attributes: (json['attributes'] as List<dynamic>?)
          ?.map(
            (e) =>
                ListingAttributePayloadDto.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
      contactName: json['contact_name'] as String?,
      contactEmail: json['contact_email'] as String?,
      contactPhone: json['contact_phone'] as String?,
    );

Map<String, dynamic> _$ListingPayloadDtoToJson(_ListingPayloadDto instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'price_amount': instance.priceAmount,
      'price_currency': instance.priceCurrency,
      'is_price_negotiable': instance.isPriceNegotiable,
      'condition': instance.condition,
      'deal_type': instance.dealType,
      'seller_type': instance.sellerType,
      'category': instance.category,
      'location': instance.location,
      'lat': instance.lat,
      'lon': instance.lon,
      'attributes': instance.attributes,
      'contact_name': instance.contactName,
      'contact_email': instance.contactEmail,
      'contact_phone': instance.contactPhone,
    };

_ListingAttributePayloadDto _$ListingAttributePayloadDtoFromJson(
  Map<String, dynamic> json,
) => _ListingAttributePayloadDto(
  attribute: (json['attribute'] as num).toInt(),
  value: json['value'],
);

Map<String, dynamic> _$ListingAttributePayloadDtoToJson(
  _ListingAttributePayloadDto instance,
) => <String, dynamic>{
  'attribute': instance.attribute,
  'value': instance.value,
};

_MediaReorderRequestDto _$MediaReorderRequestDtoFromJson(
  Map<String, dynamic> json,
) => _MediaReorderRequestDto(
  mediaIds: (json['media_ids'] as List<dynamic>)
      .map((e) => (e as num).toInt())
      .toList(),
);

Map<String, dynamic> _$MediaReorderRequestDtoToJson(
  _MediaReorderRequestDto instance,
) => <String, dynamic>{'media_ids': instance.mediaIds};

_ListingShareRequestDto _$ListingShareRequestDtoFromJson(
  Map<String, dynamic> json,
) => _ListingShareRequestDto(
  telegramChatIds: (json['telegram_chat_ids'] as List<dynamic>)
      .map((e) => (e as num).toInt())
      .toList(),
);

Map<String, dynamic> _$ListingShareRequestDtoToJson(
  _ListingShareRequestDto instance,
) => <String, dynamic>{'telegram_chat_ids': instance.telegramChatIds};
