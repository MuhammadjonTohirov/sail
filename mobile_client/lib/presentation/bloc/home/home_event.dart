import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.freezed.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.started() = HomeStarted;
  const factory HomeEvent.refresh() = HomeRefresh;
  const factory HomeEvent.loadMore() = HomeLoadMore;
  const factory HomeEvent.categorySelected(int categoryId) = HomeCategorySelected;
}
