import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_dto.freezed.dart';
part 'chat_dto.g.dart';

/// Chat listing snapshot DTO.
/// 
/// Matches web_client/domain/chat.ts ChatListingSnapshotResponse
@freezed
abstract class ChatListingSnapshotDto with _$ChatListingSnapshotDto {
  const factory ChatListingSnapshotDto({
    @JsonKey(name: 'listing_id') required int listingId,
    required String title,
    @JsonKey(name: 'price_amount') dynamic priceAmount,
    @JsonKey(name: 'price_currency') required String priceCurrency,
    @JsonKey(name: 'thumbnail_url') String? thumbnailUrl,
    String? availability, // 'available', 'unavailable', 'deleted'
    @JsonKey(name: 'availability_checked_at') String? availabilityCheckedAt,
  }) = _ChatListingSnapshotDto;

  factory ChatListingSnapshotDto.fromJson(Map<String, dynamic> json) =>
      _$ChatListingSnapshotDtoFromJson(json);
}

/// Chat participant summary DTO.
@freezed
abstract class ChatParticipantSummaryDto with _$ChatParticipantSummaryDto {
  const factory ChatParticipantSummaryDto({
    @JsonKey(name: 'user_id') required int userId,
    required String role, // 'buyer', 'seller'
    @JsonKey(name: 'display_name') required String displayName,
    @JsonKey(name: 'avatar_url') String? avatarUrl,
  }) = _ChatParticipantSummaryDto;

  factory ChatParticipantSummaryDto.fromJson(Map<String, dynamic> json) =>
      _$ChatParticipantSummaryDtoFromJson(json);
}

/// Chat thread DTO matching server response.
/// 
/// Matches web_client/domain/chat.ts ChatThreadResponse
@freezed
abstract class ChatThreadDto with _$ChatThreadDto {
  const factory ChatThreadDto({
    required String id,
    @JsonKey(name: 'buyer_id') required int buyerId,
    @JsonKey(name: 'seller_id') required int sellerId,
    required String status, // 'active', 'archived', 'closed'
    required ChatListingSnapshotDto listing,
    @JsonKey(name: 'other_participant') ChatParticipantSummaryDto? otherParticipant,
    @JsonKey(name: 'last_message_at') String? lastMessageAt,
    @JsonKey(name: 'last_message_preview') @Default('') String lastMessagePreview,
    @JsonKey(name: 'unread_count') @Default(0) int unreadCount,
    @JsonKey(name: 'is_archived') @Default(false) bool isArchived,
    @JsonKey(name: 'last_read_message_id') String? lastReadMessageId,
    @JsonKey(name: 'last_read_at') String? lastReadAt,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
  }) = _ChatThreadDto;

  factory ChatThreadDto.fromJson(Map<String, dynamic> json) =>
      _$ChatThreadDtoFromJson(json);
}

/// Chat attachment DTO.
@freezed
abstract class ChatAttachmentDto with _$ChatAttachmentDto {
  const factory ChatAttachmentDto({
    required String type, // 'image', 'file'
    required String url,
    String? name,
    int? size,
    @JsonKey(name: 'content_type') String? contentType,
    int? width,
    int? height,
  }) = _ChatAttachmentDto;

  factory ChatAttachmentDto.fromJson(Map<String, dynamic> json) =>
      _$ChatAttachmentDtoFromJson(json);
}

/// Chat message DTO matching server response.
/// 
/// Matches web_client/domain/chat.ts ChatMessageResponse
@freezed
abstract class ChatMessageDto with _$ChatMessageDto {
  const factory ChatMessageDto({
    required String id,
    @JsonKey(name: 'thread_id') required String threadId,
    @JsonKey(name: 'sender_id') required int senderId,
    @JsonKey(name: 'sender_display_name') required String senderDisplayName,
    required String body,
    @Default([]) List<ChatAttachmentDto> attachments,
    @Default({}) Map<String, dynamic> metadata,
    @JsonKey(name: 'client_message_id') String? clientMessageId,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'edited_at') String? editedAt,
    @JsonKey(name: 'deleted_at') String? deletedAt,
    @JsonKey(name: 'is_deleted') @Default(false) bool isDeleted,
  }) = _ChatMessageDto;

  factory ChatMessageDto.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageDtoFromJson(json);
}

/// Chat message page DTO (paginated response).
@freezed
abstract class ChatMessagePageDto with _$ChatMessagePageDto {
  const factory ChatMessagePageDto({
    @Default([]) List<ChatMessageDto> messages,
    @JsonKey(name: 'has_more') @Default(false) bool hasMore,
  }) = _ChatMessagePageDto;

  factory ChatMessagePageDto.fromJson(Map<String, dynamic> json) =>
      _$ChatMessagePageDtoFromJson(json);
}

/// Create thread request payload.
@freezed
abstract class CreateThreadRequestDto with _$CreateThreadRequestDto {
  const factory CreateThreadRequestDto({
    @JsonKey(name: 'listing_id') required int listingId,
    String? message,
    @JsonKey(name: 'client_message_id') String? clientMessageId,
    List<ChatAttachmentDto>? attachments,
  }) = _CreateThreadRequestDto;

  factory CreateThreadRequestDto.fromJson(Map<String, dynamic> json) =>
      _$CreateThreadRequestDtoFromJson(json);
}

/// Send message request payload.
@freezed
abstract class SendMessageRequestDto with _$SendMessageRequestDto {
  const factory SendMessageRequestDto({
    String? body,
    @JsonKey(name: 'client_message_id') String? clientMessageId,
    Map<String, dynamic>? metadata,
    List<ChatAttachmentDto>? attachments,
  }) = _SendMessageRequestDto;

  factory SendMessageRequestDto.fromJson(Map<String, dynamic> json) =>
      _$SendMessageRequestDtoFromJson(json);
}

/// Mark read request payload.
@freezed
abstract class MarkReadRequestDto with _$MarkReadRequestDto {
  const factory MarkReadRequestDto({
    @JsonKey(name: 'message_id') String? messageId,
  }) = _MarkReadRequestDto;

  factory MarkReadRequestDto.fromJson(Map<String, dynamic> json) =>
      _$MarkReadRequestDtoFromJson(json);
}

/// Sync availability result DTO.
@freezed
abstract class SyncAvailabilityResultDto with _$SyncAvailabilityResultDto {
  const factory SyncAvailabilityResultDto({
    @Default(0) int synced,
    @Default(0) int updated,
  }) = _SyncAvailabilityResultDto;

  factory SyncAvailabilityResultDto.fromJson(Map<String, dynamic> json) =>
      _$SyncAvailabilityResultDtoFromJson(json);
}

/// Bulk listing status result DTO.
@freezed
abstract class BulkListingStatusResultDto with _$BulkListingStatusResultDto {
  const factory BulkListingStatusResultDto({
    @Default({}) Map<String, String> statuses, // listingId -> 'available'|'unavailable'|'deleted'
  }) = _BulkListingStatusResultDto;

  factory BulkListingStatusResultDto.fromJson(Map<String, dynamic> json) =>
      _$BulkListingStatusResultDtoFromJson(json);
}
