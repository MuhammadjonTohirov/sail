import 'package:freezed_annotation/freezed_annotation.dart';

part 'listing_detail_event.freezed.dart';

@freezed
class ListingDetailEvent with _$ListingDetailEvent {
  const factory ListingDetailEvent.started(int listingId) = ListingDetailStarted;
  const factory ListingDetailEvent.revealContact() = ListingDetailRevealContact;
  const factory ListingDetailEvent.toggleFavorite() = ListingDetailToggleFavorite;
  const factory ListingDetailEvent.imageChanged(int index) = ListingDetailImageChanged;
}
