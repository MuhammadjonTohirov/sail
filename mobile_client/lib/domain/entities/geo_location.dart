import 'package:freezed_annotation/freezed_annotation.dart';

part 'geo_location.freezed.dart';

/// Geocoded location entity.
@freezed
abstract class GeoLocation with _$GeoLocation {
  const factory GeoLocation({
    required double lat,
    required double lon,
    String? displayName,
    String? type,
  }) = _GeoLocation;
}
