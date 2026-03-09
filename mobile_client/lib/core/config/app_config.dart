/// Core configuration for the Sail mobile app.
/// 
/// Mirrors web_client/config/app.config.ts
library;

class AppConfig {
  AppConfig._();

  // App Branding
  static const String name = 'Sail';
  static const String shortName = 'MHub';
  static const String description = 'Buy and sell anything locally';
  static const String tagline = 'Your local marketplace for everything';

  // SEO & Meta
  static const String defaultTitle = 'Sail - Buy & Sell Locally';

  // Pagination & Limits
  static const int itemsPerPage = 24;
  static const int maxItemsPerPage = 100;

  // Upload Limits
  static const int maxFileSize = 10 * 1024 * 1024; // 10MB
  static const int maxImages = 10;
  static const List<String> allowedImageTypes = [
    'image/jpeg',
    'image/jpg',
    'image/png',
    'image/webp',
  ];

  // Localization
  static const String defaultLocale = 'ru';
  static const List<String> locales = ['uz', 'ru', 'en'];
  static const String defaultCurrency = 'UZS';

  // Maps
  static const double defaultMapLat = 41.2995;
  static const double defaultMapLng = 69.2401;
  static const int defaultMapZoom = 12;

  // API Configuration
  static const Duration apiTimeout = Duration(seconds: 30);
}
