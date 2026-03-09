import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sail_mobile/l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/di/injection.dart';
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
    return Scaffold(
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return RefreshIndicator(
            onRefresh: () async {
              context.read<HomeBloc>().add(const HomeEvent.refresh());
              // Wait for state to change? Or just dispatch.
              // For smoother UX, we might want to await.
            },
            child: CustomScrollView(
              controller: _scrollController,
              slivers: [
                SliverAppBar(
                  floating: true,
                  title: Text(AppLocalizations.of(context)!.appTitle),
                  actions: [
                    IconButton(
                      icon: const Icon(Icons.notifications_outlined),
                      onPressed: () {},
                    ),
                  ],
                  bottom: PreferredSize(
                    preferredSize: const Size.fromHeight(60),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                           // Navigate to search page
                           // context.push('/search');
                        },
                        child: Container(
                          height: 44,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Row(
                            children: [
                              const Icon(Icons.search, color: Colors.grey),
                              const SizedBox(width: 8),
                              Text(
                                AppLocalizations.of(context)!.homeSearchHint,
                                style: TextStyle(color: Colors.grey[600]),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                
                // Categories Grid
                if (state is HomeLoaded) ...[
                   SliverToBoxAdapter(
                     child: Padding(
                       padding: const EdgeInsets.all(16.0),
                       child: Text(
                         AppLocalizations.of(context)!.homeCategoriesTitle,
                         style: Theme.of(context).textTheme.titleMedium,
                       ),
                     ),
                   ),
                   SliverPadding(
                     padding: const EdgeInsets.symmetric(horizontal: 16),
                     sliver: SliverGrid(
                       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                         crossAxisCount: 4,
                         mainAxisSpacing: 16,
                         crossAxisSpacing: 16,
                         childAspectRatio: 0.75,
                       ),
                       delegate: SliverChildBuilderDelegate(
                         (context, index) {
                           if (index >= state.categories.length) return null;
                           final category = state.categories[index];
                           return CategoryIcon(
                             category: category, 
                             onTap: () {
                               // Filter by category
                             }
                           );
                         },
                         childCount: state.categories.length,
                       ),
                     ),
                   ),
                   
                   SliverToBoxAdapter(
                     child: Padding(
                       padding: const EdgeInsets.all(16.0),
                       child: Text(
                         AppLocalizations.of(context)!.homeRecommendationsTitle,
                         style: Theme.of(context).textTheme.titleMedium,
                       ),
                     ),
                   ),

                   // Listings List
                   SliverPadding(
                     padding: const EdgeInsets.symmetric(horizontal: 16),
                     sliver: SliverList(
                       delegate: SliverChildBuilderDelegate(
                         (context, index) {
                           if (index >= state.listings.length) {
                              return state.hasReachedMax 
                                  ? null 
                                  : const Center(child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: CircularProgressIndicator(),
                                    ));
                           }
                           final listing = state.listings[index];
                           return Padding(
                             padding: const EdgeInsets.only(bottom: 12),
                             child: ListingCard(
                               listing: listing,
                               onTap: () {
                                 context.push('/l/${listing.id}');
                               },
                             ),
                           );
                         },
                         // Add 1 for loader if not reached max
                         childCount: state.hasReachedMax 
                             ? state.listings.length 
                             : state.listings.length + 1,
                       ),
                     ),
                   ),
                ] else if (state is HomeLoading || state is HomeInitial) ...[
                   const SliverFillRemaining(
                     child: Center(child: CircularProgressIndicator()),
                   )
                ] else if (state is HomeFailure) ...[
                   SliverFillRemaining(
                     child: Center(child: Text('Error: ${state.failure.message}')),
                   )
                ],
              ],
            ),
          );
        },
      ),
    );
  }
}
