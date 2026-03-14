import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../../domain/repositories/search_repository.dart';
import '../../../../domain/repositories/suggested_listings_repository.dart';
import '../../../../domain/repositories/taxonomy_repository.dart';
import 'search_event.dart';
import 'search_state.dart';

export 'search_event.dart';
export 'search_state.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchRepository _searchRepository;
  final SuggestedListingsRepository _suggestedRepository;
  final TaxonomyRepository _taxonomyRepository;

  SearchBloc(
    this._searchRepository,
    this._suggestedRepository,
    this._taxonomyRepository,
  ) : super(const SearchState()) {
    on<SearchStarted>(_onStarted);
    on<SearchQueryChanged>(_onQueryChanged);
    on<SearchSubmitted>(_onSearch);
    on<SearchLoadMore>(_onLoadMore);
    on<SearchSortChanged>(_onSortChanged);
    on<SearchConditionChanged>(_onConditionChanged);
    on<SearchPriceRangeChanged>(_onPriceRangeChanged);
    on<SearchCurrencyChanged>(_onCurrencyChanged);
    on<SearchCategoryChanged>(_onCategoryChanged);
    on<SearchFiltersCleared>(_onFiltersCleared);
  }

  Future<void> _onStarted(SearchStarted event, Emitter<SearchState> emit) async {
    emit(state.copyWith(isLoading: true));

    // Load categories for filter picker
    final catResult = await _taxonomyRepository.getCategories();
    catResult.fold(
      onSuccess: (cats) => emit(state.copyWith(categories: cats)),
      onFailure: (_) {},
    );

    // Load suggested listings
    final sugResult = await _suggestedRepository.getSuggestedListings(limit: 8);
    sugResult.fold(
      onSuccess: (listings) => emit(state.copyWith(suggested: listings)),
      onFailure: (_) {},
    );

    emit(state.copyWith(isLoading: false));
  }

  Future<void> _onQueryChanged(SearchQueryChanged event, Emitter<SearchState> emit) async {
    emit(state.copyWith(query: event.query));
  }

  Future<void> _onSearch(SearchSubmitted event, Emitter<SearchState> emit) async {
    emit(state.copyWith(isLoading: true, page: 1, results: [], hasReachedMax: false, error: null));
    await _performSearch(emit, page: 1);
  }

  Future<void> _onLoadMore(SearchLoadMore event, Emitter<SearchState> emit) async {
    if (state.isLoadingMore || state.hasReachedMax) return;
    emit(state.copyWith(isLoadingMore: true));
    await _performSearch(emit, page: state.page + 1, append: true);
  }

  Future<void> _onSortChanged(SearchSortChanged event, Emitter<SearchState> emit) async {
    emit(state.copyWith(sort: event.sort, page: 1, results: [], isLoading: true));
    await _performSearch(emit, page: 1);
  }

  Future<void> _onConditionChanged(SearchConditionChanged event, Emitter<SearchState> emit) async {
    emit(state.copyWith(condition: event.condition, page: 1, results: [], isLoading: true));
    await _performSearch(emit, page: 1);
  }

  Future<void> _onPriceRangeChanged(SearchPriceRangeChanged event, Emitter<SearchState> emit) async {
    emit(state.copyWith(priceMin: event.min, priceMax: event.max, page: 1, results: [], isLoading: true));
    await _performSearch(emit, page: 1);
  }

  Future<void> _onCurrencyChanged(SearchCurrencyChanged event, Emitter<SearchState> emit) async {
    emit(state.copyWith(currency: event.currency, page: 1, results: [], isLoading: true));
    await _performSearch(emit, page: 1);
  }

  Future<void> _onCategoryChanged(SearchCategoryChanged event, Emitter<SearchState> emit) async {
    emit(state.copyWith(categoryId: event.categoryId, page: 1, results: [], isLoading: true));
    await _performSearch(emit, page: 1);
  }

  Future<void> _onFiltersCleared(SearchFiltersCleared event, Emitter<SearchState> emit) async {
    emit(state.copyWith(
      query: '',
      condition: null,
      priceMin: null,
      priceMax: null,
      currency: null,
      categoryId: null,
      sort: 'relevance',
      page: 1,
      results: [],
      isLoading: true,
    ));
    await _performSearch(emit, page: 1);
  }

  Future<void> _performSearch(Emitter<SearchState> emit, {required int page, bool append = false}) async {
    final result = await _searchRepository.searchListings(
      query: state.query.isEmpty ? null : state.query,
      category: state.categoryId,
      priceMin: state.priceMin,
      priceMax: state.priceMax,
      condition: state.condition,
      sort: state.sort == 'relevance' ? null : state.sort,
      page: page,
      perPage: state.perPage,
    );

    result.fold(
      onSuccess: (searchResult) {
        final newResults = append
            ? [...state.results, ...searchResult.results]
            : searchResult.results;
        final hasMax = searchResult.results.length < state.perPage;

        emit(state.copyWith(
          results: newResults,
          total: searchResult.total,
          page: page,
          facets: searchResult.facets,
          hasReachedMax: hasMax,
          isLoading: false,
          isLoadingMore: false,
          error: null,
        ));
      },
      onFailure: (failure) {
        emit(state.copyWith(
          isLoading: false,
          isLoadingMore: false,
          error: failure,
        ));
      },
    );
  }
}
