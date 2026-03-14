/// Core API client using Dio with interceptors.
/// 
/// Mirrors web_client/lib/apiUtils.ts apiFetch function.
library;

import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

import 'package:flutter/foundation.dart';

import '../config/api_config.dart';
import '../config/app_config.dart';
import '../storage/secure_storage.dart';
import 'auth_interceptor.dart';
import 'envelope_interceptor.dart';
import 'error_interceptor.dart';
import 'logging_interceptor.dart';

import 'package:injectable/injectable.dart';

/// Central API client for all network requests.
/// 
/// Features:
/// - Automatic token injection via AuthInterceptor
/// - Token refresh on 401 responses
/// - Error mapping to AppExceptions
/// - Request/response logging in debug mode
@lazySingleton
class ApiClient {
  ApiClient({
    required SecureStorage storage,
    Logger? logger,
  }) : _logger = logger ?? Logger() {
    _dio = Dio(
      BaseOptions(
        baseUrl: ApiConfig.baseUrl,
        connectTimeout: AppConfig.apiTimeout,
        receiveTimeout: AppConfig.apiTimeout,
        sendTimeout: AppConfig.apiTimeout,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      ),
    );

    // Order matters: Envelope (unwrap {success,data,error,code}) -> Error -> Auth -> Logging
    _dio.interceptors.addAll([
      EnvelopeInterceptor(logger: _logger),
      ErrorInterceptor(logger: _logger),
      AuthInterceptor(storage: storage, dio: _dio, logger: _logger),
      if (kDebugMode) LoggingInterceptor(logger: _logger),
    ]);
  }

  late final Dio _dio;
  final Logger _logger;

  /// Access to raw Dio for special cases.
  Dio get dio => _dio;

  /// GET request.
  Future<Response<T>> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  }) {
    return _dio.get<T>(
      path,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
    );
  }

  /// POST request with JSON body.
  Future<Response<T>> post<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  }) {
    return _dio.post<T>(
      path,
      data: data,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
    );
  }

  /// PATCH request with JSON body.
  Future<Response<T>> patch<T>(
    String path, {
    dynamic data,
    Options? options,
    CancelToken? cancelToken,
  }) {
    return _dio.patch<T>(
      path,
      data: data,
      options: options,
      cancelToken: cancelToken,
    );
  }

  /// PUT request with JSON body.
  Future<Response<T>> put<T>(
    String path, {
    dynamic data,
    Options? options,
    CancelToken? cancelToken,
  }) {
    return _dio.put<T>(
      path,
      data: data,
      options: options,
      cancelToken: cancelToken,
    );
  }

  /// DELETE request.
  Future<Response<T>> delete<T>(
    String path, {
    dynamic data,
    Options? options,
    CancelToken? cancelToken,
  }) {
    return _dio.delete<T>(
      path,
      data: data,
      options: options,
      cancelToken: cancelToken,
    );
  }

  /// POST request with multipart/form-data (for file uploads).
  /// 
  /// Mirrors web_client handling of FormData.
  Future<Response<T>> postMultipart<T>(
    String path, {
    required FormData formData,
    Options? options,
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
  }) {
    return _dio.post<T>(
      path,
      data: formData,
      options: (options ?? Options()).copyWith(
        contentType: 'multipart/form-data',
      ),
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
    );
  }

  /// Helper to build query params like web_client does.
  /// 
  /// Handles arrays by appending the same key multiple times.
  Map<String, dynamic> buildQueryParams(Map<String, dynamic> params) {
    final result = <String, dynamic>{};
    for (final entry in params.entries) {
      final value = entry.value;
      if (value == null) continue;
      if (value is List) {
        // Dio handles List values correctly for query params
        result[entry.key] = value.map((e) => e.toString()).toList();
      } else {
        result[entry.key] = value.toString();
      }
    }
    return result;
  }

  /// Absolutize a relative URL (for media URLs).
  /// 
  /// Mirrors absolutizeUrl from web_client/lib/apiUtils.ts
  String absolutizeUrl(String url) {
    if (url.isEmpty) return url;
    final lowered = url.toLowerCase();
    if (lowered.startsWith('http://') || lowered.startsWith('https://')) {
      return url;
    }
    final base = ApiConfig.baseUrl.replaceAll(RegExp(r'/$'), '');
    final path = url.startsWith('/') ? url : '/$url';
    return '$base$path';
  }
}
