import '../entities/currency.dart';
import '../../core/utils/result.dart';

/// Currency repository interface.
abstract class CurrencyRepository {
  /// Get currency configuration (currencies and exchange rates).
  Future<Result<CurrencyConfig>> getConfig();
  
  /// Convert amount from one currency to another.
  /// 
  /// Note: Prefer client-side conversion using cached rates.
  Future<Result<ConversionResult>> convert(double amount, String from, String to);
  
  // Local caching
  Future<CurrencyConfig?> getCachedConfig();
  Future<void> cacheConfig(CurrencyConfig config);
}
