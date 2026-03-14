import '../../core/utils/result.dart';

/// Base use case with parameters.
abstract class UseCase<T, P> {
  Future<Result<T>> call(P params);
}

/// Base use case without parameters.
abstract class UseCaseNoParams<T> {
  Future<Result<T>> call();
}

/// No parameters marker.
class NoParams {
  const NoParams();
}
