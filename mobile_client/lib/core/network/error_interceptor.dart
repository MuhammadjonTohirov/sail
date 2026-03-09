/// Error handling interceptor that converts DioExceptions to app exceptions.
/// 
/// Mirrors error handling from web_client/lib/apiUtils.ts
library;

import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

import '../errors/exceptions.dart';

/// Interceptor for converting network errors to app exceptions.
class ErrorInterceptor extends Interceptor {
  ErrorInterceptor({Logger? logger}) : _logger = logger ?? Logger();

  final Logger _logger;

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final exception = _mapDioException(err);
    
    handler.reject(
      DioException(
        requestOptions: err.requestOptions,
        response: err.response,
        type: err.type,
        error: exception,
      ),
    );
  }

  AppException _mapDioException(DioException err) {
    switch (err.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        _logger.w('Request timeout: ${err.requestOptions.path}');
        return const TimeoutException();

      case DioExceptionType.connectionError:
        _logger.w('Connection error: ${err.message}');
        return const NetworkException('Unable to connect to server');

      case DioExceptionType.badCertificate:
        _logger.e('Bad certificate: ${err.message}');
        return const NetworkException('SSL certificate error');

      case DioExceptionType.badResponse:
        return _handleBadResponse(err);

      case DioExceptionType.cancel:
        _logger.d('Request cancelled: ${err.requestOptions.path}');
        return const NetworkException('Request was cancelled');

      case DioExceptionType.unknown:
        _logger.e('Unknown error: ${err.message}');
        if (err.error is AppException) {
          return err.error as AppException;
        }
        return NetworkException(err.message ?? 'Unknown network error');
    }
  }

  AppException _handleBadResponse(DioException err) {
    final response = err.response;
    final statusCode = response?.statusCode ?? 0;
    
    _logger.w('API error $statusCode: ${err.requestOptions.path}');

    // Try to extract error detail from response
    String? detail;
    try {
      final data = response?.data;
      if (data is Map<String, dynamic>) {
        detail = data['detail']?.toString() ?? 
                 data['message']?.toString() ??
                 data['error']?.toString();
      } else if (data is String) {
        detail = data;
      }
    } catch (_) {}

    // Handle specific status codes
    switch (statusCode) {
      case 401:
        return const TokenExpiredException();
      case 403:
        return ApiException(
          statusCode: 403,
          message: detail ?? 'Permission denied',
        );
      case 404:
        return ApiException(
          statusCode: 404,
          message: detail ?? 'Not found',
        );
      case 422:
        return ApiException(
          statusCode: 422,
          message: detail ?? 'Validation error',
          details: response?.data,
        );
      case >= 500:
        return ServerException(detail ?? 'Server error');
      default:
        return ApiException.fromStatusCode(statusCode, detail);
    }
  }
}
