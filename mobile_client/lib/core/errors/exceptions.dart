/// Custom exceptions for API and application errors.
library;

/// Base exception for all application errors.
sealed class AppException implements Exception {
  const AppException(this.message);
  final String message;

  @override
  String toString() => message;
}

/// Network-related exceptions.
class NetworkException extends AppException {
  const NetworkException([super.message = 'Network error occurred']);
}

/// Server error exceptions (5xx).
class ServerException extends AppException {
  const ServerException([super.message = 'Server error occurred']);
  final int? statusCode = null;
}

/// API error with status code and optional details.
class ApiException extends AppException {
  const ApiException({
    required this.statusCode,
    required String message,
    this.details,
  }) : super(message);

  final int statusCode;
  final dynamic details;

  factory ApiException.fromStatusCode(int statusCode, [String? detail]) {
    final message = switch (statusCode) {
      400 => detail ?? 'Bad request',
      401 => 'Unauthorized',
      403 => 'Forbidden',
      404 => 'Not found',
      409 => detail ?? 'Conflict',
      422 => detail ?? 'Validation error',
      429 => 'Too many requests',
      500 => 'Internal server error',
      502 => 'Bad gateway',
      503 => 'Service unavailable',
      _ => detail ?? 'API error ($statusCode)',
    };
    return ApiException(statusCode: statusCode, message: message, details: detail);
  }
}

/// Authentication exceptions.
class AuthException extends AppException {
  const AuthException([super.message = 'Authentication required']);
}

/// Token expired, needs refresh.
class TokenExpiredException extends AuthException {
  const TokenExpiredException() : super('Token expired');
}

/// Refresh token invalid/expired - user must re-login.
class RefreshTokenInvalidException extends AuthException {
  const RefreshTokenInvalidException() : super('Please sign in again');
}

/// Cache/storage exceptions.
class CacheException extends AppException {
  const CacheException([super.message = 'Cache error occurred']);
}

/// Validation exceptions.
class ValidationException extends AppException {
  const ValidationException(super.message, {this.field});
  final String? field;
}

/// Timeout exception.
class TimeoutException extends AppException {
  const TimeoutException([super.message = 'Request timed out']);
}
