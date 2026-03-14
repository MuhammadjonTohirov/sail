import 'package:freezed_annotation/freezed_annotation.dart';

part 'public_user_dto.freezed.dart';
part 'public_user_dto.g.dart';

/// Public user profile DTO.
@freezed
abstract class PublicUserDto with _$PublicUserDto {
  const factory PublicUserDto({
    required int id,
    @JsonKey(name: 'display_name') String? displayName,
    @JsonKey(name: 'avatar_url') String? avatarUrl,
    String? logo,
    String? banner,
    @JsonKey(name: 'phone_e164') String? phoneE164,
    @JsonKey(name: 'location_id') int? locationId,
    String? since,
    @JsonKey(name: 'last_active_at') String? lastActiveAt,
  }) = _PublicUserDto;

  factory PublicUserDto.fromJson(Map<String, dynamic> json) =>
      _$PublicUserDtoFromJson(json);
}
