/// Environment configuration for API endpoints.
/// 
/// Configure base URL per environment (dev, staging, production).
library;

enum Environment { dev, staging, prod }

class ApiConfig {
  ApiConfig._();

  static Environment _environment = Environment.dev;

  static void initialize(Environment env) {
    _environment = env;
  }

  static String get baseUrl {
    switch (_environment) {
      case Environment.dev:
        return 'https://sail.uz/server';
      case Environment.staging:
        return 'https://staging.sail.uz/server';
      case Environment.prod:
        return 'https://sail.uz/server';
    }
  }

  // API version prefix
  static const String apiPrefix = '/api/v1';

  // Auth endpoints
  static const String authOtpRequest = '$apiPrefix/auth/otp/request';
  static const String authOtpVerify = '$apiPrefix/auth/otp/verify';
  static const String authRegister = '$apiPrefix/auth/register';
  static const String authRegisterVerify = '$apiPrefix/auth/register/verify';
  static const String authLogin = '$apiPrefix/auth/login';
  static const String authForgotPassword = '$apiPrefix/auth/forgot-password';
  static const String authResetPassword = '$apiPrefix/auth/reset-password';
  static const String authTelegram = '$apiPrefix/auth/telegram';
  static const String authRefresh = '$apiPrefix/auth/refresh/';

  // Profile endpoints
  static const String me = '$apiPrefix/me';
  static const String profile = '$apiPrefix/profile';
  static const String profileActive = '$apiPrefix/profile/active';
  static const String profileDelete = '$apiPrefix/profile/delete';
  static String userProfile(int userId) => '$apiPrefix/users/$userId';

  // Security endpoints
  static const String security = '$apiPrefix/security';
  static const String securityChangePassword = '$apiPrefix/security/change-password';
  static const String securitySetPassword = '$apiPrefix/security/set-password';
  static const String securityLinkTelegram = '$apiPrefix/security/link-telegram';
  static const String securityUnlinkTelegram = '$apiPrefix/security/unlink-telegram';

  // Telegram chats
  static const String telegramChats = '$apiPrefix/telegram-chats/';
  static String telegramChat(int id) => '$apiPrefix/telegram-chats/$id/';
  static const String telegramChatsVerify = '$apiPrefix/telegram-chats/verify/';

  // Taxonomy endpoints
  static const String categories = '$apiPrefix/categories';
  static String categoryAttributes(int id) => '$apiPrefix/categories/$id/attributes';
  static const String locations = '$apiPrefix/locations';
  static const String reverseGeocode = '$apiPrefix/locations/reverse-geocode';

  // Listing endpoints
  static const String listingsCreate = '$apiPrefix/listings/raw';
  static String listingDetail(int id) => '$apiPrefix/listings/$id';
  static String listingUpdate(int id) => '$apiPrefix/listings/$id/edit/raw';
  static String listingRefresh(int id) => '$apiPrefix/listings/$id/refresh';
  static String listingDeactivate(int id) => '$apiPrefix/listings/$id/deactivate';
  static String listingActivate(int id) => '$apiPrefix/listings/$id/activate';
  static String listingDelete(int id) => '$apiPrefix/listings/$id/delete';
  static String listingShare(int id) => '$apiPrefix/listings/$id/share';
  static String listingInterest(int id) => '$apiPrefix/listings/$id/interest';
  static String listingMedia(int id) => '$apiPrefix/listings/$id/media';
  static String listingMediaDelete(int listingId, int mediaId) => 
      '$apiPrefix/listings/$listingId/media/$mediaId';
  static String listingMediaReorder(int id) => '$apiPrefix/listings/$id/media/reorder';
  static const String myListings = '$apiPrefix/my/listings';
  static String userListings(int userId) => '$apiPrefix/users/$userId/listings';

  // Search endpoints
  static const String searchListings = '$apiPrefix/search/listings';

  // Chat endpoints
  static const String chatThreads = '$apiPrefix/chat/threads/';
  static String chatThread(String id) => '$apiPrefix/chat/threads/$id/';
  static String chatMessages(String threadId) => '$apiPrefix/chat/threads/$threadId/messages/';
  static String chatRead(String threadId) => '$apiPrefix/chat/threads/$threadId/read/';
  static String chatArchive(String threadId) => '$apiPrefix/chat/threads/$threadId/archive/';
  static String chatUnarchive(String threadId) => '$apiPrefix/chat/threads/$threadId/unarchive/';
  static String chatAttachments(String threadId) => '$apiPrefix/chat/threads/$threadId/attachments/';
  static const String chatSyncAvailability = '$apiPrefix/chat/sync-availability';
  static const String listingsStatusBulk = '$apiPrefix/listings/status/bulk';

  // Favorites endpoints
  static const String favorites = '$apiPrefix/favorites';
  static String favoriteToggle(int listingId) => '$apiPrefix/favorites/$listingId/toggle';
  static String favoriteDelete(int listingId) => '$apiPrefix/favorites/$listingId';

  // Recently viewed endpoints
  static const String recentlyViewed = '$apiPrefix/recently-viewed';
  static String recentlyViewedTrack(int listingId) => '$apiPrefix/recently-viewed/$listingId';
  static const String recentlyViewedClear = '$apiPrefix/recently-viewed/clear';

  // Suggested listings
  static const String suggestedListings = '$apiPrefix/suggested-listings';

  // Saved searches endpoints
  static const String savedSearches = '$apiPrefix/saved-searches';
  static String savedSearch(int id) => '$apiPrefix/saved-searches/$id';
  static String savedSearchMarkViewed(int id) => '$apiPrefix/saved-searches/$id/mark-viewed';

  // Currency endpoints
  static const String currencyConfig = '$apiPrefix/currency/config';
  static const String currencyConvert = '$apiPrefix/currency/convert';

  // Moderation endpoints
  static const String reports = '$apiPrefix/reports';
  static const String reportReasons = '$apiPrefix/reports/reasons';
}
