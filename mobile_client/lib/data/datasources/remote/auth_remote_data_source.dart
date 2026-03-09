/// Remote data source for authentication API calls.
///
/// Mirrors web_client auth API interactions.
library;
import 'package:injectable/injectable.dart';

import '../../../core/config/api_config.dart';
import '../../../core/network/api_client.dart';
import '../../models/auth/auth_dto.dart';

/// Interface for auth remote data source.
abstract class AuthRemoteDataSource {
  // OTP-based auth
  Future<void> requestOtp(String phone);
  Future<AuthResponseDto> verifyOtp(String phone, String code);
  
  // Password-based auth
  Future<void> register(RegisterRequestDto request);
  Future<AuthResponseDto> registerVerify(RegisterVerifyRequestDto request);
  Future<AuthResponseDto> login(LoginRequestDto request);
  
  // Password reset
  Future<void> forgotPassword(String login);
  Future<void> resetPassword(ResetPasswordRequestDto request);
  
  // Telegram auth
  Future<AuthResponseDto> telegramAuth(Map<String, dynamic> telegramData);
  
  // Profile
  Future<ProfileDto> getMe();
  Future<ProfileDto> updateProfile({String? displayName, int? locationId});
  Future<void> deleteAccount();
  
  // Security
  Future<SecurityInfoDto> getSecurityInfo();
  Future<void> changePassword(ChangePasswordRequestDto request);
  Future<void> setPassword(SetPasswordRequestDto request);
  Future<ProfileDto> linkTelegram(Map<String, dynamic> telegramData);
  Future<void> unlinkTelegram();
}


/// Implementation of auth remote data source.
@LazySingleton(as: AuthRemoteDataSource)
class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  AuthRemoteDataSourceImpl({required ApiClient apiClient}) : _api = apiClient;
  
  final ApiClient _api;

  @override
  Future<void> requestOtp(String phone) async {
    await _api.post(
      ApiConfig.authOtpRequest,
      data: OtpRequestDto(phone: phone).toJson(),
    );
  }

  @override
  Future<AuthResponseDto> verifyOtp(String phone, String code) async {
    final response = await _api.post<Map<String, dynamic>>(
      ApiConfig.authOtpVerify,
      data: OtpVerifyRequestDto(phone: phone, code: code).toJson(),
    );
    return AuthResponseDto.fromJson(response.data!);
  }

  @override
  Future<void> register(RegisterRequestDto request) async {
    await _api.post(ApiConfig.authRegister, data: request.toJson());
  }

  @override
  Future<AuthResponseDto> registerVerify(RegisterVerifyRequestDto request) async {
    final response = await _api.post<Map<String, dynamic>>(
      ApiConfig.authRegisterVerify,
      data: request.toJson(),
    );
    return AuthResponseDto.fromJson(response.data!);
  }

  @override
  Future<AuthResponseDto> login(LoginRequestDto request) async {
    final response = await _api.post<Map<String, dynamic>>(
      ApiConfig.authLogin,
      data: request.toJson(),
    );
    return AuthResponseDto.fromJson(response.data!);
  }

  @override
  Future<void> forgotPassword(String login) async {
    await _api.post(
      ApiConfig.authForgotPassword,
      data: ForgotPasswordRequestDto(login: login).toJson(),
    );
  }

  @override
  Future<void> resetPassword(ResetPasswordRequestDto request) async {
    await _api.post(ApiConfig.authResetPassword, data: request.toJson());
  }

  @override
  Future<AuthResponseDto> telegramAuth(Map<String, dynamic> telegramData) async {
    final response = await _api.post<Map<String, dynamic>>(
      ApiConfig.authTelegram,
      data: telegramData,
    );
    return AuthResponseDto.fromJson(response.data!);
  }

  @override
  Future<ProfileDto> getMe() async {
    final response = await _api.get<Map<String, dynamic>>(ApiConfig.me);
    return ProfileDto.fromJson(response.data!);
  }

  @override
  Future<ProfileDto> updateProfile({String? displayName, int? locationId}) async {
    final data = <String, dynamic>{};
    if (displayName != null) data['display_name'] = displayName;
    if (locationId != null) data['location_id'] = locationId;
    
    final response = await _api.patch<Map<String, dynamic>>(
      ApiConfig.profile,
      data: data,
    );
    return ProfileDto.fromJson(response.data!);
  }

  @override
  Future<void> deleteAccount() async {
    await _api.delete(ApiConfig.profileDelete);
  }

  @override
  Future<SecurityInfoDto> getSecurityInfo() async {
    final response = await _api.get<Map<String, dynamic>>(ApiConfig.security);
    return SecurityInfoDto.fromJson(response.data!);
  }

  @override
  Future<void> changePassword(ChangePasswordRequestDto request) async {
    await _api.post(ApiConfig.securityChangePassword, data: request.toJson());
  }

  @override
  Future<void> setPassword(SetPasswordRequestDto request) async {
    await _api.post(ApiConfig.securitySetPassword, data: request.toJson());
  }

  @override
  Future<ProfileDto> linkTelegram(Map<String, dynamic> telegramData) async {
    final response = await _api.post<Map<String, dynamic>>(
      ApiConfig.securityLinkTelegram,
      data: telegramData,
    );
    return ProfileDto.fromJson(response.data!);
  }

  @override
  Future<void> unlinkTelegram() async {
    await _api.post(ApiConfig.securityUnlinkTelegram);
  }
}
