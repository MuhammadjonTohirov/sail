import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../../domain/repositories/favorites_repository.dart';
import '../../../../domain/repositories/listing_repository.dart';
import 'listing_detail_event.dart';
import 'listing_detail_state.dart';

export 'listing_detail_event.dart';
export 'listing_detail_state.dart';

@injectable
class ListingDetailBloc extends Bloc<ListingDetailEvent, ListingDetailState> {
  final ListingRepository _listingRepository;
  final FavoritesRepository _favoritesRepository;

  ListingDetailBloc(this._listingRepository, this._favoritesRepository)
      : super(const ListingDetailState()) {
    on<ListingDetailStarted>(_onStarted);
    on<ListingDetailRevealContact>(_onRevealContact);
    on<ListingDetailToggleFavorite>(_onToggleFavorite);
    on<ListingDetailImageChanged>(_onImageChanged);
  }

  int? _listingId;

  Future<void> _onStarted(ListingDetailStarted event, Emitter<ListingDetailState> emit) async {
    _listingId = event.listingId;
    emit(const ListingDetailState(isLoading: true));

    final result = await _listingRepository.getById(event.listingId);

    await result.fold(
      onSuccess: (listing) async {
        emit(state.copyWith(isLoading: false, listing: listing));

        // Track view
        await _favoritesRepository.trackView(event.listingId);

        // Load seller's other listings
        if (listing.userId != null) {
          final sellerResult = await _listingRepository.getUserListings(listing.userId!);
          sellerResult.fold(
            onSuccess: (listings) {
              final others = listings.where((l) => l.id != event.listingId).take(6).toList();
              emit(state.copyWith(sellerListings: others));
            },
            onFailure: (_) {},
          );
        }
      },
      onFailure: (failure) async {
        emit(state.copyWith(isLoading: false, error: failure));
      },
    );
  }

  Future<void> _onRevealContact(ListingDetailRevealContact event, Emitter<ListingDetailState> emit) async {
    if (_listingId == null) return;
    emit(state.copyWith(isRevealingContact: true));

    final result = await _listingRepository.revealContact(_listingId!);
    result.fold(
      onSuccess: (contact) => emit(state.copyWith(
        isRevealingContact: false,
        revealedContact: contact,
      )),
      onFailure: (_) => emit(state.copyWith(isRevealingContact: false)),
    );
  }

  Future<void> _onToggleFavorite(ListingDetailToggleFavorite event, Emitter<ListingDetailState> emit) async {
    if (_listingId == null) return;
    final result = await _favoritesRepository.toggleFavorite(_listingId!);
    result.fold(
      onSuccess: (isFav) => emit(state.copyWith(isFavorited: isFav)),
      onFailure: (_) {},
    );
  }

  void _onImageChanged(ListingDetailImageChanged event, Emitter<ListingDetailState> emit) {
    emit(state.copyWith(currentImageIndex: event.index));
  }
}
