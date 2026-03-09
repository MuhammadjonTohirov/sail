/// Secure storage abstraction for tokens and sensitive data.
/// 
/// Uses flutter_secure_storage under the hood.
library;
import 'package:injectable/injectable.dart';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

/// Keys for secure storage.
abstract class StorageKeys {
  static const String accessToken = 'access_token';
  static const String refreshToken = 'refresh_token';
  static const String profile = 'profile';
  static const String clientSessionId = 'client_session_id';
}


/// Secure storage wrapper for authentication tokens.
@lazySingleton
class SecureStorage {
  SecureStorage({FlutterSecureStorage? storage})
      : _storage = storage ??
            const FlutterSecureStorage(
              aOptions: AndroidOptions(
                encryptedSharedPreferences: true,
              ),
              iOptions: IOSOptions(
                accessibility: KeychainAccessibility.first_unlock,
              ),
            );

  final FlutterSecureStorage _storage;

  // Access Token
  Future<String?> getAccessToken() async {
    return _storage.read(key: StorageKeys.accessToken);
  }

  Future<void> setAccessToken(String token) async {
    await _storage.write(key: StorageKeys.accessToken, value: token);
  }

  // Refresh Token
  Future<String?> getRefreshToken() async {
    return _storage.read(key: StorageKeys.refreshToken);
  }

  Future<void> setRefreshToken(String token) async {
    await _storage.write(key: StorageKeys.refreshToken, value: token);
  }

  // Save both tokens at once
  Future<void> saveTokens({
    required String accessToken,
    required String refreshToken,
  }) async {
    await Future.wait([
      setAccessToken(accessToken),
      setRefreshToken(refreshToken),
    ]);
  }

  // Profile JSON (cached for offline access)
  Future<String?> getProfile() async {
    return _storage.read(key: StorageKeys.profile);
  }

  Future<void> setProfile(String profileJson) async {
    await _storage.write(key: StorageKeys.profile, value: profileJson);
  }

  // Client session ID (for anonymous user tracking)
  Future<String?> getClientSessionId() async {
    return _storage.read(key: StorageKeys.clientSessionId);
  }

  Future<void> setClientSessionId(String sessionId) async {
    await _storage.write(key: StorageKeys.clientSessionId, value: sessionId);
  }

  // Clear all auth data (logout)
  Future<void> clearAuth() async {
    await Future.wait([
      _storage.delete(key: StorageKeys.accessToken),
      _storage.delete(key: StorageKeys.refreshToken),
      _storage.delete(key: StorageKeys.profile),
    ]);
  }

  // Clear everything
  Future<void> clearAll() async {
    await _storage.deleteAll();
  }

  // Check if user is authenticated
  Future<bool> isAuthenticated() async {
    final token = await getAccessToken();
    return token != null && token.isNotEmpty;
  }
}
