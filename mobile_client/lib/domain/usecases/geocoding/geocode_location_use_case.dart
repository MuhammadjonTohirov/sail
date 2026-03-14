import 'package:injectable/injectable.dart';

import '../../../core/utils/result.dart';
import '../../entities/geo_location.dart';
import '../../repositories/geocoding_repository.dart';

@lazySingleton
class GeocodeLocationUseCase {
  GeocodeLocationUseCase(this._repository);
  final GeocodingRepository _repository;

  Future<Result<GeoLocation?>> call(String locationName) =>
      _repository.geocode(locationName);
}
