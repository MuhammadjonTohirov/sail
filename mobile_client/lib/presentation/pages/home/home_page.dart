import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sail_mobile/l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/theme/app_colors.dart';
import '../../bloc/home/home_bloc.dart';
import '../../widgets/home/category_icon.dart';
import '../../widgets/home/listing_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HomeBloc>()..add(const HomeEvent.started()),
      child: const HomeView(),
    );
  }
}

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom) {
      context.read<HomeBloc>().add(const HomeEvent.loadMore());
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return RefreshIndicator(
            onRefresh: () async {
              context.read<HomeBloc>().add(const HomeEvent.refresh());
            },
            child: CustomScrollView(
              controller: _scrollController,
              slivers: [
                // App Bar with Search
                SliverAppBar(
                  floating: true,
                  title: Text(l10n.appTitle),
                  actions: [
                    IconButton(
                      icon: const Icon(Icons.notifications_outlined),
                      onPressed: () {},
                    ),
                  ],
                  bottom: PreferredSize(
                    preferredSize: const Size.fromHeight(56),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
                      child: GestureDetector(
                        onTap: () {
                          // TODO: Navigate to search page
                        },
                        child: Container(
                          height: 44,
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.surfaceContainerHighest,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            children: [
                              Icon(Icons.search, color: AppColors.neutral[400]),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Text(
                                  l10n.homeSearchHint,
                                  style: TextStyle(
                                    color: AppColors.neutral[400],
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                if (state is HomeLoaded) ...[
                  // Categories horizontal scroll
                  _CategoriesSection(categories: state.categories),

                  // Listings Header
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 24, 16, 12),
                      child: Text(
                        l10n.homeRecommendationsTitle,
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                  ),

                  // Listings 2-Column Grid
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    sliver: SliverGrid(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 12,
                        crossAxisSpacing: 12,
                        childAspectRatio: 0.65,
                      ),
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          if (index >= state.listings.length) return null;
                          final listing = state.listings[index];
                          return ListingCard(
                            listing: listing,
                            onTap: () => context.push('/listing/${listing.id}'),
                          );
                        },
                        childCount: state.listings.length,
                      ),
                    ),
                  ),

                  // Load more indicator
                  if (!state.hasReachedMax)
                    const SliverToBoxAdapter(
                      child: Padding(
                        padding: EdgeInsets.all(24),
                        child: Center(child: CircularProgressIndicator()),
                      ),
                    ),
                ] else if (state is HomeLoading || state is HomeInitial) ...[
                  const SliverFillRemaining(
                    child: Center(child: CircularProgressIndicator()),
                  ),
                ] else if (state is HomeFailure) ...[
                  SliverFillRemaining(
                    child: _ErrorView(
                      message: state.failure.message,
                      onRetry: () => context.read<HomeBloc>().add(const HomeEvent.started()),
                    ),
                  ),
                ],
              ],
            ),
          );
        },
      ),
    );
  }
}

class _CategoriesSection extends StatelessWidget {
  const _CategoriesSection({required this.categories});

  final List<dynamic> categories;

  @override
  Widget build(BuildContext context) {
    if (categories.isEmpty) return const SliverToBoxAdapter(child: SizedBox.shrink());

    final l10n = AppLocalizations.of(context)!;

    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 20, 16, 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  l10n.homeCategoriesTitle,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                TextButton(
                  onPressed: () {
                    // TODO: Navigate to all categories
                  },
                  child: Text(l10n.generalSeeAll),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 100,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: categories.length,
              separatorBuilder: (_, __) => const SizedBox(width: 16),
              itemBuilder: (context, index) {
                final category = categories[index];
                return CategoryIcon(
                  category: category,
                  onTap: () {
                    // TODO: Navigate to category search
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _ErrorView extends StatelessWidget {
  const _ErrorView({required this.message, required this.onRetry});

  final String message;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.error_outline, size: 64, color: AppColors.neutral[300]),
            const SizedBox(height: 16),
            Text(
              message,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 24),
            FilledButton.icon(
              onPressed: onRetry,
              icon: const Icon(Icons.refresh),
              label: Text(l10n.generalRetry),
            ),
          ],
        ),
      ),
    );
  }
}
