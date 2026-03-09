/// Repository implementation for authentication.
library;
import 'package:injectable/injectable.dart';

import 'dart:async';

import '../../../core/errors/exceptions.dart';
import '../../../core/errors/failures.dart';
import '../../../core/storage/secure_storage.dart';
import '../../../core/utils/result.dart';
import '../../domain/entities/user.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasources/remote/auth_remote_data_source.dart';
import '../mappers/auth_mapper.dart';
import '../models/auth/auth_dto.dart';


/// Implementation of [AuthRepository].
@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl({
    required AuthRemoteDataSource remoteDataSource,
    required SecureStorage storage,
  })  : _remote = remoteDataSource,
        _storage = storage;

  final AuthRemoteDataSource _remote;
  final SecureStorage _storage;

  @override
  Future<Result<void>> requestOtp(String phone) async {
    try {
      await _remote.requestOtp(phone);
      return const Success(null);
    } on AppException catch (e) {
      return e.toFailure().asFail();
    } catch (e) {
      return UnknownFailure(e.toString()).asFail();
    }
  }

  @override
  Future<Result<UserProfile>> verifyOtp(String phone, String code) async {
    try {
      final response = await _remote.verifyOtp(phone, code);
      await _storage.saveTokens(
        accessToken: response.access,
        refreshToken: response.refresh,
      );
      // We might want to save profile too
      return response.profile.toEntity().asSuccess;
    } on AppException catch (e) {
      return e.toFailure().asFail();
    } catch (e) {
      return UnknownFailure(e.toString()).asFail();
    }
  }

  @override
  Future<Result<void>> register(String login, String password, {String? displayName}) async {
    try {
      await _remote.register(
        RegisterRequestDto(
          login: login,
          password: password,
          displayName: displayName,
        ),
      );
      return const Success(null);
    } on AppException catch (e) {
      return e.toFailure().asFail();
    } catch (e) {
      return UnknownFailure(e.toString()).asFail();
    }
  }

  @override
  Future<Result<UserProfile>> registerVerify(
    String login,
    String code,
    String password, {
    String? displayName,
  }) async {
    try {
      final response = await _remote.registerVerify(
        RegisterVerifyRequestDto(
          login: login,
          code: code,
          password: password,
          displayName: displayName,
        ),
      );
      await _storage.saveTokens(
        accessToken: response.access,
        refreshToken: response.refresh,
      );
      return response.profile.toEntity().asSuccess;
    } on AppException catch (e) {
      return e.toFailure().asFail();
    } catch (e) {
      return UnknownFailure(e.toString()).asFail();
    }
  }

  @override
  Future<Result<UserProfile>> login(String login, String password) async {
    try {
      final response = await _remote.login(
        LoginRequestDto(login: login, password: password),
      );
      await _storage.saveTokens(
        accessToken: response.access,
        refreshToken: response.refresh,
      );
      return response.profile.toEntity().asSuccess;
    } on AppException catch (e) {
      return e.toFailure().asFail();
    } catch (e) {
      return UnknownFailure(e.toString()).asFail();
    }
  }

  @override
  Future<Result<void>> forgotPassword(String login) async {
    try {
      await _remote.forgotPassword(login);
      return const Success(null);
    } on AppException catch (e) {
      return e.toFailure().asFail();
    } catch (e) {
      return UnknownFailure(e.toString()).asFail();
    }
  }

  @override
  Future<Result<void>> resetPassword(
    String login,
    String code,
    String password,
  ) async {
    try {
      await _remote.resetPassword(
        ResetPasswordRequestDto(login: login, code: code, password: password),
      );
      return const Success(null);
    } on AppException catch (e) {
      return e.toFailure().asFail();
    } catch (e) {
      return UnknownFailure(e.toString()).asFail();
    }
  }

  @override
  Future<Result<UserProfile>> telegramAuth(Map<String, dynamic> telegramData) async {
    try {
      final response = await _remote.telegramAuth(telegramData);
      await _storage.saveTokens(
        accessToken: response.access,
        refreshToken: response.refresh,
      );
      return response.profile.toEntity().asSuccess;
    } on AppException catch (e) {
      return e.toFailure().asFail();
    } catch (e) {
      return UnknownFailure(e.toString()).asFail();
    }
  }

  @override
  Future<Result<UserProfile>> getMe() async {
    try {
      final dto = await _remote.getMe();
      return dto.toEntity().asSuccess;
    } on AppException catch (e) {
      return e.toFailure().asFail();
    } catch (e) {
      return UnknownFailure(e.toString()).asFail();
    }
  }

  @override
  Future<Result<UserProfile>> updateProfile({
    String? displayName,
    int? locationId,
  }) async {
    try {
      final dto = await _remote.updateProfile(
        displayName: displayName,
        locationId: locationId,
      );
      return dto.toEntity().asSuccess;
    } on AppException catch (e) {
      return e.toFailure().asFail();
    } catch (e) {
      return UnknownFailure(e.toString()).asFail();
    }
  }

  @override
  Future<Result<void>> deleteAccount() async {
    try {
      await _remote.deleteAccount();
      await _storage.clearAuth();
      return const Success(null);
    } on AppException catch (e) {
      return e.toFailure().asFail();
    } catch (e) {
      return UnknownFailure(e.toString()).asFail();
    }
  }

  @override
  Future<Result<SecurityInfo>> getSecurityInfo() async {
    try {
      final dto = await _remote.getSecurityInfo();
      return dto.toEntity().asSuccess;
    } on AppException catch (e) {
      return e.toFailure().asFail();
    } catch (e) {
      return UnknownFailure(e.toString()).asFail();
    }
  }

  @override
  Future<Result<void>> changePassword(
    String currentPassword,
    String newPassword,
  ) async {
    try {
      await _remote.changePassword(
        ChangePasswordRequestDto(
          currentPassword: currentPassword,
          newPassword: newPassword,
        ),
      );
      return const Success(null);
    } on AppException catch (e) {
      return e.toFailure().asFail();
    } catch (e) {
      return UnknownFailure(e.toString()).asFail();
    }
  }

  @override
  Future<Result<void>> setPassword(String newPassword) async {
    try {
      await _remote.setPassword(
        SetPasswordRequestDto(newPassword: newPassword),
      );
      return const Success(null);
    } on AppException catch (e) {
      return e.toFailure().asFail();
    } catch (e) {
      return UnknownFailure(e.toString()).asFail();
    }
  }

  @override
  Future<Result<UserProfile>> linkTelegram(Map<String, dynamic> telegramData) async {
    try {
      final dto = await _remote.linkTelegram(telegramData);
      return dto.toEntity().asSuccess;
    } on AppException catch (e) {
      return e.toFailure().asFail();
    } catch (e) {
      return UnknownFailure(e.toString()).asFail();
    }
  }

  @override
  Future<Result<void>> unlinkTelegram() async {
    try {
      await _remote.unlinkTelegram();
      return const Success(null);
    } on AppException catch (e) {
      return e.toFailure().asFail();
    } catch (e) {
      return UnknownFailure(e.toString()).asFail();
    }
  }

  @override
  Future<bool> isAuthenticated() async {
    return _storage.isAuthenticated();
  }

  @override
  Future<void> logout() async {
    await _storage.clearAuth();
  }

  @override
  Future<UserProfile?> getCachedProfile() async {
    // TODO: Implement profile caching
    return null;
  }
}

extension on AppException {
  Failure toFailure() {
    if (this is NetworkException) return const NetworkFailure();
    if (this is ServerException) return const ServerFailure();
    if (this is AuthException) return const AuthFailure();
    if (this is TimeoutException) return const TimeoutFailure();
    if (this is ValidationException) {
      final e = this as ValidationException;
      return ValidationFailure(e.message, field: e.field);
    }
    return UnknownFailure(message);
  }
}
