import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../domain/entities/category.dart';
import '../../../../domain/entities/search_result.dart';
import '../../../../core/errors/failures.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = HomeInitial;
  const factory HomeState.loading() = HomeLoading;
  const factory HomeState.loaded({
    required List<Category> categories,
    required List<SearchListing> listings,
    @Default(false) bool hasReachedMax,
    @Default(1) int currentPage,
  }) = HomeLoaded;
  const factory HomeState.failure(Failure failure) = HomeFailure;
}
