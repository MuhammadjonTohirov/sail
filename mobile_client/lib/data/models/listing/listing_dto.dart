import 'package:freezed_annotation/freezed_annotation.dart';

part 'listing_dto.freezed.dart';
part 'listing_dto.g.dart';

/// Parses a value that may be a string or number into a double.
/// Server sends price_amount as "800.00" (string) in some endpoints.
double _parseDouble(dynamic value) {
  if (value is double) return value;
  if (value is int) return value.toDouble();
  if (value is String) return double.tryParse(value) ?? 0.0;
  return 0.0;
}

double? _parseDoubleNullable(dynamic value) {
  if (value == null) return null;
  return _parseDouble(value);
}

/// Listing media DTO matching server response.
@freezed
abstract class ListingMediaDto with _$ListingMediaDto {
  const factory ListingMediaDto({
    required int id,
    String? type,
    String? image,
    @JsonKey(name: 'image_url') String? imageUrl,
    int? width,
    int? height,
    int? order,
    @JsonKey(name: 'uploaded_at') String? uploadedAt,
  }) = _ListingMediaDto;

  factory ListingMediaDto.fromJson(Map<String, dynamic> json) =>
      _$ListingMediaDtoFromJson(json);
}

/// Listing seller DTO matching server response.
@freezed
abstract class ListingSellerDto with _$ListingSellerDto {
  const factory ListingSellerDto({
    required int id,
    String? name,
    @JsonKey(name: 'avatar_url') String? avatarUrl,
    String? since,
    String? logo,
    String? banner,
    String? phone,
    @JsonKey(name: 'last_active_at') String? lastActiveAt,
  }) = _ListingSellerDto;

  factory ListingSellerDto.fromJson(Map<String, dynamic> json) =>
      _$ListingSellerDtoFromJson(json);
}

/// Listing user DTO matching server response.
@freezed
abstract class ListingUserDto with _$ListingUserDto {
  const factory ListingUserDto({
    required int id,
    String? phone,
    String? name,
    @JsonKey(name: 'display_name') String? displayName,
    @JsonKey(name: 'phone_e164') String? phoneE164,
  }) = _ListingUserDto;

  factory ListingUserDto.fromJson(Map<String, dynamic> json) =>
      _$ListingUserDtoFromJson(json);
}

/// Listing attribute value DTO matching server ListingSerializer.get_attributes.
@freezed
abstract class ListingAttributeDto with _$ListingAttributeDto {
  const factory ListingAttributeDto({
    int? attribute,
    required String key,
    required dynamic value,
    String? label,
    String? type,
  }) = _ListingAttributeDto;

  factory ListingAttributeDto.fromJson(Map<String, dynamic> json) =>
      _$ListingAttributeDtoFromJson(json);
}

/// Listing DTO matching server response.
/// 
/// Matches web_client/data/models/ListingDTO.ts
@freezed
abstract class ListingDto with _$ListingDto {
  const factory ListingDto({
    required int id,
    required String title,
    String? description,
    @JsonKey(name: 'price_amount', fromJson: _parseDouble) required double priceAmount,
    @JsonKey(name: 'price_currency') required String priceCurrency,
    @JsonKey(name: 'is_price_negotiable') bool? isPriceNegotiable,
    required String condition,
    @JsonKey(name: 'deal_type') String? dealType, // 'sell', 'exchange', 'free'
    @JsonKey(name: 'seller_type') String? sellerType, // 'person', 'business'
    int? category,
    @JsonKey(name: 'category_name') String? categoryName,
    @JsonKey(name: 'category_slug') String? categorySlug,
    int? location,
    @JsonKey(name: 'location_name') String? locationName,
    @JsonKey(name: 'location_slug') String? locationSlug,
    double? lat,
    double? lon,
    List<ListingMediaDto>? media,
    @JsonKey(name: 'media_urls') List<String>? mediaUrls,
    List<ListingAttributeDto>? attributes,
    String? status,
    @JsonKey(name: 'contact_name') String? contactName,
    @JsonKey(name: 'contact_email') String? contactEmail,
    @JsonKey(name: 'contact_phone') String? contactPhone,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'refreshed_at') String? refreshedAt,
    @JsonKey(name: 'expires_at') String? expiresAt,
    @JsonKey(name: 'quality_score', fromJson: _parseDoubleNullable) double? qualityScore,
    @JsonKey(name: 'contact_phone_masked') String? contactPhoneMasked,
    @JsonKey(name: 'price_normalized', fromJson: _parseDoubleNullable) double? priceNormalized,
    @JsonKey(name: 'is_promoted') bool? isPromoted,
    @JsonKey(name: 'view_count') int? viewCount,
    @JsonKey(name: 'favorite_count') int? favoriteCount,
    @JsonKey(name: 'interest_count') int? interestCount,
    @JsonKey(name: 'user_id') int? userId,
    ListingUserDto? user,
    ListingSellerDto? seller,
  }) = _ListingDto;

  factory ListingDto.fromJson(Map<String, dynamic> json) =>
      _$ListingDtoFromJson(json);
}

/// Listing payload DTO for create/update requests.
/// 
/// Matches web_client/data/models/ListingDTO.ts ListingPayloadDTO
@freezed
abstract class ListingPayloadDto with _$ListingPayloadDto {
  const factory ListingPayloadDto({
    required String title,
    String? description,
    @JsonKey(name: 'price_amount') required dynamic priceAmount, // String or number
    @JsonKey(name: 'price_currency') required String priceCurrency,
    @JsonKey(name: 'is_price_negotiable') bool? isPriceNegotiable,
    required String condition,
    @JsonKey(name: 'deal_type') String? dealType,
    @JsonKey(name: 'seller_type') String? sellerType,
    required int category,
    required int location,
    double? lat,
    double? lon,
    List<ListingAttributePayloadDto>? attributes,
    @JsonKey(name: 'contact_name') String? contactName,
    @JsonKey(name: 'contact_email') String? contactEmail,
    @JsonKey(name: 'contact_phone') String? contactPhone,
  }) = _ListingPayloadDto;

  factory ListingPayloadDto.fromJson(Map<String, dynamic> json) =>
      _$ListingPayloadDtoFromJson(json);
}

/// Listing attribute payload for create/update.
@freezed
abstract class ListingAttributePayloadDto with _$ListingAttributePayloadDto {
  const factory ListingAttributePayloadDto({
    required int attribute,
    required dynamic value,
  }) = _ListingAttributePayloadDto;

  factory ListingAttributePayloadDto.fromJson(Map<String, dynamic> json) =>
      _$ListingAttributePayloadDtoFromJson(json);
}

/// Media reorder request payload.
@freezed
abstract class MediaReorderRequestDto with _$MediaReorderRequestDto {
  const factory MediaReorderRequestDto({
    @JsonKey(name: 'media_ids') required List<int> mediaIds,
  }) = _MediaReorderRequestDto;

  factory MediaReorderRequestDto.fromJson(Map<String, dynamic> json) =>
      _$MediaReorderRequestDtoFromJson(json);
}

/// Listing share request payload.
@freezed
abstract class ListingShareRequestDto with _$ListingShareRequestDto {
  const factory ListingShareRequestDto({
    @JsonKey(name: 'telegram_chat_ids') required List<int> telegramChatIds,
  }) = _ListingShareRequestDto;

  factory ListingShareRequestDto.fromJson(Map<String, dynamic> json) =>
      _$ListingShareRequestDtoFromJson(json);
}
