import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sail_mobile/core/utils/image_utils.dart';
import '../../../../domain/entities/category.dart';

class CategoryIcon extends StatelessWidget {
  const CategoryIcon({
    required this.category,
    required this.onTap,
    super.key,
  });

  final Category category;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor.withValues(alpha: 0.1),
              shape: BoxShape.circle,
            ),
            padding: const EdgeInsets.all(12),
            child: category.iconUrl != null 
                // ? Image.network(category.icon!) // SVG handling might be needed
                ? CachedNetworkImage(
                      imageUrl: trustedImageUrl(category.iconUrl!),
                      fit: BoxFit.cover,
                      width: double.infinity,
                      placeholder: (context, url) => const Icon(Icons.category),
                      errorWidget: (context, url, error) => const Icon(Icons.category),
                    ) // Placeholder
                : const Icon(Icons.category),
          ),
          const SizedBox(height: 8),
          SizedBox(
            width: 70,
            child: Text(
              category.name,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodySmall,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
