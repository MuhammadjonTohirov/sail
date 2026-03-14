import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sail_mobile/l10n/app_localizations.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/utils/image_utils.dart';
import '../../../../domain/entities/listing.dart';
import '../../bloc/search/search_bloc.dart';
import '../../widgets/home/listing_card.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<SearchBloc>()..add(const SearchEvent.started()),
      child: const _SearchView(),
    );
  }
}

class _SearchView extends StatefulWidget {
  const _SearchView();

  @override
  State<_SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<_SearchView> {
  final _searchController = TextEditingController();
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _searchController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      context.read<SearchBloc>().add(const SearchEvent.loadMore());
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.searchTitle),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(56),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: l10n.searchHint,
                prefixIcon: const Icon(Icons.search),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.tune),
                  onPressed: () => _showFilters(context),
                ),
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
              onSubmitted: (q) {
                context.read<SearchBloc>()
                  ..add(SearchEvent.queryChanged(q))
                  ..add(const SearchEvent.search());
              },
            ),
          ),
        ),
      ),
      body: BlocBuilder<SearchBloc, SearchState>(
        builder: (context, state) {
          if (state.isLoading && state.results.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state.error != null && state.results.isEmpty) {
            return Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(state.error!.message),
                  const SizedBox(height: 12),
                  TextButton(
                    onPressed: () => context.read<SearchBloc>().add(const SearchEvent.search()),
                    child: Text(l10n.generalRetry),
                  ),
                ],
              ),
            );
          }

          // No results — show suggested
          if (state.results.isEmpty && !state.isLoading) {
            return _buildSuggested(context, l10n, state);
          }

          return _buildResults(context, l10n, state);
        },
      ),
    );
  }

  Widget _buildSuggested(BuildContext context, AppLocalizations l10n, SearchState state) {
    if (state.suggested.isEmpty) {
      return Center(child: Text(l10n.searchNoResults));
    }

    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.all(16),
          sliver: SliverToBoxAdapter(
            child: Text(
              l10n.searchRecommended,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          sliver: SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.65,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final listing = state.suggested[index];
                return _SuggestedCard(
                  listing: listing,
                  onTap: () => context.push('/listing/${listing.id}'),
                );
              },
              childCount: state.suggested.length,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildResults(BuildContext context, AppLocalizations l10n, SearchState state) {
    return CustomScrollView(
      controller: _scrollController,
      slivers: [
        // Sort & result count bar
        SliverPadding(
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 4),
          sliver: SliverToBoxAdapter(
            child: Row(
              children: [
                Text(
                  l10n.searchResultCount(state.total),
                  style: TextStyle(color: AppColors.neutral[600], fontSize: 14),
                ),
                const Spacer(),
                _SortDropdown(
                  value: state.sort,
                  onChanged: (v) => context.read<SearchBloc>().add(SearchEvent.sortChanged(v)),
                  l10n: l10n,
                ),
              ],
            ),
          ),
        ),
        // Results grid
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          sliver: SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.65,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final item = state.results[index];
                return ListingCard(
                  listing: item,
                  onTap: () => context.push('/listing/${item.id}'),
                );
              },
              childCount: state.results.length,
            ),
          ),
        ),
        // Loading more indicator
        if (state.isLoadingMore)
          const SliverPadding(
            padding: EdgeInsets.all(24),
            sliver: SliverToBoxAdapter(
              child: Center(child: CircularProgressIndicator()),
            ),
          ),
        // Bottom padding
        const SliverPadding(padding: EdgeInsets.only(bottom: 24)),
      ],
    );
  }

  void _showFilters(BuildContext context) {
    final bloc = context.read<SearchBloc>();
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (_) => BlocProvider.value(
        value: bloc,
        child: const _FilterSheet(),
      ),
    );
  }
}

// ─── Filter Sheet ───

class _FilterSheet extends StatefulWidget {
  const _FilterSheet();

  @override
  State<_FilterSheet> createState() => _FilterSheetState();
}

class _FilterSheetState extends State<_FilterSheet> {
  final _minPriceController = TextEditingController();
  final _maxPriceController = TextEditingController();
  String? _condition;
  String? _currency;

  @override
  void initState() {
    super.initState();
    final state = context.read<SearchBloc>().state;
    _minPriceController.text = state.priceMin?.toString() ?? '';
    _maxPriceController.text = state.priceMax?.toString() ?? '';
    _condition = state.condition;
    _currency = state.currency;
  }

  @override
  void dispose() {
    _minPriceController.dispose();
    _maxPriceController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return DraggableScrollableSheet(
      expand: false,
      initialChildSize: 0.6,
      maxChildSize: 0.85,
      builder: (context, scrollController) => Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          controller: scrollController,
          children: [
            // Header
            Row(
              children: [
                Text(l10n.searchFilters,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold)),
                const Spacer(),
                TextButton(
                  onPressed: () {
                    context.read<SearchBloc>().add(const SearchEvent.filtersCleared());
                    Navigator.pop(context);
                  },
                  child: Text(l10n.searchClearFilters),
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Condition
            Text(l10n.searchCondition, style: const TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            SegmentedButton<String?>(
              segments: [
                ButtonSegment(value: null, label: Text(l10n.searchConditionAll)),
                ButtonSegment(value: 'new', label: Text(l10n.postConditionNew)),
                ButtonSegment(value: 'used', label: Text(l10n.postConditionUsed)),
              ],
              selected: {_condition},
              onSelectionChanged: (v) => setState(() => _condition = v.first),
            ),
            const SizedBox(height: 20),

            // Price range
            Text(l10n.searchPriceRange, style: const TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _minPriceController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(hintText: l10n.searchPriceMin),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Text('—'),
                ),
                Expanded(
                  child: TextField(
                    controller: _maxPriceController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(hintText: l10n.searchPriceMax),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Currency
            Text(l10n.postCurrencyLabel, style: const TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            SegmentedButton<String?>(
              segments: [
                ButtonSegment(value: null, label: Text(l10n.searchConditionAll)),
                const ButtonSegment(value: 'UZS', label: Text('UZS')),
                const ButtonSegment(value: 'USD', label: Text('USD')),
              ],
              selected: {_currency},
              onSelectionChanged: (v) => setState(() => _currency = v.first),
            ),
            const SizedBox(height: 24),

            // Apply button
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: _applyFilters,
                child: Text(l10n.searchApplyFilters),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _applyFilters() {
    final bloc = context.read<SearchBloc>();
    final minPrice = double.tryParse(_minPriceController.text);
    final maxPrice = double.tryParse(_maxPriceController.text);

    bloc
      ..add(SearchEvent.conditionChanged(_condition))
      ..add(SearchEvent.priceRangeChanged(min: minPrice, max: maxPrice))
      ..add(SearchEvent.currencyChanged(_currency))
      ..add(const SearchEvent.search());

    Navigator.pop(context);
  }
}

// ─── Subwidgets ───

class _SortDropdown extends StatelessWidget {
  const _SortDropdown({
    required this.value,
    required this.onChanged,
    required this.l10n,
  });

  final String value;
  final ValueChanged<String> onChanged;
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: value,
      underline: const SizedBox.shrink(),
      isDense: true,
      items: [
        DropdownMenuItem(value: 'relevance', child: Text(l10n.searchSortRelevance)),
        DropdownMenuItem(value: '-created_at', child: Text(l10n.searchSortNewest)),
        DropdownMenuItem(value: 'price_normalized', child: Text(l10n.searchSortPriceAsc)),
        DropdownMenuItem(value: '-price_normalized', child: Text(l10n.searchSortPriceDesc)),
      ],
      onChanged: (v) {
        if (v != null) onChanged(v);
      },
    );
  }
}

class _SuggestedCard extends StatelessWidget {
  const _SuggestedCard({required this.listing, required this.onTap});

  final Listing listing;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final imageUrl = listing.media?.isNotEmpty == true
        ? (listing.media!.first.imageUrl ?? listing.media!.first.image)
        : (listing.mediaUrls?.isNotEmpty == true ? listing.mediaUrls!.first : null);

    return GestureDetector(
      onTap: onTap,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 4 / 3,
              child: imageUrl != null
                  ? Image.network(trustedImageUrl(imageUrl), fit: BoxFit.cover, width: double.infinity)
                  : Container(
                      color: Colors.grey[200],
                      child: const Center(child: Icon(Icons.image_not_supported)),
                    ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(listing.title, maxLines: 2, overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold)),
                  const SizedBox(height: 4),
                  Text(
                    '${listing.priceAmount.toStringAsFixed(0)} ${listing.priceCurrency}',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  if (listing.locationName != null) ...[
                    const SizedBox(height: 4),
                    Text(listing.locationName!, maxLines: 1, overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.grey[600])),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
