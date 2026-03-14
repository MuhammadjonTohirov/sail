import 'package:injectable/injectable.dart';

import '../../../core/config/api_config.dart';
import '../../../core/network/api_client.dart';
import '../../models/moderation/moderation_dto.dart';

/// Interface for moderation remote data source.
abstract class ModerationRemoteDataSource {
  Future<List<ReportReasonDto>> getReportReasons({String? language});
  Future<void> submitReport(CreateReportRequestDto request);
}

/// Implementation of moderation remote data source.
@LazySingleton(as: ModerationRemoteDataSource)
class ModerationRemoteDataSourceImpl implements ModerationRemoteDataSource {
  ModerationRemoteDataSourceImpl({required ApiClient apiClient}) : _api = apiClient;

  final ApiClient _api;

  @override
  Future<List<ReportReasonDto>> getReportReasons({String? language}) async {
    final queryParams = <String, dynamic>{};
    if (language != null) queryParams['lang'] = language;
    final response = await _api.get<List<dynamic>>(
      ApiConfig.reportReasons,
      queryParameters: queryParams,
    );
    return response.data!
        .map((json) => ReportReasonDto.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<void> submitReport(CreateReportRequestDto request) async {
    await _api.post(ApiConfig.reports, data: request.toJson());
  }
}
