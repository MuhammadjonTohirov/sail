import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sail_mobile/core/utils/toast_manager.dart';
import 'package:sail_mobile/l10n/app_localizations.dart';
import 'package:sail_mobile/presentation/widgets/toast/toast_widget.dart';
import 'package:sail_mobile/presentation/bloc/auth/auth_bloc.dart';
import 'package:sail_mobile/presentation/widgets/design_system/sail_button.dart';
import 'package:sail_mobile/presentation/widgets/design_system/sail_text_field.dart';
import 'package:sail_mobile/core/theme/app_colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _onLoginPressed() {
    if (_formKey.currentState?.validate() ?? false) {
      context.read<AuthBloc>().add(
            AuthEvent.loginRequested(
              _emailController.text,
              _passwordController.text,
            ),
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.loginTitle),
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
             if (context.canPop()) {
               context.pop();
             } else {
               context.go('/');
             }
          },
        ),
      ),
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.maybeWhen(
            authenticated: (_) {
              if (context.canPop()) {
                context.pop();
              } else {
                context.go('/');
              }
            },
            failure: (failure) {
              ToastManager().show(
                message: l10n.loginFailed(failure.message),
                type: ToastType.error,
              );
            },
            orElse: () {},
          );
        },
        child: Container(
        color: AppColors.background,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const SizedBox(height: 20),
                _buildHeader(context, l10n),
                const SizedBox(height: 20),
                _buildLoginForm(context, l10n),
                const SizedBox(height: 16),
                Text(
                  l10n.authOr.toLowerCase(),
                  style: TextStyle(color: AppColors.neutral.shade600, fontSize: 14),
                ),
                const SizedBox(height: 16),
                _buildSocialLoginSection(l10n),
                const SizedBox(height: 32),
                _buildFooter(context, l10n),
                const SizedBox(height: 32),
              ],
            ),
          ),
        ),
      ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context, AppLocalizations l10n) {
    return Column(
      children: [
        Container(
          width: 64,
          height: 64,
          decoration: const BoxDecoration(
            color: AppColors.neutral,
            shape: BoxShape.circle,
          ),
          child: const Icon(Icons.person_outline, size: 32, color: AppColors.surface),
        ),
        const SizedBox(height: 16),
        Text(
          l10n.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
            fontWeight: FontWeight.bold,
            color: AppColors.neutral.shade900,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "${l10n.authOr} ",
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: AppColors.neutral.shade600,
              ),
            ),
            GestureDetector(
              onTap: () => context.push('/register'),
              child: Text(
                l10n.authRegisterAction,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: AppColors.primary,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildLoginForm(BuildContext context, AppLocalizations l10n) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      color: AppColors.surface,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SailTextField(
                controller: _emailController,
                label: l10n.loginUsernameLabel,
                hintText: "user@example.com",
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return l10n.loginUsernameError;
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              SailTextField(
                controller: _passwordController,
                label: l10n.loginPasswordLabel,
                hintText: l10n.loginPasswordLabel,
                isPassword: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return l10n.loginPasswordError;
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              Align(
                alignment: Alignment.centerLeft,
                child: SailButton.ghost(
                  text: l10n.authForgotPassword,
                  onPressed: () {
                    ToastManager().show(
                      message: "Forgot password implementation pending",
                      type: ToastType.info,
                    );
                  },
                ),
              ),
              const SizedBox(height: 24),
              BlocBuilder<AuthBloc, AuthState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    loading: () => const SailButton.primary(
                      text: "",
                      onPressed: null,
                      isLoading: true,
                    ),
                    orElse: () => SailButton.primary(
                      text: l10n.authLogin,
                      onPressed: _onLoginPressed,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSocialLoginSection(AppLocalizations l10n) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      color: AppColors.surface,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SailButton.telegram(
              text: l10n.authTelegramButton,
              onPressed: () {
                ToastManager().show(
                  message: l10n.authTelegramComingSoon,
                  type: ToastType.info,
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFooter(BuildContext context, AppLocalizations l10n) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Text(
        l10n.authTerms,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.bodySmall?.copyWith(
          color: AppColors.neutral.shade500,
        ),
      ),
    );
  }
}
