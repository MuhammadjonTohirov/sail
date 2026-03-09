import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:sail_mobile/core/utils/result.dart';
import 'package:sail_mobile/domain/entities/category.dart';
import 'package:sail_mobile/domain/entities/search_result.dart';
import 'package:sail_mobile/domain/repositories/search_repository.dart';
import 'package:sail_mobile/domain/repositories/taxonomy_repository.dart';
import 'home_event.dart';
import 'home_state.dart';

export 'home_event.dart';
export 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final TaxonomyRepository _taxonomyRepository;
  final SearchRepository _searchRepository;

  HomeBloc(
    this._taxonomyRepository,
    this._searchRepository,
  ) : super(const HomeState.initial()) {
    on<HomeStarted>(_onStarted);
    on<HomeRefresh>(_onRefresh);
    on<HomeLoadMore>(_onLoadMore);
  }

  Future<void> _onStarted(
    HomeStarted event,
    Emitter<HomeState> emit,
  ) async {
    emit(const HomeState.loading());
    
    // Fetch categories and initial listings in parallel
    final results = await Future.wait([
      _taxonomyRepository.getCategories(),
      _searchRepository.searchListings(page: 1),
    ]);

    List<Category> categories = [];
    List<SearchListing> listings = [];
    
    // Process Categories
    (results[0] as Result<List<Category>>).fold(
      onSuccess: (data) => categories = data,
      onFailure: (f) {
         // Log error, but maybe continue with empty categories?
      }
    );

    // Process Listings
    (results[1] as Result<SearchResult>).fold(
      onSuccess: (data) => listings = data.results,
      onFailure: (f) {
        emit(HomeState.failure(f));
        return; 
      }
    );

    if (state is! HomeFailure) {
       emit(HomeState.loaded(categories: categories, listings: listings));
    }
  }

  Future<void> _onRefresh(
    HomeRefresh event,
    Emitter<HomeState> emit,
  ) async {
    // Only refresh listings, keep categories if we have them, or refresh both?
    // Let's refresh both for safety.
    add(const HomeEvent.started());
  }

  Future<void> _onLoadMore(
    HomeLoadMore event,
    Emitter<HomeState> emit,
  ) async {
    final currentState = state;
    if (currentState is HomeLoaded && !currentState.hasReachedMax) {
      final nextPage = currentState.currentPage + 1;
      final result = await _searchRepository.searchListings(page: nextPage);
      
      result.fold(
        onSuccess: (data) {
          
           emit(currentState.copyWith(
             listings: [...currentState.listings, ...data.results],
             currentPage: nextPage,
             hasReachedMax: data.results.isEmpty, // Simple check
           ));
        },
        onFailure: (_) {
          // Ignore load more failure or show snackbar?
        }
      );
    }
  }
}
