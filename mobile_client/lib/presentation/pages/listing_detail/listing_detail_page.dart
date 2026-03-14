import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:sail_mobile/l10n/app_localizations.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/utils/image_utils.dart';
import '../../../../domain/entities/listing.dart';
import '../../bloc/listing_detail/listing_detail_bloc.dart';

class ListingDetailPage extends StatelessWidget {
  const ListingDetailPage({required this.listingId, super.key});

  final int listingId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<ListingDetailBloc>()
        ..add(ListingDetailEvent.started(listingId)),
      child: const _DetailView(),
    );
  }
}

class _DetailView extends StatelessWidget {
  const _DetailView();

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return BlocBuilder<ListingDetailBloc, ListingDetailState>(
      builder: (context, state) {
        if (state.isLoading) {
          return Scaffold(
            appBar: AppBar(),
            body: const Center(child: CircularProgressIndicator()),
          );
        }

        if (state.error != null || state.listing == null) {
          return Scaffold(
            appBar: AppBar(),
            body: Center(child: Text(state.error?.message ?? l10n.generalError)),
          );
        }

        final listing = state.listing!;
        return Scaffold(
          body: CustomScrollView(
            slivers: [
              _GalleryAppBar(listing: listing, state: state),
              SliverToBoxAdapter(child: _ContentBody(listing: listing, state: state)),
            ],
          ),
          bottomNavigationBar: _BottomContactBar(listing: listing, state: state),
        );
      },
    );
  }
}

// ─── Gallery as SliverAppBar ───

class _GalleryAppBar extends StatelessWidget {
  const _GalleryAppBar({required this.listing, required this.state});

  final Listing listing;
  final ListingDetailState state;

  @override
  Widget build(BuildContext context) {
    final mediaItems = _getMediaUrls(listing);

    return SliverAppBar(
      expandedHeight: 300,
      pinned: true,
      actions: [
        // Share button
        IconButton(
          icon: const Icon(Icons.share_outlined),
          onPressed: () => _shareListing(context),
        ),
        // Favorite button
        IconButton(
          icon: Icon(
            state.isFavorited ? Icons.favorite : Icons.favorite_border,
            color: state.isFavorited ? Colors.red : null,
          ),
          onPressed: () => context.read<ListingDetailBloc>()
              .add(const ListingDetailEvent.toggleFavorite()),
        ),
      ],
      flexibleSpace: FlexibleSpaceBar(
        background: mediaItems.isNotEmpty
            ? _ImagePageView(
                mediaItems: mediaItems,
                currentIndex: state.currentImageIndex,
                isPromoted: listing.isPromoted == true,
                onPageChanged: (i) => context.read<ListingDetailBloc>()
                    .add(ListingDetailEvent.imageChanged(i)),
              )
            : Container(
                color: AppColors.neutral[200],
                child: const Center(child: Icon(Icons.image_not_supported, size: 64)),
              ),
      ),
    );
  }

  void _shareListing(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final text = '${listing.title}\n${listing.priceAmount.toStringAsFixed(0)} ${listing.priceCurrency}';
    Clipboard.setData(ClipboardData(text: text));
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(l10n.detailLinkCopied), duration: const Duration(seconds: 2)),
    );
  }

  List<String> _getMediaUrls(Listing listing) {
    if (listing.media != null && listing.media!.isNotEmpty) {
      return listing.media!
          .map((m) => m.imageUrl ?? m.image ?? '')
          .where((u) => u.isNotEmpty)
          .toList();
    }
    return listing.mediaUrls ?? [];
  }
}

class _ImagePageView extends StatelessWidget {
  const _ImagePageView({
    required this.mediaItems,
    required this.currentIndex,
    required this.isPromoted,
    required this.onPageChanged,
  });

  final List<String> mediaItems;
  final int currentIndex;
  final bool isPromoted;
  final ValueChanged<int> onPageChanged;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Stack(
      fit: StackFit.expand,
      children: [
        PageView.builder(
          itemCount: mediaItems.length,
          onPageChanged: onPageChanged,
          itemBuilder: (context, index) {
            return CachedNetworkImage(
              imageUrl: trustedImageUrl(mediaItems[index]),
              fit: BoxFit.cover,
              placeholder: (_, __) => Container(color: AppColors.neutral[100]),
              errorWidget: (_, __, ___) => const Center(child: Icon(Icons.broken_image)),
            );
          },
        ),
        // Promoted badge
        if (isPromoted)
          Positioned(
            top: MediaQuery.of(context).padding.top + 56,
            left: 12,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              decoration: BoxDecoration(
                color: AppColors.warning,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.star, size: 14, color: Colors.white),
                  const SizedBox(width: 4),
                  Text(l10n.detailPromoted,
                      style: const TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ),
        // Image counter
        if (mediaItems.length > 1)
          Positioned(
            bottom: 12,
            right: 12,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                '${currentIndex + 1} / ${mediaItems.length}',
                style: const TextStyle(color: Colors.white, fontSize: 13),
              ),
            ),
          ),
      ],
    );
  }
}

// ─── Thumbnail strip ───

class _ThumbnailStrip extends StatelessWidget {
  const _ThumbnailStrip({
    required this.mediaItems,
    required this.currentIndex,
    required this.onTap,
  });

  final List<String> mediaItems;
  final int currentIndex;
  final ValueChanged<int> onTap;

  @override
  Widget build(BuildContext context) {
    if (mediaItems.length <= 1) return const SizedBox.shrink();

    return SizedBox(
      height: 64,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: mediaItems.length,
        separatorBuilder: (_, __) => const SizedBox(width: 8),
        itemBuilder: (context, index) {
          final isActive = index == currentIndex;
          return GestureDetector(
            onTap: () => onTap(index),
            child: Container(
              width: 64,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                border: Border.all(
                  color: isActive ? AppColors.primary : Colors.transparent,
                  width: 2,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: CachedNetworkImage(
                  imageUrl: trustedImageUrl(mediaItems[index]),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

// ─── Content Body ───

class _ContentBody extends StatelessWidget {
  const _ContentBody({required this.listing, required this.state});

  final Listing listing;
  final ListingDetailState state;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final dateFormat = DateFormat('dd.MM.yyyy HH:mm');
    final mediaItems = _getMediaUrls(listing);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Thumbnail strip
        if (mediaItems.length > 1) ...[
          const SizedBox(height: 12),
          _ThumbnailStrip(
            mediaItems: mediaItems,
            currentIndex: state.currentImageIndex,
            onTap: (i) => context.read<ListingDetailBloc>()
                .add(ListingDetailEvent.imageChanged(i)),
          ),
        ],

        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Price section
              _PriceSection(listing: listing, l10n: l10n),
              const SizedBox(height: 16),

              // Title
              Text(listing.title,
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),

              // Category & date
              Row(
                children: [
                  if (listing.categoryName != null)
                    Expanded(
                      child: Text(listing.categoryName!,
                          style: TextStyle(color: AppColors.neutral[500], fontSize: 14)),
                    ),
                  if (listing.createdAt != null)
                    Text(dateFormat.format(listing.createdAt!),
                        style: TextStyle(color: AppColors.neutral[400], fontSize: 13)),
                ],
              ),
              const SizedBox(height: 16),

              // Chips (condition, seller type, promoted)
              Wrap(
                spacing: 8,
                runSpacing: 6,
                children: [
                  if (listing.isPromoted == true)
                    _Chip(label: 'TOP', color: AppColors.warning),
                  _Chip(
                    label: listing.condition == 'new' ? l10n.postConditionNew : l10n.postConditionUsed,
                    color: AppColors.neutral[300]!,
                  ),
                  if (listing.sellerType != null)
                    _Chip(
                      label: listing.sellerType == 'business'
                          ? l10n.postSellerTypeBusiness
                          : l10n.postSellerTypePerson,
                      color: AppColors.neutral[300]!,
                    ),
                ],
              ),
              const SizedBox(height: 20),

              // Description
              if (listing.description != null && listing.description!.isNotEmpty) ...[
                Text(l10n.detailDescription,
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                Text(listing.description!, style: const TextStyle(height: 1.5)),
                const SizedBox(height: 20),
              ],

              // Attributes
              if (listing.attributes != null && listing.attributes!.isNotEmpty) ...[
                Text(l10n.detailAttributes,
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                ...listing.attributes!.map((attr) {
                  final value = attr.value is List
                      ? (attr.value as List).join(', ')
                      : '${attr.value}';
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 6),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(attr.label ?? attr.key,
                              style: TextStyle(color: AppColors.neutral[500])),
                        ),
                        Expanded(child: Text(value)),
                      ],
                    ),
                  );
                }),
                const SizedBox(height: 20),
              ],

              const Divider(),
              const SizedBox(height: 16),

              // Seller info
              _SellerSection(listing: listing, l10n: l10n),

              // Location
              if (listing.locationName != null) ...[
                const SizedBox(height: 20),
                _LocationSection(listing: listing, l10n: l10n),
              ],

              // Listing ID & Report
              const SizedBox(height: 20),
              _FooterSection(listing: listing, l10n: l10n),

              // Seller's other listings
              if (state.sellerListings.isNotEmpty) ...[
                const SizedBox(height: 24),
                Row(
                  children: [
                    Expanded(
                      child: Text(l10n.detailSellerListings,
                          style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold)),
                    ),
                    if (listing.userId != null)
                      TextButton(
                        onPressed: () => context.push('/user/${listing.userId}'),
                        child: Text('${l10n.detailViewAll} →'),
                      ),
                  ],
                ),
                const SizedBox(height: 12),
                SizedBox(
                  height: 220,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: state.sellerListings.length,
                    separatorBuilder: (_, __) => const SizedBox(width: 12),
                    itemBuilder: (context, index) {
                      final other = state.sellerListings[index];
                      return SizedBox(
                        width: 160,
                        child: _MiniListingCard(
                          listing: other,
                          onTap: () => context.push('/listing/${other.id}'),
                        ),
                      );
                    },
                  ),
                ),
              ],

              const SizedBox(height: 32),
            ],
          ),
        ),
      ],
    );
  }

  List<String> _getMediaUrls(Listing listing) {
    if (listing.media != null && listing.media!.isNotEmpty) {
      return listing.media!
          .map((m) => m.imageUrl ?? m.image ?? '')
          .where((u) => u.isNotEmpty)
          .toList();
    }
    return listing.mediaUrls ?? [];
  }
}

// ─── Price Section ───

class _PriceSection extends StatelessWidget {
  const _PriceSection({required this.listing, required this.l10n});

  final Listing listing;
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        if (listing.dealType == 'free')
          Text(l10n.detailFree,
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: AppColors.success))
        else
          Text(
            '${listing.priceAmount.toStringAsFixed(0)} ${listing.priceCurrency}',
            style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
        if (listing.isPriceNegotiable == true) ...[
          const SizedBox(width: 8),
          Padding(
            padding: const EdgeInsets.only(bottom: 4),
            child: Text('(${l10n.detailNegotiable})',
                style: TextStyle(color: AppColors.neutral[500], fontSize: 14)),
          ),
        ],
      ],
    );
  }
}

// ─── Seller Section ───

class _SellerSection extends StatelessWidget {
  const _SellerSection({required this.listing, required this.l10n});

  final Listing listing;
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    final seller = listing.seller;
    final user = listing.user;
    final name = seller?.name ?? user?.displayName ?? user?.name ?? '';
    if (name.isEmpty) return const SizedBox.shrink();

    final dateFormat = DateFormat('dd.MM.yyyy HH:mm');

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(l10n.detailSeller,
            style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold)),
        const SizedBox(height: 12),
        Row(
          children: [
            CircleAvatar(
              radius: 24,
              backgroundImage: (seller?.avatarUrl ?? seller?.logo) != null
                  ? NetworkImage(trustedImageUrl((seller!.avatarUrl ?? seller.logo)!))
                  : null,
              child: (seller?.avatarUrl ?? seller?.logo) == null
                  ? Text(name.isNotEmpty ? name[0].toUpperCase() : '?',
                      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold))
                  : null,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name, style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16)),
                  const SizedBox(height: 2),
                  // Last active or member since
                  if (seller?.lastActiveAt != null) ...[
                    Text(
                      '${l10n.detailLastActive} ${dateFormat.format(DateTime.parse(seller!.lastActiveAt!))}',
                      style: TextStyle(color: AppColors.neutral[500], fontSize: 13),
                    ),
                  ] else if (seller?.since != null)
                    Text(
                      '${l10n.detailSellerSince} ${seller!.since}',
                      style: TextStyle(color: AppColors.neutral[500], fontSize: 13),
                    ),
                ],
              ),
            ),
          ],
        ),
        if (listing.userId != null) ...[
          const SizedBox(height: 12),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () => context.push('/user/${listing.userId}'),
              child: Text(l10n.detailSellerAllListings),
            ),
          ),
        ],
      ],
    );
  }
}

// ─── Location Section ───

class _LocationSection extends StatelessWidget {
  const _LocationSection({required this.listing, required this.l10n});

  final Listing listing;
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(l10n.detailLocation,
            style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        Row(
          children: [
            Icon(Icons.location_on_outlined, size: 18, color: AppColors.neutral[500]),
            const SizedBox(width: 6),
            Expanded(
              child: Text(listing.locationName!,
                  style: TextStyle(color: AppColors.neutral[600], fontSize: 15)),
            ),
          ],
        ),
      ],
    );
  }
}

// ─── Footer: ID & Report ───

class _FooterSection extends StatelessWidget {
  const _FooterSection({required this.listing, required this.l10n});

  final Listing listing;
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('ID: ${listing.id}',
            style: TextStyle(color: AppColors.neutral[400], fontSize: 12)),
        if (listing.viewCount > 0) ...[
          const SizedBox(width: 12),
          Icon(Icons.visibility_outlined, size: 14, color: AppColors.neutral[400]),
          const SizedBox(width: 4),
          Text('${listing.viewCount}',
              style: TextStyle(color: AppColors.neutral[400], fontSize: 12)),
        ],
        const Spacer(),
        TextButton.icon(
          onPressed: () => _showReportDialog(context),
          icon: Icon(Icons.flag_outlined, size: 16, color: AppColors.neutral[500]),
          label: Text(l10n.detailReport,
              style: TextStyle(color: AppColors.neutral[500], fontSize: 13)),
        ),
      ],
    );
  }

  void _showReportDialog(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text(l10n.detailReport),
        content: Text(l10n.detailReportConfirm),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(l10n.generalCancel),
          ),
          FilledButton(
            onPressed: () {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(l10n.detailReportSent)),
              );
            },
            child: Text(l10n.detailReport),
          ),
        ],
      ),
    );
  }
}

// ─── Bottom Contact Bar ───

class _BottomContactBar extends StatelessWidget {
  const _BottomContactBar({required this.listing, required this.state});

  final Listing listing;
  final ListingDetailState state;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.surface,
        boxShadow: [
          BoxShadow(color: Colors.black.withValues(alpha: 0.08), blurRadius: 8, offset: const Offset(0, -2)),
        ],
      ),
      child: SafeArea(
        child: Row(
          children: [
            // Chat / Message button
            Expanded(
              child: FilledButton.icon(
                onPressed: () {
                  // TODO: Open chat with seller
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(l10n.detailChatComingSoon)),
                  );
                },
                icon: const Icon(Icons.chat_bubble_outline, size: 20),
                label: Text(l10n.detailSendMessage),
              ),
            ),
            const SizedBox(width: 8),
            // Show contact button
            OutlinedButton.icon(
              onPressed: state.isRevealingContact
                  ? null
                  : () => _revealAndShowContacts(context),
              icon: state.isRevealingContact
                  ? const SizedBox(
                      width: 16, height: 16,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                  : const Icon(Icons.phone, size: 20),
              label: Text(l10n.detailShowPhone),
            ),
          ],
        ),
      ),
    );
  }

  void _revealAndShowContacts(BuildContext context) {
    final bloc = context.read<ListingDetailBloc>();
    final revealed = state.revealedContact;

    if (revealed != null) {
      _showContactSheet(context, revealed);
    } else {
      bloc.add(const ListingDetailEvent.revealContact());
      // Listen for reveal result, then show sheet
      bloc.stream.firstWhere((s) => !s.isRevealingContact).then((s) {
        if (s.revealedContact != null && context.mounted) {
          _showContactSheet(context, s.revealedContact!);
        }
      });
    }
  }

  void _showContactSheet(BuildContext context, RevealContactResult contact) {
    final l10n = AppLocalizations.of(context)!;

    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (_) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Row(
                children: [
                  const Icon(Icons.contact_phone_outlined, size: 24),
                  const SizedBox(width: 10),
                  Text(l10n.detailContactInfo,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold)),
                ],
              ),
              const SizedBox(height: 20),

              // Contact name
              if (contact.contactName != null && contact.contactName!.isNotEmpty) ...[
                _ContactRow(
                  icon: Icons.person_outline,
                  label: l10n.postContactNameLabel,
                  value: contact.contactName!,
                ),
                const SizedBox(height: 12),
              ],

              // Phone
              if (contact.contactPhone != null) ...[
                _ContactRow(
                  icon: Icons.phone_outlined,
                  label: l10n.postContactPhoneLabel,
                  value: contact.contactPhone!,
                  onTap: () => launchUrl(Uri.parse('tel:${contact.contactPhone}')),
                  onCopy: () => _copyToClipboard(context, contact.contactPhone!),
                ),
                const SizedBox(height: 12),
              ],

              // Email
              if (contact.contactEmail != null) ...[
                _ContactRow(
                  icon: Icons.email_outlined,
                  label: l10n.postContactEmailLabel,
                  value: contact.contactEmail!,
                  onTap: () => launchUrl(Uri.parse('mailto:${contact.contactEmail}')),
                  onCopy: () => _copyToClipboard(context, contact.contactEmail!),
                ),
                const SizedBox(height: 12),
              ],

              const SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }

  void _copyToClipboard(BuildContext context, String text) {
    Clipboard.setData(ClipboardData(text: text));
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(AppLocalizations.of(context)!.detailCopied),
        duration: const Duration(seconds: 1),
      ),
    );
  }
}

// ─── Contact Row (inside bottom sheet) ───

class _ContactRow extends StatelessWidget {
  const _ContactRow({
    required this.icon,
    required this.label,
    required this.value,
    this.onTap,
    this.onCopy,
  });

  final IconData icon;
  final String label;
  final String value;
  final VoidCallback? onTap;
  final VoidCallback? onCopy;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.neutral[200]!),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Icon(icon, size: 20, color: AppColors.primary),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(label, style: TextStyle(fontSize: 11, color: AppColors.neutral[500])),
                  const SizedBox(height: 2),
                  Text(value, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                ],
              ),
            ),
            if (onCopy != null)
              IconButton(
                icon: Icon(Icons.copy, size: 18, color: AppColors.neutral[500]),
                onPressed: onCopy,
                tooltip: 'Copy',
              ),
            if (onTap != null)
              Icon(Icons.chevron_right, size: 20, color: AppColors.neutral[400]),
          ],
        ),
      ),
    );
  }
}

// ─── Small Widgets ───

class _Chip extends StatelessWidget {
  const _Chip({required this.label, required this.color});

  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.2),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(label, style: TextStyle(fontSize: 12, color: color, fontWeight: FontWeight.w600)),
    );
  }
}

class _MiniListingCard extends StatelessWidget {
  const _MiniListingCard({required this.listing, required this.onTap});

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
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 4 / 3,
              child: imageUrl != null
                  ? CachedNetworkImage(
                      imageUrl: trustedImageUrl(imageUrl),
                      fit: BoxFit.cover,
                      width: double.infinity,
                    )
                  : Container(color: Colors.grey[200], child: const Center(child: Icon(Icons.image))),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(listing.title, maxLines: 2, overflow: TextOverflow.ellipsis,
                      style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600)),
                  const SizedBox(height: 4),
                  Text(
                    '${listing.priceAmount.toStringAsFixed(0)} ${listing.priceCurrency}',
                    style: TextStyle(color: Theme.of(context).primaryColor, fontWeight: FontWeight.bold, fontSize: 13),
                  ),
                  if (listing.locationName != null) ...[
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        Icon(Icons.location_on_outlined, size: 12, color: AppColors.neutral[400]),
                        const SizedBox(width: 2),
                        Expanded(
                          child: Text(listing.locationName!, maxLines: 1, overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 11, color: AppColors.neutral[500])),
                        ),
                      ],
                    ),
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
