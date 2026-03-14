import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sail_mobile/l10n/app_localizations.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/utils/image_utils.dart';
import '../../bloc/auth/auth_bloc.dart';
import '../../bloc/profile/profile_bloc.dart';
import '../../widgets/design_system/sail_button.dart';
import '../../widgets/design_system/sail_text_field.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<ProfileBloc>()..add(const ProfileEvent.started()),
      child: const _ProfileView(),
    );
  }
}

class _ProfileView extends StatefulWidget {
  const _ProfileView();

  @override
  State<_ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<_ProfileView> with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return BlocConsumer<ProfileBloc, ProfileState>(
      listener: (context, state) {
        if (state is ProfileSaved) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(l10n.profileSaveSuccess)),
          );
        } else if (state is ProfilePasswordChanged) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(l10n.securityPasswordChanged)),
          );
        } else if (state is ProfileAccountDeleted || state is ProfileLoggedOut) {
          context.read<AuthBloc>().add(const AuthEvent.logoutRequested());
          context.go('/');
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(l10n.settingsTitle),
            bottom: TabBar(
              controller: _tabController,
              isScrollable: true,
              tabs: [
                Tab(text: l10n.settingsProfileTab),
                Tab(text: l10n.settingsSecurityTab),
                Tab(text: l10n.settingsTelegramTab),
                Tab(text: l10n.settingsAccountTab),
              ],
            ),
          ),
          body: state is ProfileLoading
              ? const Center(child: CircularProgressIndicator())
              : state is ProfileLoaded
                  ? TabBarView(
                      controller: _tabController,
                      children: [
                        _ProfileTab(user: state.user),
                        _SecurityTab(securityInfo: state.securityInfo),
                        _TelegramTab(user: state.user),
                        _AccountTab(),
                      ],
                    )
                  : state is ProfileFailureState
                      ? Center(child: Text(state.failure.message))
                      : const Center(child: CircularProgressIndicator()),
        );
      },
    );
  }
}

// ─── Profile Tab ───

class _ProfileTab extends StatefulWidget {
  const _ProfileTab({required this.user});
  final dynamic user;

  @override
  State<_ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<_ProfileTab> {
  late final TextEditingController _nameController;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.user.displayName);
  }

  @override
  void didUpdateWidget(covariant _ProfileTab oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.user != widget.user) {
      _nameController.text = widget.user.displayName;
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final user = widget.user;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            // Avatar
            Center(
              child: CircleAvatar(
                radius: 48,
                backgroundImage: user.avatarUrl != null
                    ? CachedNetworkImageProvider(trustedImageUrl(user.avatarUrl!))
                    : null,
                child: user.avatarUrl == null
                    ? Text(
                        (user.displayName.isNotEmpty ? user.displayName[0] : '?').toUpperCase(),
                        style: const TextStyle(fontSize: 32),
                      )
                    : null,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              user.email.isNotEmpty ? user.email : user.phoneE164,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: AppColors.neutral[500],
                  ),
            ),
            const SizedBox(height: 24),

            SailTextField(
              controller: _nameController,
              label: l10n.profileDisplayNameLabel,
              hintText: l10n.profileDisplayNameHint,
            ),
            const SizedBox(height: 24),

            SizedBox(
              width: double.infinity,
              child: SailButton.primary(
                text: l10n.profileSaveButton,
                onPressed: () {
                  context.read<ProfileBloc>().add(
                        ProfileEvent.updateProfile(
                          displayName: _nameController.text.trim(),
                        ),
                      );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ─── Security Tab ───

class _SecurityTab extends StatefulWidget {
  const _SecurityTab({this.securityInfo});
  final dynamic securityInfo;

  @override
  State<_SecurityTab> createState() => _SecurityTabState();
}

class _SecurityTabState extends State<_SecurityTab> {
  final _currentPasswordController = TextEditingController();
  final _newPasswordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    // Load security info when tab is first shown
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (widget.securityInfo == null) {
        context.read<ProfileBloc>().add(const ProfileEvent.loadSecurityInfo());
      }
    });
  }

  @override
  void dispose() {
    _currentPasswordController.dispose();
    _newPasswordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final hasPassword = widget.securityInfo?.hasPassword ?? false;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              hasPassword ? l10n.securityChangePassword : l10n.securitySetPassword,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 16),

            if (hasPassword) ...[
              SailTextField(
                controller: _currentPasswordController,
                label: l10n.securityCurrentPassword,
                isPassword: true,
                validator: (v) => (v?.isEmpty ?? true) ? l10n.securityPasswordRequired : null,
              ),
              const SizedBox(height: 16),
            ],

            SailTextField(
              controller: _newPasswordController,
              label: l10n.securityNewPassword,
              isPassword: true,
              validator: (v) {
                if (v == null || v.isEmpty) return l10n.securityPasswordRequired;
                if (v.length < 6) return l10n.securityPasswordMinLength;
                return null;
              },
            ),
            const SizedBox(height: 16),

            SailTextField(
              controller: _confirmPasswordController,
              label: l10n.securityConfirmPassword,
              isPassword: true,
              validator: (v) {
                if (v != _newPasswordController.text) return l10n.securityPasswordMismatch;
                return null;
              },
            ),
            const SizedBox(height: 24),

            SizedBox(
              width: double.infinity,
              child: SailButton.primary(
                text: hasPassword ? l10n.securityChangePassword : l10n.securitySetPassword,
                onPressed: () {
                  if (!_formKey.currentState!.validate()) return;
                  final bloc = context.read<ProfileBloc>();
                  if (hasPassword) {
                    bloc.add(ProfileEvent.changePassword(
                      currentPassword: _currentPasswordController.text,
                      newPassword: _newPasswordController.text,
                    ));
                  } else {
                    bloc.add(ProfileEvent.setPassword(
                      newPassword: _newPasswordController.text,
                    ));
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ─── Telegram Tab ───

class _TelegramTab extends StatelessWidget {
  const _TelegramTab({required this.user});
  final dynamic user;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final hasTelegram = user.telegramId != null;

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Status card
          Card(
            child: ListTile(
              leading: Icon(
                Icons.telegram,
                color: hasTelegram ? AppColors.success : AppColors.neutral[400],
                size: 32,
              ),
              title: Text(hasTelegram ? l10n.telegramConnected : l10n.telegramNotConnected),
              subtitle: hasTelegram && user.telegramUsername != null
                  ? Text(l10n.telegramLinkedAs(user.telegramUsername!))
                  : null,
            ),
          ),
          const SizedBox(height: 24),

          if (hasTelegram)
            SizedBox(
              width: double.infinity,
              child: SailButton.secondary(
                text: l10n.telegramUnlinkAccount,
                onPressed: () => _confirmUnlink(context, l10n),
              ),
            )
          else
            SizedBox(
              width: double.infinity,
              child: SailButton.telegram(
                text: l10n.telegramLinkAccount,
                onPressed: () {
                  // TODO: Open Telegram login flow
                },
              ),
            ),
        ],
      ),
    );
  }

  void _confirmUnlink(BuildContext context, AppLocalizations l10n) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(l10n.telegramUnlinkAccount),
        content: Text(l10n.telegramUnlinkConfirm),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: Text(l10n.generalCancel),
          ),
          FilledButton(
            onPressed: () {
              Navigator.pop(ctx);
              context.read<ProfileBloc>().add(const ProfileEvent.unlinkTelegram());
            },
            child: Text(l10n.generalConfirm),
          ),
        ],
      ),
    );
  }
}

// ─── Account Tab ───

class _AccountTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Logout
          SizedBox(
            width: double.infinity,
            child: SailButton.secondary(
              text: l10n.profileLogout,
              onPressed: () => _confirmLogout(context, l10n),
            ),
          ),
          const SizedBox(height: 32),

          // Delete account section
          Text(
            l10n.accountDeleteTitle,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: AppColors.error,
                ),
          ),
          const SizedBox(height: 8),
          Text(
            l10n.accountDeleteDescription,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: AppColors.neutral[600],
                ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () => _confirmDelete(context, l10n),
              style: OutlinedButton.styleFrom(
                foregroundColor: AppColors.error,
                side: const BorderSide(color: AppColors.error),
                padding: const EdgeInsets.symmetric(vertical: 14),
              ),
              child: Text(l10n.accountDeleteButton),
            ),
          ),
        ],
      ),
    );
  }

  void _confirmLogout(BuildContext context, AppLocalizations l10n) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(l10n.profileLogout),
        content: Text(l10n.profileLogoutConfirm),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: Text(l10n.generalCancel),
          ),
          FilledButton(
            onPressed: () {
              Navigator.pop(ctx);
              context.read<ProfileBloc>().add(const ProfileEvent.logout());
            },
            child: Text(l10n.profileLogout),
          ),
        ],
      ),
    );
  }

  void _confirmDelete(BuildContext context, AppLocalizations l10n) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(l10n.accountDeleteTitle),
        content: Text(l10n.accountDeleteConfirm),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: Text(l10n.generalCancel),
          ),
          FilledButton(
            onPressed: () {
              Navigator.pop(ctx);
              context.read<ProfileBloc>().add(const ProfileEvent.deleteAccount());
            },
            style: FilledButton.styleFrom(backgroundColor: AppColors.error),
            child: Text(l10n.accountDeleteButton),
          ),
        ],
      ),
    );
  }
}
