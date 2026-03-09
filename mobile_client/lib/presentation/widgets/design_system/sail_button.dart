import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';

enum SailButtonStyle { primary, secondary, ghost, telegram }

class SailButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final bool isLoading;
  final SailButtonStyle style;
  final IconData? icon;

  const SailButton.primary({
    super.key,
    required this.text,
    required this.onPressed,
    this.isLoading = false,
    this.icon,
  }) : style = SailButtonStyle.primary;

  const SailButton.secondary({
    super.key,
    required this.text,
    required this.onPressed,
    this.isLoading = false,
    this.icon,
  }) : style = SailButtonStyle.secondary;

  const SailButton.ghost({
    super.key,
    required this.text,
    required this.onPressed,
    this.isLoading = false,
    this.icon,
  }) : style = SailButtonStyle.ghost;

  const SailButton.telegram({
    super.key,
    required this.text,
    required this.onPressed,
    this.isLoading = false,
  })  : style = SailButtonStyle.telegram,
        icon = Icons.send; // Matches standard telegram icon usage

  @override
  Widget build(BuildContext context) {
    switch (style) {
      case SailButtonStyle.ghost:
        return TextButton(
          onPressed: isLoading ? null : onPressed,
          child: isLoading
              ? const SizedBox(
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator(strokeWidth: 2),
                )
              : Text(
                  text,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
        );
      case SailButtonStyle.telegram:
        return SizedBox(
          height: 48,
          width: double.infinity,
          child: ElevatedButton.icon(
            onPressed: isLoading ? null : onPressed,
            icon: isLoading
                ? const SizedBox.shrink()
                : Icon(icon ?? Icons.send, size: 24),
            label: isLoading
                ? const SizedBox(
                    width: 24,
                    height: 24,
                    child: CircularProgressIndicator(
                      color: Colors.white,
                      strokeWidth: 2,
                    ),
                  )
                : Text(text),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF54A9EB), // Keeping Telegram brand color hardcoded or move to AppColors if reused
              foregroundColor: Colors.white,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          ),
        );
      default:
        // Primary & Secondary use standard ElevatedButton style foundation
        final isPrimary = style == SailButtonStyle.primary;
        return SizedBox(
          height: 48,
          child: ElevatedButton(
            onPressed: isLoading ? null : onPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: isPrimary
                  ? AppColors.primary
                  : Colors.transparent,
              foregroundColor: isPrimary
                  ? Colors.white
                  : AppColors.primary, 
              elevation: 0,
              side: isPrimary
                  ? null
                  : const BorderSide(color: AppColors.primary, width: 2),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: isLoading
                ? SizedBox(
                    width: 24,
                    height: 24,
                    child: CircularProgressIndicator(
                      color: isPrimary ? Colors.white : AppColors.primary,
                      strokeWidth: 2,
                    ),
                  )
                : Text(
                    text,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
          ),
        );
    }
  }
}
