import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sail_mobile/l10n/app_localizations.dart';
import 'package:sail_mobile/core/utils/toast_manager.dart';
import 'package:sail_mobile/presentation/widgets/toast/toast_widget.dart';
import 'package:sail_mobile/presentation/bloc/auth/auth_bloc.dart';

class MainScaffold extends StatelessWidget {
  const MainScaffold({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      body: child,
      bottomNavigationBar: NavigationBar(
        selectedIndex: _calculateSelectedIndex(context),
        onDestinationSelected: (index) => _onItemTapped(index, context),
        destinations: [
          NavigationDestination(
            icon: const Icon(Icons.home_outlined),
            selectedIcon: const Icon(Icons.home),
            label: l10n.navHome,
          ),
          NavigationDestination(
            icon: const Icon(Icons.search),
            label: l10n.navSearch,
          ),
          NavigationDestination(
            icon: const Icon(Icons.add_circle_outline),
            selectedIcon: const Icon(Icons.add_circle),
            label: l10n.navSell,
          ),
          NavigationDestination(
            icon: const Icon(Icons.chat_bubble_outline),
            selectedIcon: const Icon(Icons.chat_bubble),
            label: l10n.navChat,
          ),
          NavigationDestination(
            icon: const Icon(Icons.person_outline),
            selectedIcon: const Icon(Icons.person),
            label: l10n.navProfile,
          ),
        ],
      ),
    );
  }

  static int _calculateSelectedIndex(BuildContext context) {
    final String location = GoRouterState.of(context).uri.path;
    if (location.startsWith('/home') || location == '/') return 0;
    if (location.startsWith('/search')) return 1;
    if (location.startsWith('/post')) return 2;
    if (location.startsWith('/chat')) return 3;
    if (location.startsWith('/profile')) return 4;
    return 0;
  }

  void _onItemTapped(int index, BuildContext context) {
    switch (index) {
      case 0:
        context.go('/');
      case 1:
        context.go('/search');
      case 2:
        _requireAuth(context, () => context.go('/post'));
      case 3:
        // TODO: context.go('/chat');
        break;
      case 4:
        _requireAuth(context, () => context.go('/profile'));
    }
  }

  void _requireAuth(BuildContext context, VoidCallback onAuthenticated) {
    final authState = context.read<AuthBloc>().state;
    authState.maybeWhen(
      authenticated: (_) => onAuthenticated(),
      orElse: () {
        ToastManager().show(
          message: AppLocalizations.of(context)!.loginRequiredMessage,
          type: ToastType.warning,
        );
        context.push('/login');
      },
    );
  }
}
