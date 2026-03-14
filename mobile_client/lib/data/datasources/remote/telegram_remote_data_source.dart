import 'package:injectable/injectable.dart';

import '../../../core/config/api_config.dart';
import '../../../core/network/api_client.dart';
import '../../models/telegram/telegram_dto.dart';

/// Interface for telegram remote data source.
abstract class TelegramRemoteDataSource {
  Future<List<TelegramChatDto>> getTelegramChats();
  Future<void> disconnectChat(String chatId);
  Future<VerifyChatsResponseDto> verifyChats();
}

/// Implementation of telegram remote data source.
@LazySingleton(as: TelegramRemoteDataSource)
class TelegramRemoteDataSourceImpl implements TelegramRemoteDataSource {
  TelegramRemoteDataSourceImpl({required ApiClient apiClient}) : _api = apiClient;

  final ApiClient _api;

  @override
  Future<List<TelegramChatDto>> getTelegramChats() async {
    final response = await _api.get<List<dynamic>>(ApiConfig.telegramChats);
    return response.data!
        .map((json) => TelegramChatDto.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<void> disconnectChat(String chatId) async {
    await _api.delete(ApiConfig.telegramChat(int.parse(chatId)));
  }

  @override
  Future<VerifyChatsResponseDto> verifyChats() async {
    final response = await _api.post<Map<String, dynamic>>(
      ApiConfig.telegramChatsVerify,
    );
    return VerifyChatsResponseDto.fromJson(response.data!);
  }
}
