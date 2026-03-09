import 'package:freezed_annotation/freezed_annotation.dart';

part 'saved_search_dto.freezed.dart';
part 'saved_search_dto.g.dart';

/// Saved search DTO matching server response.
/// 
/// Matches web_client/data/models/SavedSearchDTO.ts
@freezed
abstract class SavedSearchDto with _$SavedSearchDto {
  const factory SavedSearchDto({
    required int id,
    required String title,
    required Map<String, dynamic> query,
    String? frequency, // 'instant', 'daily'
    @JsonKey(name: 'is_active') @Default(true) bool isActive,
    @JsonKey(name: 'new_listings_count') @Default(0) int newListingsCount,
    @JsonKey(name: 'last_notified_at') String? lastNotifiedAt,
    @JsonKey(name: 'last_viewed_at') String? lastViewedAt,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _SavedSearchDto;

  factory SavedSearchDto.fromJson(Map<String, dynamic> json) =>
      _$SavedSearchDtoFromJson(json);
}

/// Create saved search request payload.
@freezed
abstract class CreateSavedSearchRequestDto with _$CreateSavedSearchRequestDto {
  const factory CreateSavedSearchRequestDto({
    required String title,
    required Map<String, dynamic> query,
    String? frequency,
  }) = _CreateSavedSearchRequestDto;

  factory CreateSavedSearchRequestDto.fromJson(Map<String, dynamic> json) =>
      _$CreateSavedSearchRequestDtoFromJson(json);
}

/// Update saved search request payload.
@freezed
abstract class UpdateSavedSearchRequestDto with _$UpdateSavedSearchRequestDto {
  const factory UpdateSavedSearchRequestDto({
    String? title,
    Map<String, dynamic>? query,
    String? frequency,
    @JsonKey(name: 'is_active') bool? isActive,
  }) = _UpdateSavedSearchRequestDto;

  factory UpdateSavedSearchRequestDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateSavedSearchRequestDtoFromJson(json);
}
