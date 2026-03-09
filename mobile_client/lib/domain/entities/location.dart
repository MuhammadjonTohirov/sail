import 'package:freezed_annotation/freezed_annotation.dart';

part 'location.freezed.dart';

/// Location domain entity.
/// 
/// Matches web_client/domain/models/Location.ts
@freezed
abstract class Location with _$Location {
  const factory Location({
    required int id,
    required String name,
    required String slug,
    int? parentId,
    int? level,
    List<Location>? children,
  }) = _Location;
}

/// Reverse geocode result entity.
@freezed
abstract class ReverseGeocodeResult with _$ReverseGeocodeResult {
  const factory ReverseGeocodeResult({
    required int id,
    required String name,
    String? nameRu,
    String? nameUz,
    required String kind,
    required String path,
    required double distance,
  }) = _ReverseGeocodeResult;
}
