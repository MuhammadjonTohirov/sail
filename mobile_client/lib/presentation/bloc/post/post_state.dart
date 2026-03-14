import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../domain/entities/category.dart';
import '../../../../domain/entities/listing.dart';
import '../../../../domain/entities/location.dart';
import '../../../../core/errors/failures.dart';

part 'post_state.freezed.dart';

@freezed
class PostState with _$PostState {
  const factory PostState.initial() = PostInitial;
  const factory PostState.loading() = PostLoadingState;
  const factory PostState.ready({
    required List<Category> categories,
    required List<Location> locations,
    List<Attribute>? attributes,
  }) = PostReady;
  const factory PostState.submitting({@Default(null) String? statusMessage}) = PostSubmitting;
  const factory PostState.success(Listing listing) = PostSuccess;
  const factory PostState.failure(Failure failure) = PostFailure;
}
