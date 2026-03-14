// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'public_user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PublicUserDto _$PublicUserDtoFromJson(Map<String, dynamic> json) =>
    _PublicUserDto(
      id: (json['id'] as num).toInt(),
      displayName: json['display_name'] as String?,
      avatarUrl: json['avatar_url'] as String?,
      logo: json['logo'] as String?,
      banner: json['banner'] as String?,
      phoneE164: json['phone_e164'] as String?,
      locationId: (json['location_id'] as num?)?.toInt(),
      since: json['since'] as String?,
      lastActiveAt: json['last_active_at'] as String?,
    );

Map<String, dynamic> _$PublicUserDtoToJson(_PublicUserDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'display_name': instance.displayName,
      'avatar_url': instance.avatarUrl,
      'logo': instance.logo,
      'banner': instance.banner,
      'phone_e164': instance.phoneE164,
      'location_id': instance.locationId,
      'since': instance.since,
      'last_active_at': instance.lastActiveAt,
    };
