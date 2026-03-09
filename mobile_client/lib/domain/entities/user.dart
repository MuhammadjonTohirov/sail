import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

/// User profile domain entity.
/// 
/// Matches web_client/domain/models/UserProfile.ts
@freezed
abstract class UserProfile with _$UserProfile {
  const factory UserProfile({
    required int userId,
    required String username,
    required String phoneE164,
    required String email,
    required String displayName,
    String? avatarUrl,
    String? about,
    int? locationId,
    String? locationName,
    String? logoUrl,
    String? bannerUrl,
    int? telegramId,
    String? telegramUsername,
    String? telegramPhotoUrl,
    @Default(true) bool notifyNewMessages,
    @Default(true) bool notifySavedSearches,
    @Default(true) bool notifyPromotions,
    DateTime? lastActiveAt,
    required DateTime createdAt,
  }) = _UserProfile;
}

/// Listing user entity (minimal user info on listings).
@freezed
abstract class ListingUser with _$ListingUser {
  const factory ListingUser({
    required int id,
    String? phone,
    String? name,
    String? displayName,
    String? phoneE164,
  }) = _ListingUser;
}

/// Listing seller entity (seller info on listings).
@freezed
abstract class ListingSeller with _$ListingSeller {
  const factory ListingSeller({
    required int id,
    String? name,
    String? avatarUrl,
    String? since,
    String? logo,
    String? banner,
    String? phone,
    String? lastActiveAt,
  }) = _ListingSeller;
}

/// Security info entity.
@freezed
abstract class SecurityInfo with _$SecurityInfo {
  const factory SecurityInfo({
    @Default(false) bool hasPassword,
    @Default(false) bool hasTelegram,
    int? telegramId,
    String? telegramUsername,
  }) = _SecurityInfo;
}
