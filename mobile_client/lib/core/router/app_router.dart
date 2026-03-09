import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../presentation/pages/home/home_page.dart';
import '../../presentation/pages/auth/login_page.dart';
import '../../presentation/pages/auth/register_page.dart';
import '../../presentation/pages/main_scaffold.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _shellNavigatorKey = GlobalKey<NavigatorState>();

final appRouter = GoRouter(
  navigatorKey: rootNavigatorKey,
  initialLocation: '/',
  routes: [
    // Auth Routes
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
        // Add other tabs here: Search, Post, Chat, Profile
        GoRoute(
          path: '/profile',
          builder: (context, state) => const Scaffold(body: Center(child: Text('Profile'))), // Placeholder
        ),
      ],
    ),
  ],
);
