/// Authentication interceptor that adds Bearer token to requests
/// and handles 401 responses with token refresh.
/// 
/// Mirrors web_client/lib/apiUtils.ts token handling logic.
library;

import 'dart:async';

import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

import '../config/api_config.dart';
import '../errors/exceptions.dart';
import '../storage/secure_storage.dart';

/// Interceptor for adding auth tokens and handling 401 responses.
class AuthInterceptor extends QueuedInterceptor {
  AuthInterceptor({
    required SecureStorage storage,
    required Dio dio,
    Logger? logger,
  })  : _storage = storage,
        _dio = dio,
        _logger = logger ?? Logger();

  final SecureStorage _storage;
  final Dio _dio;
  final Logger _logger;

  // Prevent multiple simultaneous refresh attempts
  Completer<String?>? _refreshCompleter;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = await _storage.getAccessToken();
    if (token != null && token.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    handler.next(options);
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    if (err.response?.statusCode != 401) {
      return handler.next(err);
    }

    // Don't try to refresh if already refreshing or on refresh endpoint
    if (err.requestOptions.path.contains('/auth/refresh')) {
      await _storage.clearAuth();
      return handler.reject(
        DioException(
          requestOptions: err.requestOptions,
          error: const RefreshTokenInvalidException(),
          type: DioExceptionType.badResponse,
        ),
      );
    }

    _logger.d('Received 401, attempting token refresh...');

    try {
      final newToken = await _refreshAccessToken();
      if (newToken != null) {
        _logger.d('Token refreshed successfully, retrying request');
        // Retry original request with new token
        final response = await _retryRequest(err.requestOptions, newToken);
        return handler.resolve(response);
      } else {
        _logger.w('Token refresh failed, logging out');
        await _storage.clearAuth();
        return handler.reject(
          DioException(
            requestOptions: err.requestOptions,
            error: const RefreshTokenInvalidException(),
            type: DioExceptionType.badResponse,
          ),
        );
      }
    } catch (e) {
      _logger.e('Error during token refresh: $e');
      await _storage.clearAuth();
      return handler.reject(
        DioException(
          requestOptions: err.requestOptions,
          error: const RefreshTokenInvalidException(),
          type: DioExceptionType.badResponse,
        ),
      );
    }
  }

  /// Refreshes the access token using the refresh token.
  /// 
  /// Uses a Completer to prevent multiple simultaneous refresh attempts.
  /// Mirrors refreshAccessToken() from web_client/lib/apiUtils.ts
  Future<String?> _refreshAccessToken() async {
    // If refresh is already in flight, wait for it
    if (_refreshCompleter != null) {
      return _refreshCompleter!.future;
    }

    _refreshCompleter = Completer<String?>();

    try {
      final refreshToken = await _storage.getRefreshToken();
      if (refreshToken == null || refreshToken.isEmpty) {
        _refreshCompleter!.complete(null);
        return null;
      }

      final response = await _dio.post(
        ApiConfig.authRefresh,
        data: {'refresh': refreshToken},
        options: Options(
          headers: {'Content-Type': 'application/json'},
        ),
      );

      if (response.statusCode == 200 && response.data != null) {
        final accessToken = response.data['access'] as String?;
        if (accessToken != null && accessToken.isNotEmpty) {
          await _storage.setAccessToken(accessToken);
          _refreshCompleter!.complete(accessToken);
          return accessToken;
        }
      }

      _refreshCompleter!.complete(null);
      return null;
    } catch (e) {
      _logger.e('Token refresh error: $e');
      _refreshCompleter!.complete(null);
      return null;
    } finally {
      _refreshCompleter = null;
    }
  }

  /// Retries the original request with the new access token.
  Future<Response<dynamic>> _retryRequest(
    RequestOptions requestOptions,
    String newToken,
  ) async {
    requestOptions.headers['Authorization'] = 'Bearer $newToken';
    return _dio.fetch(requestOptions);
  }
}
