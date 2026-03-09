import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sail_mobile/core/utils/toast_manager.dart';
import 'package:sail_mobile/l10n/app_localizations.dart';
import '../../widgets/toast/toast_widget.dart';
import '../../bloc/auth/auth_bloc.dart';
import '../../widgets/design_system/sail_button.dart';
import '../../widgets/design_system/sail_text_field.dart';
import 'package:sail_mobile/core/theme/app_colors.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _nameController = TextEditingController();
  final _codeController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  bool _isVerifying = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _nameController.dispose();
    _codeController.dispose();
    super.dispose();
  }

  void _onRegisterPressed() {
    if (_formKey.currentState?.validate() ?? false) {
      context.read<AuthBloc>().add(
            AuthEvent.registerRequested(
              email: _emailController.text,
              password: _passwordController.text,
              displayName: _nameController.text.isNotEmpty ? _nameController.text : null,
            ),
          );
    }
  }

  void _onVerifyPressed() {
    if (_codeController.text.length == 6) {
      context.read<AuthBloc>().add(
            AuthEvent.registerVerifyRequested(
              email: _emailController.text,
              password: _passwordController.text,
              code: _codeController.text,
              displayName: _nameController.text.isNotEmpty ? _nameController.text : null,
            ),
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: Text(l10n.registerTitle), 
        backgroundColor: Colors.transparent, // Make appBar transparentish to blend or standard
        elevation: 0,
      ),
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.whenOrNull(
            codeSent: (email, password, displayName) {
              setState(() {
                _isVerifying = true;
              });
              ToastManager().show(
                message: l10n.authCodeSentSuccess(email),
                type: ToastType.success,
              );
            },
            authenticated: (_) {
               context.go('/'); 
            },
            failure: (f) {
              ToastManager().show(
                message: l10n.registerFailed(f.message),
                type: ToastType.error,
              );
            },
          );
        },
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: _isVerifying ? _buildVerifyForm(l10n) : _buildRegisterForm(l10n),
          ),
        ),
      ),
    );
  }

  Widget _buildRegisterForm(AppLocalizations l10n) {
    return Column(
      children: [
        const SizedBox(height: 16),
        _buildHeader(l10n),
        const SizedBox(height: 32),
        _buildFormCard(l10n),
        const SizedBox(height: 32),
        _buildFooter(l10n),
        const SizedBox(height: 32),
      ],
    );
  }

  Widget _buildHeader(AppLocalizations l10n) {
    return Column(
      children: [
        Container(
           width: 64,
           height: 64,
           decoration: const BoxDecoration(
             color: AppColors.neutral,
             shape: BoxShape.circle,
           ),
           child: const Icon(Icons.person_add_alt_1, size: 32, color: AppColors.surface),
        ),
        const SizedBox(height: 16),
        Text(
          l10n.registerCreateAccount,
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
             fontWeight: FontWeight.bold,
             color: AppColors.neutral.shade900,
          ),
        ),
        const SizedBox(height: 8),
        Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Text(
               "${l10n.authHaveAccount} ",
               style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                 color: AppColors.neutral.shade600,
               ),
             ),
             GestureDetector(
               onTap: () => context.pop(), // Go back to login
               child: Text(
                 l10n.authLoginAction,
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

  Widget _buildFormCard(AppLocalizations l10n) {
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
                label: l10n.registerEmailLabel,
                hintText: "user@example.com",
                helperText: "Ro'yxatdan o'tish uchun emaildan foydalaning",  // TODO: Localize or keep static
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return l10n.registerEmailError;
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              SailTextField(
                controller: _nameController,
                label: l10n.registerNameLabel,
                hintText: "Sizga qanday murojaat qilishimiz mumkin?", // TODO: Localize or keep static
              ),
              const SizedBox(height: 16),
              SailTextField(
                controller: _passwordController,
                label: l10n.registerPasswordLabel,
                hintText: "Ishonchli parol o'ylab toping", // TODO: Localize or keep static
                helperText: "Kamida 8 ta belgi", // TODO: Localize or keep static
                isPassword: true,
                validator: (value) {
                  if (value == null || value.length < 8) { 
                    return l10n.registerPasswordError;
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              SailTextField(
                label: l10n.authConfirmPasswordLabel,
                hintText: "Parolni yana bir marta kiriting", // TODO: Localize or keep static
                isPassword: true,
                validator: (value) {
                  if (value != _passwordController.text) {
                    return l10n.authPasswordsMismatch;
                  }
                  return null;
                },
              ),
              const SizedBox(height: 32),
              BlocBuilder<AuthBloc, AuthState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    loading: () => const SailButton.primary(
                      text: "",
                      onPressed: null,
                      isLoading: true,
                    ),
                    orElse: () => SailButton.primary(
                      text: l10n.authRegister,
                      onPressed: _onRegisterPressed,
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

  Widget _buildFooter(AppLocalizations l10n) {
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

  Widget _buildVerifyForm(AppLocalizations l10n) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          "Verify Account", // TODO: Localize
          style: Theme.of(context).textTheme.headlineMedium,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        Text(
          "Enter the code sent to ${_emailController.text}",
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(height: 32),
        TextField(
          controller: _codeController,
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          maxLength: 6,
          style: const TextStyle(fontSize: 24, letterSpacing: 8),
          decoration: const InputDecoration(
            hintText: "000000",
            counterText: "",
          ),
        ),
        const SizedBox(height: 24),
        BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
             return state.maybeWhen(
                loading: () => const SailButton.primary(text: "Verifying...", onPressed: null, isLoading: true),
                orElse: () => SailButton.primary(
                  text: "Verify", // TODO: Localize
                  onPressed: _onVerifyPressed,
                ),
             );
          },
        ),
        const SizedBox(height: 16),
        SailButton.ghost(
          text: "Back to Register", // TODO: Localize
          onPressed: () {
            setState(() {
              _isVerifying = false;
            });
          },
        ),
      ],
    );
  }
}

