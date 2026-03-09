/// Domain-layer failures for use cases.
/// 
/// These are converted from exceptions in the data layer
/// and represent user-facing error states.
library;

import 'package:equatable/equatable.dart';

sealed class Failure extends Equatable {
  const Failure(this.message);
  final String message;

  @override
  List<Object?> get props => [message];
}

/// Network failure (no connection).
class NetworkFailure extends Failure {
  const NetworkFailure([super.message = 'No internet connection']);
}

/// Server failure (5xx errors).
class ServerFailure extends Failure {
  const ServerFailure([super.message = 'Server error. Please try again later.']);
}

/// Not found failure (404).
class NotFoundFailure extends Failure {
  const NotFoundFailure([super.message = 'Resource not found']);
}

/// Authentication failure.
class AuthFailure extends Failure {
  const AuthFailure([super.message = 'Authentication required']);
}

/// Session expired failure - needs re-login.
class SessionExpiredFailure extends Failure {
  const SessionExpiredFailure([super.message = 'Please sign in again']);
}

/// Permission denied failure (403).
class PermissionDeniedFailure extends Failure {
  const PermissionDeniedFailure([super.message = 'Permission denied']);
}

/// Validation failure with optional field info.
class ValidationFailure extends Failure {
  const ValidationFailure(super.message, {this.field, this.details});
  final String? field;
  final Map<String, dynamic>? details;

  @override
  List<Object?> get props => [message, field, details];
}

/// Cache/storage failure.
class CacheFailure extends Failure {
  const CacheFailure([super.message = 'Could not load cached data']);
}

/// Timeout failure.
class TimeoutFailure extends Failure {
  const TimeoutFailure([super.message = 'Request timed out. Please try again.']);
}

/// Generic/unknown failure.
class UnknownFailure extends Failure {
  const UnknownFailure([super.message = 'Something went wrong']);
}
