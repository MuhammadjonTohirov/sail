import '../entities/geo_location.dart';
import '../../core/utils/result.dart';

/// Geocoding repository interface.
///
/// Defines geocoding operations.
abstract class GeocodingRepository {
  Future<Result<GeoLocation?>> geocode(String locationName);
}
