import '../config/api_config.dart';

/// Helper to ensure image URLs are absolute.
/// 
/// Mirrors web_client's trustedImageUrl.
String trustedImageUrl(String url) {
  if (url.isEmpty) return url;
  if (url.startsWith('http://') || url.startsWith('https://')) {
    return url;
  }
  
  final baseUrl = ApiConfig.baseUrl.replaceAll(RegExp(r'/$'), '');
  final path = url.startsWith('/') ? url : '/$url';
  return '$baseUrl$path';
}
