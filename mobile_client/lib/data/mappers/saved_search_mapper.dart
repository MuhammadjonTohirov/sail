/// Saved search mappers for SavedSearchDto ↔ SavedSearch conversion.
library;

import '../../domain/entities/saved_search.dart';
import '../models/saved_search/saved_search_dto.dart';

/// Mapper for SavedSearchDto → SavedSearch.
extension SavedSearchDtoMapper on SavedSearchDto {
  SavedSearch toEntity() {
    return SavedSearch(
      id: id,
      title: title,
      query: query,
      frequency: frequency,
      isActive: isActive,
      newListingsCount: newListingsCount,
      lastNotifiedAt: lastNotifiedAt != null ? DateTime.tryParse(lastNotifiedAt!) : null,
      lastViewedAt: lastViewedAt != null ? DateTime.tryParse(lastViewedAt!) : null,
      createdAt: createdAt != null ? DateTime.tryParse(createdAt!) : null,
      updatedAt: updatedAt != null ? DateTime.tryParse(updatedAt!) : null,
    );
  }
}

/// Mapper for SavedSearchPayload → CreateSavedSearchRequestDto.
extension SavedSearchPayloadMapper on SavedSearchPayload {
  CreateSavedSearchRequestDto toCreateDto() {
    return CreateSavedSearchRequestDto(
      title: title,
      query: query,
      frequency: frequency,
    );
  }

  UpdateSavedSearchRequestDto toUpdateDto() {
    return UpdateSavedSearchRequestDto(
      title: title,
      query: query,
      frequency: frequency,
      isActive: isActive,
    );
  }
}
