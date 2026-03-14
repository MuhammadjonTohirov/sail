import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/errors/failures.dart';
import '../../../../domain/entities/listing.dart';

part 'listing_detail_state.freezed.dart';

@freezed
abstract class ListingDetailState with _$ListingDetailState {
  const factory ListingDetailState({
    @Default(true) bool isLoading,
    Listing? listing,
    @Default([]) List<Listing> sellerListings,
    @Default(0) int currentImageIndex,
    @Default(false) bool isFavorited,
    @Default(false) bool isRevealingContact,
    RevealContactResult? revealedContact,
    Failure? error,
  }) = _ListingDetailState;
}
