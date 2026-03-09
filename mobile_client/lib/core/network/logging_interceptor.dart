/// Custom logging interceptor for API requests.
library;

import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

/// Simple logging interceptor for debugging API calls.
class LoggingInterceptor extends Interceptor {
  LoggingInterceptor({Logger? logger, this.enabled = true})
      : _logger = logger ?? Logger();

  final Logger _logger;
  final bool enabled;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (enabled) {
      _logger.d('→ ${options.method} ${options.uri}');
      if (options.data != null && options.data is! FormData) {
        _logger.t('  Body: ${options.data}');
      }
    }
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (enabled) {
      _logger.d('← ${response.statusCode} ${response.requestOptions.uri}');
    }
    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (enabled) {
      _logger.e('✖ ${err.response?.statusCode ?? 'ERR'} ${err.requestOptions.uri}');
      if (err.response?.data != null) {
        _logger.e('  Response: ${err.response?.data}');
      }
    }
    handler.next(err);
  }
}
