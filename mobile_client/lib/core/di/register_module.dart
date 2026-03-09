import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

@module
abstract class RegisterModule {
  @lazySingleton
  Logger get logger => Logger();

  @lazySingleton
  FlutterSecureStorage get secureStorage => const FlutterSecureStorage();
  
  // Dio is created inside ApiClient for now, but ideally we should provide it here
  // or provide options here. ApiClient logic creates its own Dio but maybe we can refactor later.
  // For now leaving ApiClient to own Dio creation to match existing logic.
}
