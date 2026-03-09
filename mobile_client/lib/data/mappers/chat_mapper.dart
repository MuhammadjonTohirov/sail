/// Chat mappers for ChatDto ↔ Chat conversion.
library;

import '../../domain/entities/chat.dart';
import '../models/chat/chat_dto.dart';

/// Mapper for ChatListingSnapshotDto → ChatListingSnapshot.
extension ChatListingSnapshotDtoMapper on ChatListingSnapshotDto {
  ChatListingSnapshot toEntity() {
    return ChatListingSnapshot(
      listingId: listingId,
      title: title,
      priceAmount: priceAmount,
      priceCurrency: priceCurrency,
      thumbnailUrl: thumbnailUrl,
      availability: _parseAvailability(availability),
      availabilityCheckedAt: availabilityCheckedAt,
    );
  }

  static ListingAvailability _parseAvailability(String? status) {
    return switch (status?.toLowerCase()) {
      'available' => ListingAvailability.available,
      'unavailable' => ListingAvailability.unavailable,
      'deleted' => ListingAvailability.deleted,
      _ => ListingAvailability.available,
    };
  }
}

/// Mapper for ChatParticipantSummaryDto → ChatParticipantSummary.
extension ChatParticipantSummaryDtoMapper on ChatParticipantSummaryDto {
  ChatParticipantSummary toEntity() {
    return ChatParticipantSummary(
      userId: userId,
      role: _parseRole(role),
      displayName: displayName,
      avatarUrl: avatarUrl,
    );
  }

  static ChatParticipantRole _parseRole(String role) {
    return switch (role.toLowerCase()) {
      'buyer' => ChatParticipantRole.buyer,
      'seller' => ChatParticipantRole.seller,
      _ => ChatParticipantRole.buyer,
    };
  }
}

/// Mapper for ChatAttachmentDto → ChatAttachment.
extension ChatAttachmentDtoMapper on ChatAttachmentDto {
  ChatAttachment toEntity() {
    return ChatAttachment(
      type: _parseType(type),
      url: url,
      name: name,
      size: size,
      contentType: contentType,
      width: width,
      height: height,
    );
  }

  static ChatAttachmentType _parseType(String type) {
    return switch (type.toLowerCase()) {
      'image' => ChatAttachmentType.image,
      'file' => ChatAttachmentType.file,
      _ => ChatAttachmentType.file,
    };
  }
}

/// Mapper for ChatThreadDto → ChatThread.
extension ChatThreadDtoMapper on ChatThreadDto {
  ChatThread toEntity() {
    return ChatThread(
      id: id,
      buyerId: buyerId,
      sellerId: sellerId,
      status: _parseStatus(status),
      listing: listing.toEntity(),
      otherParticipant: otherParticipant?.toEntity(),
      lastMessageAt: lastMessageAt,
      lastMessagePreview: lastMessagePreview,
      unreadCount: unreadCount,
      isArchived: isArchived,
      lastReadMessageId: lastReadMessageId,
      lastReadAt: lastReadAt,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  static ChatThreadStatus _parseStatus(String status) {
    return switch (status.toLowerCase()) {
      'active' => ChatThreadStatus.active,
      'archived' => ChatThreadStatus.archived,
      'closed' => ChatThreadStatus.closed,
      _ => ChatThreadStatus.active,
    };
  }
}

/// Mapper for ChatMessageDto → ChatMessage.
extension ChatMessageDtoMapper on ChatMessageDto {
  ChatMessage toEntity() {
    return ChatMessage(
      id: id,
      threadId: threadId,
      senderId: senderId,
      senderDisplayName: senderDisplayName,
      body: body,
      attachments: attachments.map((a) => a.toEntity()).toList(),
      metadata: metadata,
      clientMessageId: clientMessageId,
      createdAt: createdAt,
      editedAt: editedAt,
      deletedAt: deletedAt,
      isDeleted: isDeleted,
    );
  }
}

/// Mapper for ChatMessagePageDto → ChatMessagePage.
extension ChatMessagePageDtoMapper on ChatMessagePageDto {
  ChatMessagePage toEntity() {
    return ChatMessagePage(
      messages: messages.map((m) => m.toEntity()).toList(),
      hasMore: hasMore,
    );
  }
}

/// Mapper for CreateThreadInput → CreateThreadRequestDto.
extension CreateThreadInputMapper on CreateThreadInput {
  CreateThreadRequestDto toDto() {
    return CreateThreadRequestDto(
      listingId: listingId,
      message: message,
      clientMessageId: clientMessageId,
      attachments: attachments?.map((a) => a.toDto()).toList(),
    );
  }
}

/// Mapper for SendMessageInput → SendMessageRequestDto.
extension SendMessageInputMapper on SendMessageInput {
  SendMessageRequestDto toDto() {
    return SendMessageRequestDto(
      body: body,
      clientMessageId: clientMessageId,
      metadata: metadata,
      attachments: attachments?.map((a) => a.toDto()).toList(),
    );
  }
}

/// Mapper for ChatAttachment → ChatAttachmentDto.
extension ChatAttachmentMapper on ChatAttachment {
  ChatAttachmentDto toDto() {
    return ChatAttachmentDto(
      type: type == ChatAttachmentType.image ? 'image' : 'file',
      url: url,
      name: name,
      size: size,
      contentType: contentType,
      width: width,
      height: height,
    );
  }
}
