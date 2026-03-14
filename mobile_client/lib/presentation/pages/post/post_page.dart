import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sail_mobile/l10n/app_localizations.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../domain/entities/category.dart';
import '../../../../domain/entities/listing.dart';
import '../../../../domain/entities/location.dart';
import '../../bloc/post/post_bloc.dart';
import '../../widgets/design_system/sail_button.dart';
import '../../widgets/design_system/sail_text_field.dart';

const _maxTitleLength = 70;
const _maxDescriptionLength = 9000;
const _maxContactNameLength = 255;
const _maxContactEmailLength = 255;
const _maxContactPhoneLength = 20;
const _maxPhotos = 8;

class PostPage extends StatelessWidget {
  const PostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<PostBloc>()..add(const PostEvent.started()),
      child: const _PostView(),
    );
  }
}

class _PostView extends StatefulWidget {
  const _PostView();

  @override
  State<_PostView> createState() => _PostViewState();
}

class _PostViewState extends State<_PostView> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _priceController = TextEditingController();
  final _contactNameController = TextEditingController();
  final _contactPhoneController = TextEditingController();
  final _contactEmailController = TextEditingController();

  int? _selectedCategoryId;
  String? _selectedCategoryPath;
  String _condition = 'used';
  String _dealType = 'sell';
  String _sellerType = 'person';
  String _currency = 'UZS';
  bool _isNegotiable = false;
  int? _selectedLocationId;
  String? _selectedLocationPath;
  final List<XFile> _selectedPhotos = [];
  final Map<int, dynamic> _attributeValues = {};

  @override
  void initState() {
    super.initState();
    _titleController.addListener(() => setState(() {}));
    _descriptionController.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    _priceController.dispose();
    _contactNameController.dispose();
    _contactPhoneController.dispose();
    _contactEmailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return BlocConsumer<PostBloc, PostState>(
      listener: (context, state) {
        if (state is PostSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(l10n.postSubmitSuccess)),
          );
          context.go('/');
        } else if (state is PostFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.failure.message)),
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(title: Text(l10n.postTitle)),
          body: switch (state) {
            PostLoadingState() => const Center(child: CircularProgressIndicator()),
            PostReady() => _buildForm(context, l10n, state),
            PostSubmitting() => Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const CircularProgressIndicator(),
                    if (state.statusMessage != null) ...[
                      const SizedBox(height: 16),
                      Text(state.statusMessage!),
                    ],
                  ],
                ),
              ),
            _ => const SizedBox.shrink(),
          },
        );
      },
    );
  }

  Widget _buildForm(BuildContext context, AppLocalizations l10n, PostReady state) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ── 1. Title ──
            SailTextField(
              controller: _titleController,
              label: l10n.postTitleLabel,
              hintText: l10n.postTitleHint,
              maxLength: _maxTitleLength,
              inputFormatters: [LengthLimitingTextInputFormatter(_maxTitleLength)],
              validator: (v) => (v?.isEmpty ?? true) ? l10n.postTitleRequired : null,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                l10n.postTitleCharCount(_titleController.text.length, _maxTitleLength),
                style: TextStyle(color: AppColors.neutral[400], fontSize: 12),
              ),
            ),
            const SizedBox(height: 16),

            // ── 2. Category ──
            _SectionTitle(l10n.postCategoryLabel),
            const SizedBox(height: 8),
            _CategoryPickerButton(
              categories: state.categories,
              selectedPath: _selectedCategoryPath,
              onSelected: (id, path) {
                setState(() {
                  _selectedCategoryId = id;
                  _selectedCategoryPath = path;
                  _attributeValues.clear();
                });
                context.read<PostBloc>().add(PostEvent.categorySelected(id));
              },
              l10n: l10n,
            ),
            const SizedBox(height: 24),

            // ── 3. Photos ──
            _PhotosSection(
              photos: _selectedPhotos,
              onAdd: _pickPhotos,
              onRemove: (index) => setState(() => _selectedPhotos.removeAt(index)),
              l10n: l10n,
            ),
            const SizedBox(height: 24),

            // ── 4. Description ──
            SailTextField(
              controller: _descriptionController,
              label: l10n.postDescriptionLabel,
              hintText: l10n.postDescriptionHint,
              keyboardType: TextInputType.multiline,
              maxLines: 6,
              maxLength: _maxDescriptionLength,
              inputFormatters: [LengthLimitingTextInputFormatter(_maxDescriptionLength)],
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                l10n.postTitleCharCount(_descriptionController.text.length, _maxDescriptionLength),
                style: TextStyle(color: AppColors.neutral[400], fontSize: 12),
              ),
            ),
            const SizedBox(height: 24),

            // ── 5. Deal Type ──
            _SectionTitle(l10n.postDealTypeLabel),
            const SizedBox(height: 8),
            SegmentedButton<String>(
              segments: [
                ButtonSegment(value: 'sell', label: Text(l10n.postDealTypeSell)),
                ButtonSegment(value: 'exchange', label: Text(l10n.postDealTypeExchange)),
                ButtonSegment(value: 'free', label: Text(l10n.postDealTypeFree)),
              ],
              selected: {_dealType},
              onSelectionChanged: (v) => setState(() => _dealType = v.first),
            ),
            const SizedBox(height: 16),

            // ── 5a. Price (only if dealType == sell) ──
            if (_dealType == 'sell') ...[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: SailTextField(
                      controller: _priceController,
                      label: l10n.postPriceLabel,
                      hintText: l10n.postPriceHint,
                      keyboardType: TextInputType.number,
                      enabled: !_isNegotiable,
                      validator: (v) {
                        if (!_isNegotiable && (v?.isEmpty ?? true)) {
                          return l10n.postPriceRequired;
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          l10n.postCurrencyLabel,
                          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                        ),
                        const SizedBox(height: 8),
                        DropdownButtonFormField<String>(
                          initialValue: _currency,
                          items: const [
                            DropdownMenuItem(value: 'UZS', child: Text('UZS')),
                            DropdownMenuItem(value: 'USD', child: Text('USD')),
                          ],
                          onChanged: (v) => setState(() => _currency = v!),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              CheckboxListTile(
                value: _isNegotiable,
                onChanged: (v) => setState(() => _isNegotiable = v!),
                title: Text(l10n.postNegotiableLabel),
                contentPadding: EdgeInsets.zero,
                controlAffinity: ListTileControlAffinity.leading,
              ),
              const SizedBox(height: 16),
            ],

            // ── 6. Additional Info (Seller Type + Condition) ──
            _SectionTitle(l10n.postAdditionalInfoTitle),
            const SizedBox(height: 12),
            Text(l10n.postSellerTypeLabel,
                style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 14)),
            const SizedBox(height: 8),
            SegmentedButton<String>(
              segments: [
                ButtonSegment(value: 'person', label: Text(l10n.postSellerTypePerson)),
                ButtonSegment(value: 'business', label: Text(l10n.postSellerTypeBusiness)),
              ],
              selected: {_sellerType},
              onSelectionChanged: (v) => setState(() => _sellerType = v.first),
            ),
            const SizedBox(height: 16),
            Text(l10n.postConditionLabel,
                style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 14)),
            const SizedBox(height: 8),
            SegmentedButton<String>(
              segments: [
                ButtonSegment(value: 'used', label: Text(l10n.postConditionUsed)),
                ButtonSegment(value: 'new', label: Text(l10n.postConditionNew)),
              ],
              selected: {_condition},
              onSelectionChanged: (v) => setState(() => _condition = v.first),
            ),
            const SizedBox(height: 24),

            // ── 7. Dynamic Attributes ──
            if (state.attributes != null && state.attributes!.isNotEmpty) ...[
              _SectionTitle(l10n.postAttributesTitle),
              const SizedBox(height: 8),
              _AttributesForm(
                attributes: state.attributes!,
                values: _attributeValues,
                onChanged: (id, value) => setState(() => _attributeValues[id] = value),
              ),
              const SizedBox(height: 24),
            ],

            // ── 8. Location ──
            _SectionTitle(l10n.postLocationLabel),
            const SizedBox(height: 8),
            _LocationPickerButton(
              locations: state.locations,
              selectedPath: _selectedLocationPath,
              onSelected: (id, path) {
                setState(() {
                  _selectedLocationId = id;
                  _selectedLocationPath = path;
                });
              },
              l10n: l10n,
            ),
            const SizedBox(height: 24),

            // ── 9. Contact Info ──
            SailTextField(
              controller: _contactNameController,
              label: l10n.postContactNameLabel,
              hintText: l10n.postContactNameHint,
              maxLength: _maxContactNameLength,
              validator: (v) =>
                  (v?.trim().isEmpty ?? true) ? l10n.postContactNameRequired : null,
            ),
            const SizedBox(height: 16),
            SailTextField(
              controller: _contactEmailController,
              label: l10n.postContactEmailLabel,
              hintText: l10n.postContactEmailHint,
              keyboardType: TextInputType.emailAddress,
              maxLength: _maxContactEmailLength,
            ),
            const SizedBox(height: 16),
            SailTextField(
              controller: _contactPhoneController,
              label: l10n.postContactPhoneLabel,
              hintText: l10n.postContactPhoneHint,
              keyboardType: TextInputType.phone,
              maxLength: _maxContactPhoneLength,
            ),
            const SizedBox(height: 32),

            // ── 10. Submit ──
            SizedBox(
              width: double.infinity,
              child: SailButton.primary(
                text: l10n.postSubmitButton,
                onPressed: _submit,
              ),
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }

  void _submit() {
    if (!_formKey.currentState!.validate()) return;
    if (_selectedCategoryId == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(AppLocalizations.of(context)!.postCategoryRequired)),
      );
      return;
    }
    if (_selectedLocationId == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(AppLocalizations.of(context)!.postLocationRequired)),
      );
      return;
    }

    final payload = ListingPayload(
      title: _titleController.text.trim(),
      description: _descriptionController.text.trim().isEmpty
          ? null
          : _descriptionController.text.trim(),
      priceAmount: _dealType == 'sell'
          ? (double.tryParse(_priceController.text) ?? 0)
          : 0,
      priceCurrency: _currency,
      isPriceNegotiable: _dealType == 'sell' ? _isNegotiable : false,
      condition: _condition,
      dealType: _dealType,
      sellerType: _sellerType,
      categoryId: _selectedCategoryId!,
      locationId: _selectedLocationId!,
      contactName: _contactNameController.text.trim().isEmpty
          ? null
          : _contactNameController.text.trim(),
      contactPhone: _contactPhoneController.text.trim().isEmpty
          ? null
          : _contactPhoneController.text.trim(),
      contactEmail: _contactEmailController.text.trim().isEmpty
          ? null
          : _contactEmailController.text.trim(),
      attributes: _attributeValues.entries
          .map((e) => ListingAttributePayload(attributeId: e.key, value: e.value))
          .toList(),
    );

    final photoPaths = _selectedPhotos.map((p) => p.path).toList();
    context.read<PostBloc>().add(PostEvent.submit(payload, photoPaths));
  }

  Future<void> _pickPhotos() async {
    final picker = ImagePicker();
    final images = await picker.pickMultiImage(limit: _maxPhotos - _selectedPhotos.length);
    if (images.isNotEmpty) {
      setState(() => _selectedPhotos.addAll(images));
    }
  }
}

// ─── Subwidgets ───

class _SectionTitle extends StatelessWidget {
  const _SectionTitle(this.text);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold),
    );
  }
}

class _PhotosSection extends StatelessWidget {
  const _PhotosSection({
    required this.photos,
    required this.onAdd,
    required this.onRemove,
    required this.l10n,
  });

  final List<XFile> photos;
  final VoidCallback onAdd;
  final void Function(int) onRemove;
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          l10n.postPhotosLabel,
          style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 4),
        Text(l10n.postPhotosHint, style: TextStyle(color: AppColors.neutral[500], fontSize: 13)),
        const SizedBox(height: 12),
        SizedBox(
          height: 100,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              if (photos.length < _maxPhotos)
                GestureDetector(
                  onTap: onAdd,
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.neutral[300]!, style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(12),
                      color: AppColors.neutral[100],
                    ),
                    child: Icon(Icons.add_a_photo_outlined, color: AppColors.neutral[400], size: 32),
                  ),
                ),
              ...photos.asMap().entries.map((entry) {
                return Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.file(
                          File(entry.value.path),
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      if (entry.key == 0)
                        Positioned(
                          bottom: 4,
                          left: 4,
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                            decoration: BoxDecoration(
                              color: AppColors.primary,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: const Text(
                              'Main',
                              style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      Positioned(
                        top: 4,
                        right: 4,
                        child: GestureDetector(
                          onTap: () => onRemove(entry.key),
                          child: Container(
                            padding: const EdgeInsets.all(2),
                            decoration: const BoxDecoration(
                              color: Colors.black54,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(Icons.close, color: Colors.white, size: 16),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ],
          ),
        ),
      ],
    );
  }
}

/// Hierarchical category picker that opens a bottom sheet with nested navigation.
class _CategoryPickerButton extends StatelessWidget {
  const _CategoryPickerButton({
    required this.categories,
    required this.selectedPath,
    required this.onSelected,
    required this.l10n,
  });

  final List<Category> categories;
  final String? selectedPath;
  final void Function(int id, String path) onSelected;
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _navigateToCategoryPicker(context),
      borderRadius: BorderRadius.circular(12),
      child: InputDecorator(
        decoration: InputDecoration(
          hintText: l10n.postCategoryHint,
          suffixIcon: const Icon(Icons.chevron_right),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        ),
        child: Text(
          selectedPath ?? l10n.postCategoryHint,
          style: TextStyle(
            color: selectedPath != null ? null : AppColors.neutral[400],
          ),
        ),
      ),
    );
  }

  Future<void> _navigateToCategoryPicker(BuildContext context) async {
    final result = await Navigator.push<({int id, String path})>(
      context,
      MaterialPageRoute(
        builder: (_) => _CategoryListPage(
          categories: categories,
          title: l10n.postCategoryLabel,
          breadcrumbs: const [],
        ),
      ),
    );
    if (result != null) {
      onSelected(result.id, result.path);
    }
  }
}

/// Full-page category list. Tapping a category with children pushes another
/// page for that level; tapping a leaf pops back with the selection.
class _CategoryListPage extends StatelessWidget {
  const _CategoryListPage({
    required this.categories,
    required this.title,
    required this.breadcrumbs,
  });

  final List<Category> categories;
  final String title;
  final List<String> breadcrumbs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: ListView.separated(
        itemCount: categories.length,
        separatorBuilder: (_, __) => const Divider(height: 1),
        itemBuilder: (context, index) {
          final cat = categories[index];
          final hasChildren = cat.children != null && cat.children!.isNotEmpty;

          return ListTile(
            title: Text(cat.name),
            trailing: hasChildren ? const Icon(Icons.chevron_right) : null,
            onTap: () async {
              final navigator = Navigator.of(context);
              if (hasChildren) {
                final result = await navigator.push<({int id, String path})>(
                  MaterialPageRoute(
                    builder: (_) => _CategoryListPage(
                      categories: cat.children!,
                      title: cat.name,
                      breadcrumbs: [...breadcrumbs, cat.name],
                    ),
                  ),
                );
                if (result != null) {
                  navigator.pop(result);
                }
              } else {
                final path = [...breadcrumbs, cat.name].join(' > ');
                navigator.pop((id: cat.id, path: path));
              }
            },
          );
        },
      ),
    );
  }
}

/// Location picker button that navigates to a full-page location list.
class _LocationPickerButton extends StatelessWidget {
  const _LocationPickerButton({
    required this.locations,
    required this.selectedPath,
    required this.onSelected,
    required this.l10n,
  });

  final List<Location> locations;
  final String? selectedPath;
  final void Function(int id, String path) onSelected;
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _navigateToLocationPicker(context),
      borderRadius: BorderRadius.circular(12),
      child: InputDecorator(
        decoration: InputDecoration(
          hintText: l10n.postSelectLocation,
          suffixIcon: const Icon(Icons.chevron_right),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        ),
        child: Row(
          children: [
            Icon(Icons.location_on_outlined, size: 20, color: AppColors.neutral[500]),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                selectedPath ?? l10n.postSelectLocation,
                style: TextStyle(
                  color: selectedPath != null ? null : AppColors.neutral[400],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _navigateToLocationPicker(BuildContext context) async {
    final result = await Navigator.push<({int id, String path})>(
      context,
      MaterialPageRoute(
        builder: (_) => _LocationListPage(
          locations: locations,
          title: l10n.postLocationLabel,
          breadcrumbs: const [],
        ),
      ),
    );
    if (result != null) {
      onSelected(result.id, result.path);
    }
  }
}

/// Full-page location list. Tapping a location with children pushes another
/// page for that level; tapping a leaf pops back with the selection.
class _LocationListPage extends StatelessWidget {
  const _LocationListPage({
    required this.locations,
    required this.title,
    required this.breadcrumbs,
  });

  final List<Location> locations;
  final String title;
  final List<String> breadcrumbs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: ListView.separated(
        itemCount: locations.length,
        separatorBuilder: (_, __) => const Divider(height: 1),
        itemBuilder: (context, index) {
          final loc = locations[index];
          final hasChildren = loc.children != null && loc.children!.isNotEmpty;

          return ListTile(
            title: Text(loc.name),
            trailing: hasChildren ? const Icon(Icons.chevron_right) : null,
            onTap: () async {
              final navigator = Navigator.of(context);
              if (hasChildren) {
                final result = await navigator.push<({int id, String path})>(
                  MaterialPageRoute(
                    builder: (_) => _LocationListPage(
                      locations: loc.children!,
                      title: loc.name,
                      breadcrumbs: [...breadcrumbs, loc.name],
                    ),
                  ),
                );
                if (result != null) {
                  navigator.pop(result);
                }
              } else {
                final path = [...breadcrumbs, loc.name].join(' / ');
                navigator.pop((id: loc.id, path: path));
              }
            },
          );
        },
      ),
    );
  }
}

class _AttributesForm extends StatelessWidget {
  const _AttributesForm({
    required this.attributes,
    required this.values,
    required this.onChanged,
  });

  final List<Attribute> attributes;
  final Map<int, dynamic> values;
  final void Function(int id, dynamic value) onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: attributes.map((attr) {
        switch (attr.type) {
          case AttributeType.boolean:
            return CheckboxListTile(
              title: Text(attr.label),
              value: values[attr.id] as bool? ?? false,
              onChanged: (v) => onChanged(attr.id, v),
              contentPadding: EdgeInsets.zero,
            );
          case AttributeType.select:
            return Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: DropdownButtonFormField<String>(
                decoration: InputDecoration(labelText: attr.label),
                initialValue: values[attr.id] as String?,
                items: attr.options
                    ?.map((o) => DropdownMenuItem(value: o, child: Text(o)))
                    .toList(),
                onChanged: (v) => onChanged(attr.id, v),
              ),
            );
          case AttributeType.multiselect:
            final selected = (values[attr.id] as List<String>?) ?? [];
            return Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(attr.label, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 8,
                    children: (attr.options ?? []).map((o) {
                      final isSelected = selected.contains(o);
                      return FilterChip(
                        label: Text(o),
                        selected: isSelected,
                        onSelected: (v) {
                          final newList = List<String>.from(selected);
                          v ? newList.add(o) : newList.remove(o);
                          onChanged(attr.id, newList);
                        },
                      );
                    }).toList(),
                  ),
                ],
              ),
            );
          case AttributeType.number:
          case AttributeType.range:
            return Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: TextFormField(
                decoration: InputDecoration(labelText: attr.label),
                keyboardType: TextInputType.number,
                initialValue: values[attr.id]?.toString(),
                onChanged: (v) => onChanged(attr.id, num.tryParse(v)),
              ),
            );
          case AttributeType.text:
            return Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: TextFormField(
                decoration: InputDecoration(labelText: attr.label),
                initialValue: values[attr.id] as String?,
                onChanged: (v) => onChanged(attr.id, v),
              ),
            );
        }
      }).toList(),
    );
  }
}
