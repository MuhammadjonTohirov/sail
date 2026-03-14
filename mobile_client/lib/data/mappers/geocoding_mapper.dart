import '../../domain/entities/geo_location.dart';
import '../models/geocoding/geocoding_dto.dart';

extension GeoLocationDtoMapper on GeoLocationDto {
  GeoLocation toEntity() {
    return GeoLocation(
      lat: lat,
      lon: lon,
      displayName: displayName,
      type: type,
    );
  }
}
