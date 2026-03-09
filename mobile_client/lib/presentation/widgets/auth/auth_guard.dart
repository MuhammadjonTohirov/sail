import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/auth/auth_bloc.dart';
import 'package:go_router/go_router.dart';

class AuthGuard extends StatelessWidget {
  const AuthGuard({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is! AuthAuthenticated && state is! AuthLoading && state is! AuthInitial) {
           // If unauthenticated or failure, redirect to login
           // Check current location to avoid loop?
           // Actually GoRouter redirect is better for this.
           // But as a widget, we can push login.
           context.go('/login');
        }
      },
      child: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          return state.maybeWhen(
             authenticated: (_) => child,
             loading: () => const Scaffold(body: Center(child: CircularProgressIndicator())),
             orElse: () => const Scaffold(body: Center(child: CircularProgressIndicator())), // Wait for check
          );
        },
      ),
    );
  }
}
