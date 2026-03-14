/// Remote data source for chat API calls.
library;

import 'package:dio/dio.dart';

import '../../../core/config/api_config.dart';
import '../../../core/network/api_client.dart';
import '../../models/chat/chat_dto.dart';
import 'package:injectable/injectable.dart';

/// Interface for chat remote data source.
abstract class ChatRemoteDataSource {
  // Threads
  Future<List<ChatThreadDto>> getThreads({bool? archived});
  Future<ChatThreadDto> getThread(String threadId);
  Future<ChatThreadDto> createThread(CreateThreadRequestDto request);
  
  // Messages
  Future<ChatMessagePageDto> getMessages(String threadId, {String? before, int? limit});
  Future<ChatMessageDto> sendMessage(String threadId, SendMessageRequestDto request);
  
  // Thread actions
  Future<void> markAsRead(String threadId, {String? messageId});
  Future<void> archiveThread(String threadId);
  Future<void> unarchiveThread(String threadId);
  
  // Attachments
  Future<ChatAttachmentDto> uploadAttachment(String threadId, String filePath);
  
  // Sync
  Future<SyncAvailabilityResultDto> syncAvailability();
  Future<BulkListingStatusResultDto> getListingsStatus(List<int> listingIds);
}


/// Implementation of chat remote data source.
@LazySingleton(as: ChatRemoteDataSource)
class ChatRemoteDataSourceImpl implements ChatRemoteDataSource {
  ChatRemoteDataSourceImpl({required ApiClient apiClient}) : _api = apiClient;
  
  final ApiClient _api;

  @override
  Future<List<ChatThreadDto>> getThreads({bool? archived}) async {
    final queryParams = <String, dynamic>{};
    if (archived != null) queryParams['archived'] = archived.toString();

    final response = await _api.get<Map<String, dynamic>>(
      ApiConfig.chatThreads,
      queryParameters: queryParams,
    );
    final results = response.data!['results'] as List<dynamic>? ?? [];
    return results
        .map((json) => ChatThreadDto.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<ChatThreadDto> getThread(String threadId) async {
    final response = await _api.get<Map<String, dynamic>>(
      ApiConfig.chatThread(threadId),
    );
    return ChatThreadDto.fromJson(response.data!);
  }

  @override
  Future<ChatThreadDto> createThread(CreateThreadRequestDto request) async {
    final response = await _api.post<Map<String, dynamic>>(
      ApiConfig.chatThreads,
      data: request.toJson(),
    );
    return ChatThreadDto.fromJson(response.data!);
  }

  @override
  Future<ChatMessagePageDto> getMessages(String threadId, {String? before, int? limit}) async {
    final queryParams = <String, dynamic>{};
    if (before != null) queryParams['before'] = before;
    if (limit != null) queryParams['limit'] = limit.toString();
    
    final response = await _api.get<Map<String, dynamic>>(
      ApiConfig.chatMessages(threadId),
      queryParameters: queryParams,
    );
    return ChatMessagePageDto.fromJson(response.data!);
  }

  @override
  Future<ChatMessageDto> sendMessage(String threadId, SendMessageRequestDto request) async {
    final response = await _api.post<Map<String, dynamic>>(
      ApiConfig.chatMessages(threadId),
      data: request.toJson(),
    );
    return ChatMessageDto.fromJson(response.data!);
  }

  @override
  Future<void> markAsRead(String threadId, {String? messageId}) async {
    final request = MarkReadRequestDto(messageId: messageId);
    await _api.post(
      ApiConfig.chatRead(threadId),
      data: request.toJson(),
    );
  }

  @override
  Future<void> archiveThread(String threadId) async {
    await _api.post(ApiConfig.chatArchive(threadId));
  }

  @override
  Future<void> unarchiveThread(String threadId) async {
    await _api.post(ApiConfig.chatUnarchive(threadId));
  }

  @override
  Future<ChatAttachmentDto> uploadAttachment(String threadId, String filePath) async {
    final formData = FormData.fromMap({
      'file': await MultipartFile.fromFile(filePath),
    });
    
    final response = await _api.postMultipart<Map<String, dynamic>>(
      ApiConfig.chatAttachments(threadId),
      formData: formData,
    );
    return ChatAttachmentDto.fromJson(response.data!);
  }

  @override
  Future<SyncAvailabilityResultDto> syncAvailability() async {
    final response = await _api.post<Map<String, dynamic>>(
      ApiConfig.chatSyncAvailability,
    );
    return SyncAvailabilityResultDto.fromJson(response.data!);
  }

  @override
  Future<BulkListingStatusResultDto> getListingsStatus(List<int> listingIds) async {
    final response = await _api.post<Map<String, dynamic>>(
      ApiConfig.listingsStatusBulk,
      data: {'listing_ids': listingIds},
    );
    return BulkListingStatusResultDto.fromJson(response.data!);
  }
}
