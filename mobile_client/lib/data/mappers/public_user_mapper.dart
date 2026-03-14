import '../../domain/entities/public_user.dart';
import '../models/user/public_user_dto.dart';

extension PublicUserDtoMapper on PublicUserDto {
  PublicUser toEntity() {
    return PublicUser(
      id: id,
      displayName: displayName,
      avatarUrl: avatarUrl,
      logo: logo,
      banner: banner,
      phoneE164: phoneE164,
      locationId: locationId,
      since: since,
      lastActiveAt: lastActiveAt,
    );
  }
}
