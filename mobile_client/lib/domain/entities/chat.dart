import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat.freezed.dart';

/// Chat thread status.
enum ChatThreadStatus { active, archived, closed }

/// Listing availability status.
enum ListingAvailability { available, unavailable, deleted }

/// Chat participant role.
enum ChatParticipantRole { buyer, seller }

/// Chat attachment type.
enum ChatAttachmentType { image, file }

/// Chat listing snapshot entity.
@freezed
abstract class ChatListingSnapshot with _$ChatListingSnapshot {
  const factory ChatListingSnapshot({
    required int listingId,
    required String title,
    dynamic priceAmount,
    required String priceCurrency,
    String? thumbnailUrl,
    @Default(ListingAvailability.available) ListingAvailability availability,
    String? availabilityCheckedAt,
  }) = _ChatListingSnapshot;
}

/// Chat participant summary entity.
@freezed
abstract class ChatParticipantSummary with _$ChatParticipantSummary {
  const factory ChatParticipantSummary({
    required int userId,
    required ChatParticipantRole role,
    required String displayName,
    String? avatarUrl,
  }) = _ChatParticipantSummary;
}

/// Chat attachment entity.
@freezed
abstract class ChatAttachment with _$ChatAttachment {
  const factory ChatAttachment({
    required ChatAttachmentType type,
    required String url,
    String? name,
    int? size,
    String? contentType,
    int? width,
    int? height,
  }) = _ChatAttachment;
}

/// Chat thread entity.
/// 
/// Matches web_client/domain/chat.ts ChatThread
@freezed
abstract class ChatThread with _$ChatThread {
  const factory ChatThread({
    required String id,
    required int buyerId,
    required int sellerId,
    required ChatThreadStatus status,
    required ChatListingSnapshot listing,
    ChatParticipantSummary? otherParticipant,
    String? lastMessageAt,
    @Default('') String lastMessagePreview,
    @Default(0) int unreadCount,
    @Default(false) bool isArchived,
    String? lastReadMessageId,
    String? lastReadAt,
    required String createdAt,
    required String updatedAt,
  }) = _ChatThread;
}

/// Chat message entity.
/// 
/// Matches web_client/domain/chat.ts ChatMessage
@freezed
abstract class ChatMessage with _$ChatMessage {
  const factory ChatMessage({
    required String id,
    required String threadId,
    required int senderId,
    required String senderDisplayName,
    required String body,
    @Default([]) List<ChatAttachment> attachments,
    @Default({}) Map<String, dynamic> metadata,
    String? clientMessageId,
    required String createdAt,
    String? editedAt,
    String? deletedAt,
    @Default(false) bool isDeleted,
  }) = _ChatMessage;
}

/// Chat message page entity (paginated).
@freezed
abstract class ChatMessagePage with _$ChatMessagePage {
  const factory ChatMessagePage({
    @Default([]) List<ChatMessage> messages,
    @Default(false) bool hasMore,
  }) = _ChatMessagePage;
}

/// Create thread input.
@freezed
abstract class CreateThreadInput with _$CreateThreadInput {
  const factory CreateThreadInput({
    required int listingId,
    String? message,
    String? clientMessageId,
    List<ChatAttachment>? attachments,
  }) = _CreateThreadInput;
}

/// Send message input.
@freezed
abstract class SendMessageInput with _$SendMessageInput {
  const factory SendMessageInput({
    String? body,
    String? clientMessageId,
    Map<String, dynamic>? metadata,
    List<ChatAttachment>? attachments,
  }) = _SendMessageInput;
}
