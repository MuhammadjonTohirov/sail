import '../entities/user.dart';
import '../../core/utils/result.dart';

/// Auth repository interface.
/// 
/// Defines all authentication operations.
abstract class AuthRepository {
  // OTP-based auth (legacy)
  Future<Result<void>> requestOtp(String phone);
  Future<Result<UserProfile>> verifyOtp(String phone, String code);

  // Password-based auth
  Future<Result<void>> register(String login, String password, {String? displayName});
  Future<Result<UserProfile>> registerVerify(String login, String code, String password, {String? displayName});
  Future<Result<UserProfile>> login(String login, String password);
  
  // Password reset
  Future<Result<void>> forgotPassword(String login);
  Future<Result<void>> resetPassword(String login, String code, String password);

  // Telegram auth
  Future<Result<UserProfile>> telegramAuth(Map<String, dynamic> telegramData);

  // Profile
  Future<Result<UserProfile>> getMe();
  Future<Result<UserProfile>> updateProfile({
    String? displayName,
    int? locationId,
    // File upload handled separately
  });
  Future<Result<void>> deleteAccount();
  
  // Security
  Future<Result<SecurityInfo>> getSecurityInfo();
  Future<Result<void>> changePassword(String currentPassword, String newPassword);
  Future<Result<void>> setPassword(String newPassword);
  Future<Result<UserProfile>> linkTelegram(Map<String, dynamic> telegramData);
  Future<Result<void>> unlinkTelegram();

  // Session
  Future<bool> isAuthenticated();
  Future<void> logout();
  
  // Get cached profile (for offline access)
  Future<UserProfile?> getCachedProfile();
}
