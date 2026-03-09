import 'package:freezed_annotation/freezed_annotation.dart';

part 'saved_search.freezed.dart';

/// Saved search entity.
/// 
/// Matches web_client/domain/models/SavedSearch.ts
@freezed
abstract class SavedSearch with _$SavedSearch {
  const factory SavedSearch({
    required int id,
    required String title,
    required Map<String, dynamic> query,
    String? frequency, // 'instant', 'daily'
    @Default(true) bool isActive,
    @Default(0) int newListingsCount,
    DateTime? lastNotifiedAt,
    DateTime? lastViewedAt,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _SavedSearch;
}

/// Saved search payload for create/update.
@freezed
abstract class SavedSearchPayload with _$SavedSearchPayload {
  const factory SavedSearchPayload({
    required String title,
    required Map<String, dynamic> query,
    String? frequency,
    bool? isActive,
  }) = _SavedSearchPayload;
}
