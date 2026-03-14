import 'package:freezed_annotation/freezed_annotation.dart';

part 'public_user.freezed.dart';

/// Public user profile entity (for viewing other users).
@freezed
abstract class PublicUser with _$PublicUser {
  const factory PublicUser({
    required int id,
    String? displayName,
    String? avatarUrl,
    String? logo,
    String? banner,
    String? phoneE164,
    int? locationId,
    String? since,
    String? lastActiveAt,
  }) = _PublicUser;
}
