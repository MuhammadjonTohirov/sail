/// Result type for functional error handling.
/// 
library;

import '../errors/failures.dart';

/// Represents either a success value or a failure.
sealed class Result<T> {
  const Result();

  /// Returns true if this is a success result.
  bool get isSuccess => this is Success<T>;

  /// Returns true if this is a failure result.
  bool get isFailure => this is Fail<T>;

  /// Returns the success value or null.
  T? get valueOrNull => switch (this) {
        Success(value: final v) => v,
        Fail() => null,
      };

  /// Returns the failure or null.
  Failure? get failureOrNull => switch (this) {
        Success() => null,
        Fail(failure: final f) => f,
      };

  /// Maps the success value to a new type.
  Result<R> map<R>(R Function(T) mapper) => switch (this) {
        Success(value: final v) => Success(mapper(v)),
        Fail(failure: final f) => Fail(f),
      };

  /// Maps the success value to a new Result.
  Result<R> flatMap<R>(Result<R> Function(T) mapper) => switch (this) {
        Success(value: final v) => mapper(v),
        Fail(failure: final f) => Fail(f),
      };

  /// Folds the result into a single value.
  R fold<R>({
    required R Function(T) onSuccess,
    required R Function(Failure) onFailure,
  }) =>
      switch (this) {
        Success(value: final v) => onSuccess(v),
        Fail(failure: final f) => onFailure(f),
      };

  /// Executes action on success.
  Result<T> onSuccess(void Function(T) action) {
    if (this case Success(value: final v)) {
      action(v);
    }
    return this;
  }

  /// Executes action on failure.
  Result<T> onFailure(void Function(Failure) action) {
    if (this case Fail(failure: final f)) {
      action(f);
    }
    return this;
  }
}

/// Success result containing a value.
final class Success<T> extends Result<T> {
  const Success(this.value);
  final T value;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Success<T> && other.value == value);

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Success($value)';
}

/// Failure result containing a Failure.
final class Fail<T> extends Result<T> {
  const Fail(this.failure);
  final Failure failure;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Fail<T> && other.failure == failure);

  @override
  int get hashCode => failure.hashCode;

  @override
  String toString() => 'Fail($failure)';
}

/// Extension for creating results.
extension ResultExtensions<T> on T {
  Result<T> get asSuccess => Success(this);
}

extension FailureExtensions on Failure {
  Result<T> asFail<T>() => Fail(this);
}
