/// Repository implementation for chat.
library;
import 'package:injectable/injectable.dart';

import '../../../core/errors/exceptions.dart';
import '../../../core/errors/failures.dart';
import '../../../core/utils/result.dart';
import '../../domain/entities/chat.dart';
import '../../domain/repositories/chat_repository.dart';
import '../datasources/remote/chat_remote_data_source.dart';
import '../mappers/chat_mapper.dart';


/// Implementation of [ChatRepository].
@LazySingleton(as: ChatRepository)
class ChatRepositoryImpl implements ChatRepository {
  ChatRepositoryImpl({
    required ChatRemoteDataSource remoteDataSource,
  }) : _remote = remoteDataSource;

  final ChatRemoteDataSource _remote;

  @override
  Future<Result<List<ChatThread>>> listThreads({
    bool? archived,
    bool? unread,
    bool? myAds,
    ChatParticipantRole? role,
  }) async {
    try {
      // TODO: Pass unread/myAds/role to API when supported
      final dtos = await _remote.getThreads(archived: archived);
      return Success(dtos.map((d) => d.toEntity()).toList());
    } on AppException catch (e) {
      return e.toFailure().asFail();
    } catch (e) {
      return UnknownFailure(e.toString()).asFail();
    }
  }

  @override
  Future<Result<ChatThread>> getThread(String threadId) async {
    try {
      final dto = await _remote.getThread(threadId);
      return Success(dto.toEntity());
    } on AppException catch (e) {
      return e.toFailure().asFail();
    } catch (e) {
      return UnknownFailure(e.toString()).asFail();
    }
  }

  @override
  Future<Result<ChatThread>> createThread(CreateThreadInput input) async {
    try {
      final dto = await _remote.createThread(input.toDto());
      return Success(dto.toEntity());
    } on AppException catch (e) {
      return e.toFailure().asFail();
    } catch (e) {
      return UnknownFailure(e.toString()).asFail();
    }
  }

  @override
  Future<Result<void>> deleteThread(String threadId) async {
    // TODO: Implement delete in remote source
    return const Success(null);
  }

  @override
  Future<Result<ChatMessagePage>> listMessages(
    String threadId, {
    String? before,
    String? after,
    int? limit,
  }) async {
    try {
      final dto = await _remote.getMessages(
        threadId,
        before: before,
        limit: limit,
      );
      return Success(dto.toEntity());
    } on AppException catch (e) {
      return e.toFailure().asFail();
    } catch (e) {
      return UnknownFailure(e.toString()).asFail();
    }
  }

  @override
  Future<Result<ChatMessage>> sendMessage(
    String threadId,
    SendMessageInput input,
  ) async {
    try {
      final dto = await _remote.sendMessage(threadId, input.toDto());
      return Success(dto.toEntity());
    } on AppException catch (e) {
      return e.toFailure().asFail();
    } catch (e) {
      return UnknownFailure(e.toString()).asFail();
    }
  }

  @override
  Future<Result<ChatThread>> markAsRead(String threadId, {String? messageId}) async {
    try {
      await _remote.markAsRead(threadId, messageId: messageId);
      final dto = await _remote.getThread(threadId);
      return Success(dto.toEntity());
    } on AppException catch (e) {
      return e.toFailure().asFail();
    } catch (e) {
      return UnknownFailure(e.toString()).asFail();
    }
  }

  @override
  Future<Result<ChatThread>> archiveThread(String threadId) async {
    try {
      await _remote.archiveThread(threadId);
       final dto = await _remote.getThread(threadId);
      return Success(dto.toEntity());
    } on AppException catch (e) {
      return e.toFailure().asFail();
    } catch (e) {
      return UnknownFailure(e.toString()).asFail();
    }
  }

  @override
  Future<Result<ChatThread>> unarchiveThread(String threadId) async {
    try {
      await _remote.unarchiveThread(threadId);
       final dto = await _remote.getThread(threadId);
      return Success(dto.toEntity());
    } on AppException catch (e) {
      return e.toFailure().asFail();
    } catch (e) {
      return UnknownFailure(e.toString()).asFail();
    }
  }

  @override
  Future<Result<ChatAttachment>> uploadAttachment(
    String threadId,
    String filePath,
  ) async {
    try {
      final dto = await _remote.uploadAttachment(threadId, filePath);
      return Success(dto.toEntity());
    } on AppException catch (e) {
      return e.toFailure().asFail();
    } catch (e) {
      return UnknownFailure(e.toString()).asFail();
    }
  }

  @override
  Future<Result<void>> syncAvailability() async {
    try {
      await _remote.syncAvailability();
      return const Success(null);
    } on AppException catch (e) {
      return e.toFailure().asFail();
    } catch (e) {
      return UnknownFailure(e.toString()).asFail();
    }
  }

  @override
  Future<Result<Map<int, ListingAvailability>>> checkListingStatus(List<int> listingIds) async {
    try {
      final dto = await _remote.getListingsStatus(listingIds);
       final statusMap = dto.statuses.map((k, v) => MapEntry(
        int.parse(k), 
        _parseAvailability(v)
      ));
      return Success(statusMap);
    } on AppException catch (e) {
      return e.toFailure().asFail();
    } catch (e) {
      return UnknownFailure(e.toString()).asFail();
    }
  }
  
  ListingAvailability _parseAvailability(String status) {
     return switch (status.toLowerCase()) {
      'available' => ListingAvailability.available,
      'unavailable' => ListingAvailability.unavailable,
      'deleted' => ListingAvailability.deleted,
      _ => ListingAvailability.available,
    };
  }
}

extension on AppException {
  Failure toFailure() {
    if (this is NetworkException) return const NetworkFailure();
    if (this is ServerException) return const ServerFailure();
    if (this is AuthException) return const AuthFailure();
    if (this is TimeoutException) return const TimeoutFailure();
    return UnknownFailure(message);
  }
}
