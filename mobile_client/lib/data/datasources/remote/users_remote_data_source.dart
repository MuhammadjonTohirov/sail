import 'package:injectable/injectable.dart';

import '../../../core/config/api_config.dart';
import '../../../core/network/api_client.dart';
import '../../models/user/public_user_dto.dart';

/// Interface for users remote data source.
abstract class UsersRemoteDataSource {
  Future<PublicUserDto> getUserById(int userId);
}

/// Implementation of users remote data source.
@LazySingleton(as: UsersRemoteDataSource)
class UsersRemoteDataSourceImpl implements UsersRemoteDataSource {
  UsersRemoteDataSourceImpl({required ApiClient apiClient}) : _api = apiClient;

  final ApiClient _api;

  @override
  Future<PublicUserDto> getUserById(int userId) async {
    final response = await _api.get<Map<String, dynamic>>(
      ApiConfig.userProfile(userId),
    );
    return PublicUserDto.fromJson(response.data!);
  }
}
