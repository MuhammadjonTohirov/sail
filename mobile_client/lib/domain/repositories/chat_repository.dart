import '../entities/chat.dart';
import '../../core/utils/result.dart';

/// Chat repository interface.
/// 
/// Defines real-time chat operations.
abstract class ChatRepository {
  // Threads
  Future<Result<List<ChatThread>>> listThreads({
    bool? archived,
    bool? unread,
    bool? myAds,
    ChatParticipantRole? role,
  });
  Future<Result<ChatThread>> createThread(CreateThreadInput input);
  Future<Result<ChatThread>> getThread(String threadId);
  Future<Result<void>> deleteThread(String threadId);
  
  // Messages
  Future<Result<ChatMessagePage>> listMessages(
    String threadId, {
    String? before,
    String? after,
    int? limit,
  });
  Future<Result<ChatMessage>> sendMessage(String threadId, SendMessageInput input);
  
  // Thread management
  Future<Result<ChatThread>> markAsRead(String threadId, {String? messageId});
  Future<Result<ChatThread>> archiveThread(String threadId);
  Future<Result<ChatThread>> unarchiveThread(String threadId);
  
  // Attachments
  Future<Result<ChatAttachment>> uploadAttachment(String threadId, String filePath);
  
  // Availability sync
  Future<Result<void>> syncAvailability();
  Future<Result<Map<int, ListingAvailability>>> checkListingStatus(List<int> listingIds);
}
