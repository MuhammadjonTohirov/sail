// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geocoding_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GeoLocationDto _$GeoLocationDtoFromJson(Map<String, dynamic> json) =>
    _GeoLocationDto(
      lat: (json['lat'] as num).toDouble(),
      lon: (json['lon'] as num).toDouble(),
      displayName: json['display_name'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$GeoLocationDtoToJson(_GeoLocationDto instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lon': instance.lon,
      'display_name': instance.displayName,
      'type': instance.type,
    };
