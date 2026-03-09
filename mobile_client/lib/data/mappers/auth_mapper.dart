/// Auth mappers for ProfileDto ↔ UserProfile conversion.
library;

import '../../domain/entities/user.dart';
import '../models/auth/auth_dto.dart';

/// Mapper for ProfileDto → UserProfile.
extension ProfileDtoMapper on ProfileDto {
  UserProfile toEntity() {
    return UserProfile(
      userId: userId,
      username: username,
      phoneE164: phoneE164,
      email: email,
      displayName: displayName,
      avatarUrl: avatarUrl,
      about: about,
      locationId: locationId,
      locationName: locationName,
      logoUrl: logo,
      bannerUrl: banner,
      telegramId: telegramId,
      telegramUsername: telegramUsername,
      telegramPhotoUrl: telegramPhotoUrl,
      notifyNewMessages: notifyNewMessages,
      notifySavedSearches: notifySavedSearches,
      notifyPromotions: notifyPromotions,
      lastActiveAt: lastActiveAt != null ? DateTime.tryParse(lastActiveAt!) : null,
      createdAt: DateTime.parse(createdAt),
    );
  }
}

/// Mapper for SecurityInfoDto → SecurityInfo.
extension SecurityInfoDtoMapper on SecurityInfoDto {
  SecurityInfo toEntity() {
    return SecurityInfo(
      hasPassword: hasPassword,
      hasTelegram: hasTelegram,
      telegramId: telegramId,
      telegramUsername: telegramUsername,
    );
  }
}
