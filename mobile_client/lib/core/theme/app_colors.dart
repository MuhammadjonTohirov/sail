import 'package:flutter/material.dart';

class AppColors {
  // Primary - Brand Blue
  static const MaterialColor primary = MaterialColor(0xFF4E618D, <int, Color>{
    50: Color(0xFFEDEFF4),
    100: Color(0xFFD3D8E2),
    200: Color(0xFFB8C0D1),
    300: Color(0xFF9EA8C0),
    400: Color(0xFF7A88AA),
    500: Color(0xFF4E618D), // Main
    600: Color(0xFF425278),
    700: Color(0xFF374463),
    800: Color(0xFF18191D),
    900: Color(0xFF1F2738),
  });

  // Secondary - Accent
  static const MaterialColor secondary = MaterialColor(0xFF4E618D, <int, Color>{
    50: Color(0xFFEDEFF4),
    100: Color(0xFFD3D8E2),
    200: Color(0xFFB8C0D1),
    300: Color(0xFF9EA8C0),
    400: Color(0xFF7A88AA),
    500: Color(0xFF4E618D), // Main
    600: Color(0xFF425278),
    700: Color(0xFF374463),
    800: Color(0xFF2B354E), // Note: 800 differs slightly from Primary
    900: Color(0xFF1F2738),
  });

  // Success
  static const MaterialColor success = MaterialColor(0xFF22C55E, <int, Color>{
    50: Color(0xFFF0FDF4),
    100: Color(0xFFDCFCE7),
    200: Color(0xFFBBF7D0),
    300: Color(0xFF86EFAC),
    400: Color(0xFF4ADE80),
    500: Color(0xFF22C55E), // Main
    600: Color(0xFF16A34A),
    700: Color(0xFF15803D),
    800: Color(0xFF166534),
    900: Color(0xFF14532D),
  });

  // Warning
  static const MaterialColor warning = MaterialColor(0xFFF59E0B, <int, Color>{
    50: Color(0xFFFFFBEB),
    100: Color(0xFFFEF3C7),
    200: Color(0xFFFDE68A),
    300: Color(0xFFFCD34D),
    400: Color(0xFFFBBF24),
    500: Color(0xFFF59E0B), // Main
    600: Color(0xFFD97706),
    700: Color(0xFFB45309),
    800: Color(0xFF92400E),
    900: Color(0xFF78350F),
  });

  // Error
  static const MaterialColor error = MaterialColor(0xFFEF4444, <int, Color>{
    50: Color(0xFFFEF2F2),
    100: Color(0xFFFEE2E2),
    200: Color(0xFFFECACA),
    300: Color(0xFFFCA5A5),
    400: Color(0xFFF87171),
    500: Color(0xFFEF4444), // Main
    600: Color(0xFFDC2626),
    700: Color(0xFFB91C1C),
    800: Color(0xFF991B1B),
    900: Color(0xFF7F1D1D),
  });

  // Neutral
  static const MaterialColor neutral = MaterialColor(0xFF737373, <int, Color>{
    50: Color(0xFFFAFAFA),
    100: Color(0xFFF5F5F5),
    200: Color(0xFFE5E5E5),
    300: Color(0xFFD4D4D4),
    400: Color(0xFFA3A3A3),
    500: Color(0xFF737373),
    600: Color(0xFF525252),
    700: Color(0xFF404040),
    800: Color(0xFF262626),
    900: Color(0xFF171717),
  });

  // Legacy OLX Colors (keeping these for transition if needed, based on previous AppTheme)
  static const Color olxTeal = Color(0xFF002F34); 
  static const Color olxCyan = Color(0xFF23E5DB); 
  
  // Aliases for easier usage matching Flutter Theme
  static const Color background = Color(0xFFFAFAFA); // neutral[50]
  static const Color surface = Colors.white;
}
