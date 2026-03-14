import 'package:injectable/injectable.dart';

import '../../core/errors/exceptions.dart';
import '../../core/errors/failures.dart';
import '../../core/utils/result.dart';
import '../../domain/entities/telegram_chat.dart';
import '../../domain/repositories/telegram_repository.dart';
import '../datasources/remote/telegram_remote_data_source.dart';
import '../mappers/telegram_mapper.dart';

@LazySingleton(as: TelegramRepository)
class TelegramRepositoryImpl implements TelegramRepository {
  TelegramRepositoryImpl({required TelegramRemoteDataSource remoteDataSource})
      : _remote = remoteDataSource;

  final TelegramRemoteDataSource _remote;

  @override
  Future<Result<List<TelegramChat>>> getTelegramChats() async {
    try {
      final dtos = await _remote.getTelegramChats();
      return dtos.map((d) => d.toEntity()).toList().asSuccess;
    } on AppException catch (e) {
      return _toFailure(e).asFail();
    } catch (e) {
      return UnknownFailure(e.toString()).asFail();
    }
  }

  @override
  Future<Result<void>> disconnectChat(String chatId) async {
    try {
      await _remote.disconnectChat(chatId);
      return const Success(null);
    } on AppException catch (e) {
      return _toFailure(e).asFail();
    } catch (e) {
      return UnknownFailure(e.toString()).asFail();
    }
  }

  @override
  Future<Result<VerifyChatsResult>> verifyChats() async {
    try {
      final dto = await _remote.verifyChats();
      return dto.toEntity().asSuccess;
    } on AppException catch (e) {
      return _toFailure(e).asFail();
    } catch (e) {
      return UnknownFailure(e.toString()).asFail();
    }
  }

  Failure _toFailure(AppException e) {
    if (e is NetworkException) return const NetworkFailure();
    if (e is ServerException) return const ServerFailure();
    if (e is AuthException) return const AuthFailure();
    if (e is TimeoutException) return const TimeoutFailure();
    if (e is ValidationException) {
      return ValidationFailure(e.message, field: e.field);
    }
    return UnknownFailure(e.message);
  }
}
