/// Remote data source for listing API calls.
library;
import 'package:injectable/injectable.dart';

import 'package:dio/dio.dart';

import '../../../core/config/api_config.dart';
import '../../../core/network/api_client.dart';
import '../../models/listing/listing_dto.dart';

/// Interface for listing remote data source.
abstract class ListingRemoteDataSource {
  // CRUD
  Future<ListingDto> create(ListingPayloadDto payload);
  Future<ListingDto> getById(int id);
  Future<ListingDto> update(int id, ListingPayloadDto payload);
  Future<void> delete(int id);
  
  // Status management
  Future<ListingDto> refresh(int id);
  Future<void> activate(int id);
  Future<void> deactivate(int id);
  
  // Media management
  Future<ListingMediaDto> uploadMedia(int listingId, String filePath);
  Future<void> deleteMedia(int listingId, int mediaId);
  Future<void> reorderMedia(int listingId, List<int> mediaIds);
  
  // User listings
  Future<List<ListingDto>> getMyListings();
  Future<List<ListingDto>> getUserListings(int userId);
  
  // Social
  Future<void> shareToTelegram(int listingId, List<int> chatIds);
  Future<void> trackInterest(int listingId);
}


/// Implementation of listing remote data source.
@LazySingleton(as: ListingRemoteDataSource)
class ListingRemoteDataSourceImpl implements ListingRemoteDataSource {
  ListingRemoteDataSourceImpl({required ApiClient apiClient}) : _api = apiClient;
  
  final ApiClient _api;

  @override
  Future<ListingDto> create(ListingPayloadDto payload) async {
    final response = await _api.post<Map<String, dynamic>>(
      ApiConfig.listingsCreate,
      data: payload.toJson(),
    );
    return ListingDto.fromJson(response.data!);
  }

  @override
  Future<ListingDto> getById(int id) async {
    final response = await _api.get<Map<String, dynamic>>(
      ApiConfig.listingDetail(id),
    );
    return ListingDto.fromJson(response.data!);
  }

  @override
  Future<ListingDto> update(int id, ListingPayloadDto payload) async {
    final response = await _api.patch<Map<String, dynamic>>(
      ApiConfig.listingUpdate(id),
      data: payload.toJson(),
    );
    return ListingDto.fromJson(response.data!);
  }

  @override
  Future<void> delete(int id) async {
    await _api.delete(ApiConfig.listingDelete(id));
  }

  @override
  Future<ListingDto> refresh(int id) async {
    final response = await _api.post<Map<String, dynamic>>(
      ApiConfig.listingRefresh(id),
    );
    return ListingDto.fromJson(response.data!);
  }

  @override
  Future<void> activate(int id) async {
    await _api.post(ApiConfig.listingActivate(id));
  }

  @override
  Future<void> deactivate(int id) async {
    await _api.post(ApiConfig.listingDeactivate(id));
  }

  @override
  Future<ListingMediaDto> uploadMedia(int listingId, String filePath) async {
    final formData = FormData.fromMap({
      'file': await MultipartFile.fromFile(filePath),
    });
    
    final response = await _api.postMultipart<Map<String, dynamic>>(
      ApiConfig.listingMedia(listingId),
      formData: formData,
    );
    return ListingMediaDto.fromJson(response.data!);
  }

  @override
  Future<void> deleteMedia(int listingId, int mediaId) async {
    await _api.delete(ApiConfig.listingMediaDelete(listingId, mediaId));
  }

  @override
  Future<void> reorderMedia(int listingId, List<int> mediaIds) async {
    final request = MediaReorderRequestDto(mediaIds: mediaIds);
    await _api.post(
      ApiConfig.listingMediaReorder(listingId),
      data: request.toJson(),
    );
  }

  @override
  Future<List<ListingDto>> getMyListings() async {
    final response = await _api.get<List<dynamic>>(ApiConfig.myListings);
    return (response.data!)
        .map((json) => ListingDto.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<List<ListingDto>> getUserListings(int userId) async {
    final response = await _api.get<List<dynamic>>(
      ApiConfig.userListings(userId),
    );
    return (response.data!)
        .map((json) => ListingDto.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<void> shareToTelegram(int listingId, List<int> chatIds) async {
    final request = ListingShareRequestDto(telegramChatIds: chatIds);
    await _api.post(
      ApiConfig.listingShare(listingId),
      data: request.toJson(),
    );
  }

  @override
  Future<void> trackInterest(int listingId) async {
    await _api.post(ApiConfig.listingInterest(listingId));
  }
}
