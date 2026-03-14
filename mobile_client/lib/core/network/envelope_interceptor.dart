/// Interceptor that unwraps the standard API response envelope.
///
/// The server wraps all responses in:
/// ```json
/// { "success": bool, "data": <payload>, "error": string|null, "code": int }
/// ```
///
/// This interceptor extracts `data` so downstream code receives the
/// actual payload directly, matching how web_client's apiFetch() works.
library;

import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

import '../errors/exceptions.dart';

/// Unwraps the server's standard `{success, data, error, code}` envelope.
class EnvelopeInterceptor extends Interceptor {
  EnvelopeInterceptor({Logger? logger}) : _logger = logger ?? Logger();

  final Logger _logger;

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    final data = response.data;

    // Only unwrap if response looks like our envelope
    if (data is Map<String, dynamic> && data.containsKey('success') && data.containsKey('data')) {
      final success = data['success'] as bool? ?? false;
      final payload = data['data'];
      final error = data['error'];

      if (!success && error != null) {
        _logger.w('API envelope error: $error');
        handler.reject(
          DioException(
            requestOptions: response.requestOptions,
            response: response,
            type: DioExceptionType.badResponse,
            error: ApiException(
              statusCode: response.statusCode ?? 0,
              message: error.toString(),
            ),
          ),
        );
        return;
      }

      // Replace response data with unwrapped payload
      response.data = payload;
    }

    handler.next(response);
  }
}
