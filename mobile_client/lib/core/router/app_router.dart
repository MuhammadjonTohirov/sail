import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../presentation/pages/home/home_page.dart';
import '../../presentation/pages/auth/login_page.dart';
import '../../presentation/pages/auth/register_page.dart';
import '../../presentation/pages/listing_detail/listing_detail_page.dart';
import '../../presentation/pages/profile/profile_page.dart';
import '../../presentation/pages/post/post_page.dart';
import '../../presentation/pages/search/search_page.dart';
import '../../presentation/pages/main_scaffold.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _shellNavigatorKey = GlobalKey<NavigatorState>();

final appRouter = GoRouter(
  navigatorKey: rootNavigatorKey,
  initialLocation: '/',
  routes: [
    // Auth Routes (outside shell — no bottom nav)
    GoRoute(
      path: '/login',
      pageBuilder: (context, state) => const MaterialPage(
        child: LoginPage(),
        fullscreenDialog: true,
      ),
    ),
    GoRoute(
      path: '/register',
      builder: (context, state) => const RegisterPage(),
    ),

    // Listing detail (outside shell — full screen, no bottom nav)
    GoRoute(
      path: '/listing/:id',
      builder: (context, state) {
        final id = int.parse(state.pathParameters['id']!);
        return ListingDetailPage(listingId: id);
      },
    ),

    // Main Shell Route (Bottom Navigation)
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) {
        return MainScaffold(child: child);
      },
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const HomePage(),
        ),
        GoRoute(
          path: '/search',
          builder: (context, state) => const SearchPage(),
        ),
        GoRoute(
          path: '/post',
          builder: (context, state) => const PostPage(),
        ),
        GoRoute(
          path: '/profile',
          builder: (context, state) => const ProfilePage(),
        ),
      ],
    ),
  ],
);
