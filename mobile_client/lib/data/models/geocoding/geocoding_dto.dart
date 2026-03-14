import 'package:freezed_annotation/freezed_annotation.dart';

part 'geocoding_dto.freezed.dart';
part 'geocoding_dto.g.dart';

/// Geocoding result DTO.
@freezed
abstract class GeoLocationDto with _$GeoLocationDto {
  const factory GeoLocationDto({
    required double lat,
    required double lon,
    @JsonKey(name: 'display_name') String? displayName,
    String? type,
  }) = _GeoLocationDto;

  factory GeoLocationDto.fromJson(Map<String, dynamic> json) =>
      _$GeoLocationDtoFromJson(json);
}
