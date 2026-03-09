// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatListingSnapshotDto _$ChatListingSnapshotDtoFromJson(
  Map<String, dynamic> json,
) => _ChatListingSnapshotDto(
  listingId: (json['listing_id'] as num).toInt(),
  title: json['title'] as String,
  priceAmount: json['price_amount'],
  priceCurrency: json['price_currency'] as String,
  thumbnailUrl: json['thumbnail_url'] as String?,
  availability: json['availability'] as String?,
  availabilityCheckedAt: json['availability_checked_at'] as String?,
);

Map<String, dynamic> _$ChatListingSnapshotDtoToJson(
  _ChatListingSnapshotDto instance,
) => <String, dynamic>{
  'listing_id': instance.listingId,
  'title': instance.title,
  'price_amount': instance.priceAmount,
  'price_currency': instance.priceCurrency,
  'thumbnail_url': instance.thumbnailUrl,
  'availability': instance.availability,
  'availability_checked_at': instance.availabilityCheckedAt,
};

_ChatParticipantSummaryDto _$ChatParticipantSummaryDtoFromJson(
  Map<String, dynamic> json,
) => _ChatParticipantSummaryDto(
  userId: (json['user_id'] as num).toInt(),
  role: json['role'] as String,
  displayName: json['display_name'] as String,
  avatarUrl: json['avatar_url'] as String?,
);

Map<String, dynamic> _$ChatParticipantSummaryDtoToJson(
  _ChatParticipantSummaryDto instance,
) => <String, dynamic>{
  'user_id': instance.userId,
  'role': instance.role,
  'display_name': instance.displayName,
  'avatar_url': instance.avatarUrl,
};

_ChatThreadDto _$ChatThreadDtoFromJson(Map<String, dynamic> json) =>
    _ChatThreadDto(
      id: json['id'] as String,
      buyerId: (json['buyer_id'] as num).toInt(),
      sellerId: (json['seller_id'] as num).toInt(),
      status: json['status'] as String,
      listing: ChatListingSnapshotDto.fromJson(
        json['listing'] as Map<String, dynamic>,
      ),
      otherParticipant: json['other_participant'] == null
          ? null
          : ChatParticipantSummaryDto.fromJson(
              json['other_participant'] as Map<String, dynamic>,
            ),
      lastMessageAt: json['last_message_at'] as String?,
      lastMessagePreview: json['last_message_preview'] as String? ?? '',
      unreadCount: (json['unread_count'] as num?)?.toInt() ?? 0,
      isArchived: json['is_archived'] as bool? ?? false,
      lastReadMessageId: json['last_read_message_id'] as String?,
      lastReadAt: json['last_read_at'] as String?,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
    );

Map<String, dynamic> _$ChatThreadDtoToJson(_ChatThreadDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'buyer_id': instance.buyerId,
      'seller_id': instance.sellerId,
      'status': instance.status,
      'listing': instance.listing,
      'other_participant': instance.otherParticipant,
      'last_message_at': instance.lastMessageAt,
      'last_message_preview': instance.lastMessagePreview,
      'unread_count': instance.unreadCount,
      'is_archived': instance.isArchived,
      'last_read_message_id': instance.lastReadMessageId,
      'last_read_at': instance.lastReadAt,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

_ChatAttachmentDto _$ChatAttachmentDtoFromJson(Map<String, dynamic> json) =>
    _ChatAttachmentDto(
      type: json['type'] as String,
      url: json['url'] as String,
      name: json['name'] as String?,
      size: (json['size'] as num?)?.toInt(),
      contentType: json['content_type'] as String?,
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ChatAttachmentDtoToJson(_ChatAttachmentDto instance) =>
    <String, dynamic>{
      'type': instance.type,
      'url': instance.url,
      'name': instance.name,
      'size': instance.size,
      'content_type': instance.contentType,
      'width': instance.width,
      'height': instance.height,
    };

_ChatMessageDto _$ChatMessageDtoFromJson(Map<String, dynamic> json) =>
    _ChatMessageDto(
      id: json['id'] as String,
      threadId: json['thread_id'] as String,
      senderId: (json['sender_id'] as num).toInt(),
      senderDisplayName: json['sender_display_name'] as String,
      body: json['body'] as String,
      attachments:
          (json['attachments'] as List<dynamic>?)
              ?.map(
                (e) => ChatAttachmentDto.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const [],
      metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
      clientMessageId: json['client_message_id'] as String?,
      createdAt: json['created_at'] as String,
      editedAt: json['edited_at'] as String?,
      deletedAt: json['deleted_at'] as String?,
      isDeleted: json['is_deleted'] as bool? ?? false,
    );

Map<String, dynamic> _$ChatMessageDtoToJson(_ChatMessageDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'thread_id': instance.threadId,
      'sender_id': instance.senderId,
      'sender_display_name': instance.senderDisplayName,
      'body': instance.body,
      'attachments': instance.attachments,
      'metadata': instance.metadata,
      'client_message_id': instance.clientMessageId,
      'created_at': instance.createdAt,
      'edited_at': instance.editedAt,
      'deleted_at': instance.deletedAt,
      'is_deleted': instance.isDeleted,
    };

_ChatMessagePageDto _$ChatMessagePageDtoFromJson(Map<String, dynamic> json) =>
    _ChatMessagePageDto(
      messages:
          (json['messages'] as List<dynamic>?)
              ?.map((e) => ChatMessageDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      hasMore: json['has_more'] as bool? ?? false,
    );

Map<String, dynamic> _$ChatMessagePageDtoToJson(_ChatMessagePageDto instance) =>
    <String, dynamic>{
      'messages': instance.messages,
      'has_more': instance.hasMore,
    };

_CreateThreadRequestDto _$CreateThreadRequestDtoFromJson(
  Map<String, dynamic> json,
) => _CreateThreadRequestDto(
  listingId: (json['listing_id'] as num).toInt(),
  message: json['message'] as String?,
  clientMessageId: json['client_message_id'] as String?,
  attachments: (json['attachments'] as List<dynamic>?)
      ?.map((e) => ChatAttachmentDto.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$CreateThreadRequestDtoToJson(
  _CreateThreadRequestDto instance,
) => <String, dynamic>{
  'listing_id': instance.listingId,
  'message': instance.message,
  'client_message_id': instance.clientMessageId,
  'attachments': instance.attachments,
};

_SendMessageRequestDto _$SendMessageRequestDtoFromJson(
  Map<String, dynamic> json,
) => _SendMessageRequestDto(
  body: json['body'] as String?,
  clientMessageId: json['client_message_id'] as String?,
  metadata: json['metadata'] as Map<String, dynamic>?,
  attachments: (json['attachments'] as List<dynamic>?)
      ?.map((e) => ChatAttachmentDto.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$SendMessageRequestDtoToJson(
  _SendMessageRequestDto instance,
) => <String, dynamic>{
  'body': instance.body,
  'client_message_id': instance.clientMessageId,
  'metadata': instance.metadata,
  'attachments': instance.attachments,
};

_MarkReadRequestDto _$MarkReadRequestDtoFromJson(Map<String, dynamic> json) =>
    _MarkReadRequestDto(messageId: json['message_id'] as String?);

Map<String, dynamic> _$MarkReadRequestDtoToJson(_MarkReadRequestDto instance) =>
    <String, dynamic>{'message_id': instance.messageId};

_SyncAvailabilityResultDto _$SyncAvailabilityResultDtoFromJson(
  Map<String, dynamic> json,
) => _SyncAvailabilityResultDto(
  synced: (json['synced'] as num?)?.toInt() ?? 0,
  updated: (json['updated'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$SyncAvailabilityResultDtoToJson(
  _SyncAvailabilityResultDto instance,
) => <String, dynamic>{'synced': instance.synced, 'updated': instance.updated};

_BulkListingStatusResultDto _$BulkListingStatusResultDtoFromJson(
  Map<String, dynamic> json,
) => _BulkListingStatusResultDto(
  statuses:
      (json['statuses'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ) ??
      const {},
);

Map<String, dynamic> _$BulkListingStatusResultDtoToJson(
  _BulkListingStatusResultDto instance,
) => <String, dynamic>{'statuses': instance.statuses};
