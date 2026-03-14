// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:logger/logger.dart' as _i974;

import '../../data/datasources/remote/auth_remote_data_source.dart' as _i624;
import '../../data/datasources/remote/chat_remote_data_source.dart' as _i26;
import '../../data/datasources/remote/currency_remote_data_source.dart'
    as _i859;
import '../../data/datasources/remote/favorites_remote_data_source.dart'
    as _i168;
import '../../data/datasources/remote/geocoding_remote_data_source.dart'
    as _i301;
import '../../data/datasources/remote/listing_remote_data_source.dart' as _i632;
import '../../data/datasources/remote/moderation_remote_data_source.dart'
    as _i527;
import '../../data/datasources/remote/saved_search_remote_data_source.dart'
    as _i113;
import '../../data/datasources/remote/search_remote_data_source.dart' as _i171;
import '../../data/datasources/remote/suggested_listings_remote_data_source.dart'
    as _i1000;
import '../../data/datasources/remote/taxonomy_remote_data_source.dart'
    as _i260;
import '../../data/datasources/remote/telegram_remote_data_source.dart'
    as _i960;
import '../../data/datasources/remote/users_remote_data_source.dart' as _i261;
import '../../data/repositories/auth_repository_impl.dart' as _i895;
import '../../data/repositories/chat_repository_impl.dart' as _i838;
import '../../data/repositories/currency_repository_impl.dart' as _i371;
import '../../data/repositories/favorites_repository_impl.dart' as _i944;
import '../../data/repositories/geocoding_repository_impl.dart' as _i498;
import '../../data/repositories/listing_repository_impl.dart' as _i1042;
import '../../data/repositories/moderation_repository_impl.dart' as _i527;
import '../../data/repositories/saved_search_repository_impl.dart' as _i225;
import '../../data/repositories/search_repository_impl.dart' as _i278;
import '../../data/repositories/suggested_listings_repository_impl.dart'
    as _i772;
import '../../data/repositories/taxonomy_repository_impl.dart' as _i501;
import '../../data/repositories/telegram_repository_impl.dart' as _i244;
import '../../data/repositories/users_repository_impl.dart' as _i986;
import '../../domain/repositories/auth_repository.dart' as _i1073;
import '../../domain/repositories/chat_repository.dart' as _i1072;
import '../../domain/repositories/currency_repository.dart' as _i950;
import '../../domain/repositories/favorites_repository.dart' as _i550;
import '../../domain/repositories/geocoding_repository.dart' as _i470;
import '../../domain/repositories/listing_repository.dart' as _i54;
import '../../domain/repositories/moderation_repository.dart' as _i862;
import '../../domain/repositories/saved_search_repository.dart' as _i233;
import '../../domain/repositories/search_repository.dart' as _i475;
import '../../domain/repositories/suggested_listings_repository.dart' as _i819;
import '../../domain/repositories/taxonomy_repository.dart' as _i2;
import '../../domain/repositories/telegram_repository.dart' as _i586;
import '../../domain/repositories/users_repository.dart' as _i215;
import '../../domain/usecases/auth/change_password_use_case.dart' as _i980;
import '../../domain/usecases/auth/delete_account_use_case.dart' as _i937;
import '../../domain/usecases/auth/forgot_password_use_case.dart' as _i133;
import '../../domain/usecases/auth/get_me_use_case.dart' as _i698;
import '../../domain/usecases/auth/get_security_info_use_case.dart' as _i657;
import '../../domain/usecases/auth/is_authenticated_use_case.dart' as _i635;
import '../../domain/usecases/auth/link_telegram_use_case.dart' as _i881;
import '../../domain/usecases/auth/login_use_case.dart' as _i629;
import '../../domain/usecases/auth/logout_use_case.dart' as _i635;
import '../../domain/usecases/auth/mark_active_use_case.dart' as _i646;
import '../../domain/usecases/auth/register_use_case.dart' as _i201;
import '../../domain/usecases/auth/register_verify_use_case.dart' as _i421;
import '../../domain/usecases/auth/request_otp_use_case.dart' as _i144;
import '../../domain/usecases/auth/reset_password_use_case.dart' as _i409;
import '../../domain/usecases/auth/set_password_use_case.dart' as _i755;
import '../../domain/usecases/auth/telegram_auth_use_case.dart' as _i150;
import '../../domain/usecases/auth/unlink_telegram_use_case.dart' as _i475;
import '../../domain/usecases/auth/update_profile_use_case.dart' as _i450;
import '../../domain/usecases/auth/verify_otp_use_case.dart' as _i650;
import '../../domain/usecases/chat/archive_thread_use_case.dart' as _i581;
import '../../domain/usecases/chat/create_thread_use_case.dart' as _i994;
import '../../domain/usecases/chat/delete_thread_use_case.dart' as _i882;
import '../../domain/usecases/chat/get_thread_use_case.dart' as _i254;
import '../../domain/usecases/chat/list_messages_use_case.dart' as _i837;
import '../../domain/usecases/chat/list_threads_use_case.dart' as _i857;
import '../../domain/usecases/chat/mark_read_use_case.dart' as _i718;
import '../../domain/usecases/chat/send_message_use_case.dart' as _i250;
import '../../domain/usecases/chat/unarchive_thread_use_case.dart' as _i322;
import '../../domain/usecases/chat/upload_attachment_use_case.dart' as _i764;
import '../../domain/usecases/currency/convert_currency_use_case.dart' as _i799;
import '../../domain/usecases/currency/get_currency_config_use_case.dart'
    as _i646;
import '../../domain/usecases/favorites/list_favorites_use_case.dart' as _i752;
import '../../domain/usecases/favorites/remove_favorite_use_case.dart' as _i623;
import '../../domain/usecases/favorites/toggle_favorite_use_case.dart' as _i854;
import '../../domain/usecases/geocoding/geocode_location_use_case.dart'
    as _i946;
import '../../domain/usecases/listings/activate_listing_use_case.dart' as _i115;
import '../../domain/usecases/listings/create_listing_use_case.dart' as _i781;
import '../../domain/usecases/listings/deactivate_listing_use_case.dart'
    as _i717;
import '../../domain/usecases/listings/delete_listing_media_use_case.dart'
    as _i907;
import '../../domain/usecases/listings/delete_listing_use_case.dart' as _i813;
import '../../domain/usecases/listings/get_listing_detail_use_case.dart'
    as _i826;
import '../../domain/usecases/listings/get_my_listings_use_case.dart' as _i982;
import '../../domain/usecases/listings/get_user_listings_use_case.dart'
    as _i224;
import '../../domain/usecases/listings/refresh_listing_use_case.dart' as _i1025;
import '../../domain/usecases/listings/reorder_listing_media_use_case.dart'
    as _i1003;
import '../../domain/usecases/listings/reveal_contact_use_case.dart' as _i596;
import '../../domain/usecases/listings/share_listing_use_case.dart' as _i439;
import '../../domain/usecases/listings/track_interest_use_case.dart' as _i982;
import '../../domain/usecases/listings/update_listing_use_case.dart' as _i391;
import '../../domain/usecases/listings/upload_listing_media_use_case.dart'
    as _i858;
import '../../domain/usecases/moderation/get_report_reasons_use_case.dart'
    as _i791;
import '../../domain/usecases/moderation/submit_report_use_case.dart' as _i690;
import '../../domain/usecases/recently_viewed/clear_recently_viewed_use_case.dart'
    as _i193;
import '../../domain/usecases/recently_viewed/get_recently_viewed_use_case.dart'
    as _i529;
import '../../domain/usecases/recently_viewed/track_recently_viewed_use_case.dart'
    as _i468;
import '../../domain/usecases/saved_searches/create_saved_search_use_case.dart'
    as _i504;
import '../../domain/usecases/saved_searches/delete_saved_search_use_case.dart'
    as _i412;
import '../../domain/usecases/saved_searches/get_saved_searches_use_case.dart'
    as _i498;
import '../../domain/usecases/saved_searches/mark_saved_search_viewed_use_case.dart'
    as _i200;
import '../../domain/usecases/saved_searches/update_saved_search_use_case.dart'
    as _i210;
import '../../domain/usecases/search/search_listings_use_case.dart' as _i429;
import '../../domain/usecases/suggested_listings/get_suggested_listings_use_case.dart'
    as _i592;
import '../../domain/usecases/taxonomy/get_categories_use_case.dart' as _i186;
import '../../domain/usecases/taxonomy/get_category_attributes_use_case.dart'
    as _i160;
import '../../domain/usecases/taxonomy/get_locations_use_case.dart' as _i77;
import '../../domain/usecases/telegram/disconnect_telegram_chat_use_case.dart'
    as _i595;
import '../../domain/usecases/telegram/get_telegram_chats_use_case.dart'
    as _i685;
import '../../domain/usecases/telegram/verify_telegram_chats_use_case.dart'
    as _i832;
import '../../domain/usecases/users/get_user_by_id_use_case.dart' as _i354;
import '../../presentation/bloc/auth/auth_bloc.dart' as _i605;
import '../../presentation/bloc/home/home_bloc.dart' as _i751;
import '../../presentation/bloc/listing_detail/listing_detail_bloc.dart'
    as _i929;
import '../../presentation/bloc/post/post_bloc.dart' as _i990;
import '../../presentation/bloc/profile/profile_bloc.dart' as _i636;
import '../../presentation/bloc/search/search_bloc.dart' as _i302;
import '../network/api_client.dart' as _i557;
import '../storage/secure_storage.dart' as _i619;
import 'register_module.dart' as _i291;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i974.Logger>(() => registerModule.logger);
    gh.lazySingleton<_i558.FlutterSecureStorage>(
      () => registerModule.secureStorage,
    );
    gh.lazySingleton<_i619.SecureStorage>(
      () => _i619.SecureStorage(storage: gh<_i558.FlutterSecureStorage>()),
    );
    gh.lazySingleton<_i557.ApiClient>(
      () => _i557.ApiClient(
        storage: gh<_i619.SecureStorage>(),
        logger: gh<_i974.Logger>(),
      ),
    );
    gh.lazySingleton<_i301.GeocodingRemoteDataSource>(
      () =>
          _i301.GeocodingRemoteDataSourceImpl(apiClient: gh<_i557.ApiClient>()),
    );
    gh.lazySingleton<_i171.SearchRemoteDataSource>(
      () => _i171.SearchRemoteDataSourceImpl(apiClient: gh<_i557.ApiClient>()),
    );
    gh.lazySingleton<_i113.SavedSearchRemoteDataSource>(
      () => _i113.SavedSearchRemoteDataSourceImpl(
        apiClient: gh<_i557.ApiClient>(),
      ),
    );
    gh.lazySingleton<_i26.ChatRemoteDataSource>(
      () => _i26.ChatRemoteDataSourceImpl(apiClient: gh<_i557.ApiClient>()),
    );
    gh.lazySingleton<_i233.SavedSearchRepository>(
      () => _i225.SavedSearchRepositoryImpl(
        remoteDataSource: gh<_i113.SavedSearchRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i1000.SuggestedListingsRemoteDataSource>(
      () => _i1000.SuggestedListingsRemoteDataSourceImpl(
        apiClient: gh<_i557.ApiClient>(),
      ),
    );
    gh.lazySingleton<_i261.UsersRemoteDataSource>(
      () => _i261.UsersRemoteDataSourceImpl(apiClient: gh<_i557.ApiClient>()),
    );
    gh.lazySingleton<_i260.TaxonomyRemoteDataSource>(
      () =>
          _i260.TaxonomyRemoteDataSourceImpl(apiClient: gh<_i557.ApiClient>()),
    );
    gh.lazySingleton<_i470.GeocodingRepository>(
      () => _i498.GeocodingRepositoryImpl(
        remoteDataSource: gh<_i301.GeocodingRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i2.TaxonomyRepository>(
      () => _i501.TaxonomyRepositoryImpl(
        remoteDataSource: gh<_i260.TaxonomyRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i475.SearchRepository>(
      () => _i278.SearchRepositoryImpl(
        remoteDataSource: gh<_i171.SearchRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i632.ListingRemoteDataSource>(
      () => _i632.ListingRemoteDataSourceImpl(apiClient: gh<_i557.ApiClient>()),
    );
    gh.lazySingleton<_i859.CurrencyRemoteDataSource>(
      () =>
          _i859.CurrencyRemoteDataSourceImpl(apiClient: gh<_i557.ApiClient>()),
    );
    gh.lazySingleton<_i504.CreateSavedSearchUseCase>(
      () => _i504.CreateSavedSearchUseCase(gh<_i233.SavedSearchRepository>()),
    );
    gh.lazySingleton<_i412.DeleteSavedSearchUseCase>(
      () => _i412.DeleteSavedSearchUseCase(gh<_i233.SavedSearchRepository>()),
    );
    gh.lazySingleton<_i498.GetSavedSearchesUseCase>(
      () => _i498.GetSavedSearchesUseCase(gh<_i233.SavedSearchRepository>()),
    );
    gh.lazySingleton<_i200.MarkSavedSearchViewedUseCase>(
      () =>
          _i200.MarkSavedSearchViewedUseCase(gh<_i233.SavedSearchRepository>()),
    );
    gh.lazySingleton<_i210.UpdateSavedSearchUseCase>(
      () => _i210.UpdateSavedSearchUseCase(gh<_i233.SavedSearchRepository>()),
    );
    gh.lazySingleton<_i950.CurrencyRepository>(
      () => _i371.CurrencyRepositoryImpl(
        remoteDataSource: gh<_i859.CurrencyRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i799.ConvertCurrencyUseCase>(
      () => _i799.ConvertCurrencyUseCase(gh<_i950.CurrencyRepository>()),
    );
    gh.lazySingleton<_i646.GetCurrencyConfigUseCase>(
      () => _i646.GetCurrencyConfigUseCase(gh<_i950.CurrencyRepository>()),
    );
    gh.lazySingleton<_i946.GeocodeLocationUseCase>(
      () => _i946.GeocodeLocationUseCase(gh<_i470.GeocodingRepository>()),
    );
    gh.lazySingleton<_i527.ModerationRemoteDataSource>(
      () => _i527.ModerationRemoteDataSourceImpl(
        apiClient: gh<_i557.ApiClient>(),
      ),
    );
    gh.lazySingleton<_i960.TelegramRemoteDataSource>(
      () =>
          _i960.TelegramRemoteDataSourceImpl(apiClient: gh<_i557.ApiClient>()),
    );
    gh.lazySingleton<_i168.FavoritesRemoteDataSource>(
      () =>
          _i168.FavoritesRemoteDataSourceImpl(apiClient: gh<_i557.ApiClient>()),
    );
    gh.lazySingleton<_i624.AuthRemoteDataSource>(
      () => _i624.AuthRemoteDataSourceImpl(apiClient: gh<_i557.ApiClient>()),
    );
    gh.lazySingleton<_i1073.AuthRepository>(
      () => _i895.AuthRepositoryImpl(
        remoteDataSource: gh<_i624.AuthRemoteDataSource>(),
        storage: gh<_i619.SecureStorage>(),
      ),
    );
    gh.lazySingleton<_i215.UsersRepository>(
      () => _i986.UsersRepositoryImpl(
        remoteDataSource: gh<_i261.UsersRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i819.SuggestedListingsRepository>(
      () => _i772.SuggestedListingsRepositoryImpl(
        remoteDataSource: gh<_i1000.SuggestedListingsRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i54.ListingRepository>(
      () => _i1042.ListingRepositoryImpl(
        remoteDataSource: gh<_i632.ListingRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i429.SearchListingsUseCase>(
      () => _i429.SearchListingsUseCase(gh<_i475.SearchRepository>()),
    );
    gh.lazySingleton<_i586.TelegramRepository>(
      () => _i244.TelegramRepositoryImpl(
        remoteDataSource: gh<_i960.TelegramRemoteDataSource>(),
      ),
    );
    gh.factory<_i751.HomeBloc>(
      () => _i751.HomeBloc(
        gh<_i2.TaxonomyRepository>(),
        gh<_i475.SearchRepository>(),
      ),
    );
    gh.lazySingleton<_i186.GetCategoriesUseCase>(
      () => _i186.GetCategoriesUseCase(gh<_i2.TaxonomyRepository>()),
    );
    gh.lazySingleton<_i160.GetCategoryAttributesUseCase>(
      () => _i160.GetCategoryAttributesUseCase(gh<_i2.TaxonomyRepository>()),
    );
    gh.lazySingleton<_i77.GetLocationsUseCase>(
      () => _i77.GetLocationsUseCase(gh<_i2.TaxonomyRepository>()),
    );
    gh.factory<_i990.PostBloc>(
      () => _i990.PostBloc(
        gh<_i54.ListingRepository>(),
        gh<_i2.TaxonomyRepository>(),
      ),
    );
    gh.factory<_i302.SearchBloc>(
      () => _i302.SearchBloc(
        gh<_i475.SearchRepository>(),
        gh<_i819.SuggestedListingsRepository>(),
        gh<_i2.TaxonomyRepository>(),
      ),
    );
    gh.lazySingleton<_i1072.ChatRepository>(
      () => _i838.ChatRepositoryImpl(
        remoteDataSource: gh<_i26.ChatRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i592.GetSuggestedListingsUseCase>(
      () => _i592.GetSuggestedListingsUseCase(
        gh<_i819.SuggestedListingsRepository>(),
      ),
    );
    gh.lazySingleton<_i550.FavoritesRepository>(
      () => _i944.FavoritesRepositoryImpl(
        remoteDataSource: gh<_i168.FavoritesRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i595.DisconnectTelegramChatUseCase>(
      () => _i595.DisconnectTelegramChatUseCase(gh<_i586.TelegramRepository>()),
    );
    gh.lazySingleton<_i685.GetTelegramChatsUseCase>(
      () => _i685.GetTelegramChatsUseCase(gh<_i586.TelegramRepository>()),
    );
    gh.lazySingleton<_i832.VerifyTelegramChatsUseCase>(
      () => _i832.VerifyTelegramChatsUseCase(gh<_i586.TelegramRepository>()),
    );
    gh.lazySingleton<_i581.ArchiveThreadUseCase>(
      () => _i581.ArchiveThreadUseCase(gh<_i1072.ChatRepository>()),
    );
    gh.lazySingleton<_i994.CreateThreadUseCase>(
      () => _i994.CreateThreadUseCase(gh<_i1072.ChatRepository>()),
    );
    gh.lazySingleton<_i882.DeleteThreadUseCase>(
      () => _i882.DeleteThreadUseCase(gh<_i1072.ChatRepository>()),
    );
    gh.lazySingleton<_i254.GetThreadUseCase>(
      () => _i254.GetThreadUseCase(gh<_i1072.ChatRepository>()),
    );
    gh.lazySingleton<_i837.ListMessagesUseCase>(
      () => _i837.ListMessagesUseCase(gh<_i1072.ChatRepository>()),
    );
    gh.lazySingleton<_i857.ListThreadsUseCase>(
      () => _i857.ListThreadsUseCase(gh<_i1072.ChatRepository>()),
    );
    gh.lazySingleton<_i718.MarkReadUseCase>(
      () => _i718.MarkReadUseCase(gh<_i1072.ChatRepository>()),
    );
    gh.lazySingleton<_i250.SendMessageUseCase>(
      () => _i250.SendMessageUseCase(gh<_i1072.ChatRepository>()),
    );
    gh.lazySingleton<_i322.UnarchiveThreadUseCase>(
      () => _i322.UnarchiveThreadUseCase(gh<_i1072.ChatRepository>()),
    );
    gh.lazySingleton<_i764.UploadAttachmentUseCase>(
      () => _i764.UploadAttachmentUseCase(gh<_i1072.ChatRepository>()),
    );
    gh.lazySingleton<_i115.ActivateListingUseCase>(
      () => _i115.ActivateListingUseCase(gh<_i54.ListingRepository>()),
    );
    gh.lazySingleton<_i781.CreateListingUseCase>(
      () => _i781.CreateListingUseCase(gh<_i54.ListingRepository>()),
    );
    gh.lazySingleton<_i717.DeactivateListingUseCase>(
      () => _i717.DeactivateListingUseCase(gh<_i54.ListingRepository>()),
    );
    gh.lazySingleton<_i907.DeleteListingMediaUseCase>(
      () => _i907.DeleteListingMediaUseCase(gh<_i54.ListingRepository>()),
    );
    gh.lazySingleton<_i813.DeleteListingUseCase>(
      () => _i813.DeleteListingUseCase(gh<_i54.ListingRepository>()),
    );
    gh.lazySingleton<_i826.GetListingDetailUseCase>(
      () => _i826.GetListingDetailUseCase(gh<_i54.ListingRepository>()),
    );
    gh.lazySingleton<_i982.GetMyListingsUseCase>(
      () => _i982.GetMyListingsUseCase(gh<_i54.ListingRepository>()),
    );
    gh.lazySingleton<_i224.GetUserListingsUseCase>(
      () => _i224.GetUserListingsUseCase(gh<_i54.ListingRepository>()),
    );
    gh.lazySingleton<_i1025.RefreshListingUseCase>(
      () => _i1025.RefreshListingUseCase(gh<_i54.ListingRepository>()),
    );
    gh.lazySingleton<_i1003.ReorderListingMediaUseCase>(
      () => _i1003.ReorderListingMediaUseCase(gh<_i54.ListingRepository>()),
    );
    gh.lazySingleton<_i596.RevealContactUseCase>(
      () => _i596.RevealContactUseCase(gh<_i54.ListingRepository>()),
    );
    gh.lazySingleton<_i439.ShareListingUseCase>(
      () => _i439.ShareListingUseCase(gh<_i54.ListingRepository>()),
    );
    gh.lazySingleton<_i982.TrackInterestUseCase>(
      () => _i982.TrackInterestUseCase(gh<_i54.ListingRepository>()),
    );
    gh.lazySingleton<_i391.UpdateListingUseCase>(
      () => _i391.UpdateListingUseCase(gh<_i54.ListingRepository>()),
    );
    gh.lazySingleton<_i858.UploadListingMediaUseCase>(
      () => _i858.UploadListingMediaUseCase(gh<_i54.ListingRepository>()),
    );
    gh.lazySingleton<_i862.ModerationRepository>(
      () => _i527.ModerationRepositoryImpl(
        remoteDataSource: gh<_i527.ModerationRemoteDataSource>(),
      ),
    );
    gh.factory<_i605.AuthBloc>(
      () => _i605.AuthBloc(gh<_i1073.AuthRepository>(), gh<_i974.Logger>()),
    );
    gh.factory<_i636.ProfileBloc>(
      () => _i636.ProfileBloc(gh<_i1073.AuthRepository>()),
    );
    gh.lazySingleton<_i980.ChangePasswordUseCase>(
      () => _i980.ChangePasswordUseCase(gh<_i1073.AuthRepository>()),
    );
    gh.lazySingleton<_i937.DeleteAccountUseCase>(
      () => _i937.DeleteAccountUseCase(gh<_i1073.AuthRepository>()),
    );
    gh.lazySingleton<_i133.ForgotPasswordUseCase>(
      () => _i133.ForgotPasswordUseCase(gh<_i1073.AuthRepository>()),
    );
    gh.lazySingleton<_i698.GetMeUseCase>(
      () => _i698.GetMeUseCase(gh<_i1073.AuthRepository>()),
    );
    gh.lazySingleton<_i657.GetSecurityInfoUseCase>(
      () => _i657.GetSecurityInfoUseCase(gh<_i1073.AuthRepository>()),
    );
    gh.lazySingleton<_i635.IsAuthenticatedUseCase>(
      () => _i635.IsAuthenticatedUseCase(gh<_i1073.AuthRepository>()),
    );
    gh.lazySingleton<_i881.LinkTelegramUseCase>(
      () => _i881.LinkTelegramUseCase(gh<_i1073.AuthRepository>()),
    );
    gh.lazySingleton<_i629.LoginUseCase>(
      () => _i629.LoginUseCase(gh<_i1073.AuthRepository>()),
    );
    gh.lazySingleton<_i635.LogoutUseCase>(
      () => _i635.LogoutUseCase(gh<_i1073.AuthRepository>()),
    );
    gh.lazySingleton<_i646.MarkActiveUseCase>(
      () => _i646.MarkActiveUseCase(gh<_i1073.AuthRepository>()),
    );
    gh.lazySingleton<_i201.RegisterUseCase>(
      () => _i201.RegisterUseCase(gh<_i1073.AuthRepository>()),
    );
    gh.lazySingleton<_i421.RegisterVerifyUseCase>(
      () => _i421.RegisterVerifyUseCase(gh<_i1073.AuthRepository>()),
    );
    gh.lazySingleton<_i144.RequestOtpUseCase>(
      () => _i144.RequestOtpUseCase(gh<_i1073.AuthRepository>()),
    );
    gh.lazySingleton<_i409.ResetPasswordUseCase>(
      () => _i409.ResetPasswordUseCase(gh<_i1073.AuthRepository>()),
    );
    gh.lazySingleton<_i755.SetPasswordUseCase>(
      () => _i755.SetPasswordUseCase(gh<_i1073.AuthRepository>()),
    );
    gh.lazySingleton<_i150.TelegramAuthUseCase>(
      () => _i150.TelegramAuthUseCase(gh<_i1073.AuthRepository>()),
    );
    gh.lazySingleton<_i475.UnlinkTelegramUseCase>(
      () => _i475.UnlinkTelegramUseCase(gh<_i1073.AuthRepository>()),
    );
    gh.lazySingleton<_i450.UpdateProfileUseCase>(
      () => _i450.UpdateProfileUseCase(gh<_i1073.AuthRepository>()),
    );
    gh.lazySingleton<_i650.VerifyOtpUseCase>(
      () => _i650.VerifyOtpUseCase(gh<_i1073.AuthRepository>()),
    );
    gh.lazySingleton<_i752.ListFavoritesUseCase>(
      () => _i752.ListFavoritesUseCase(gh<_i550.FavoritesRepository>()),
    );
    gh.lazySingleton<_i623.RemoveFavoriteUseCase>(
      () => _i623.RemoveFavoriteUseCase(gh<_i550.FavoritesRepository>()),
    );
    gh.lazySingleton<_i854.ToggleFavoriteUseCase>(
      () => _i854.ToggleFavoriteUseCase(gh<_i550.FavoritesRepository>()),
    );
    gh.lazySingleton<_i193.ClearRecentlyViewedUseCase>(
      () => _i193.ClearRecentlyViewedUseCase(gh<_i550.FavoritesRepository>()),
    );
    gh.lazySingleton<_i529.GetRecentlyViewedUseCase>(
      () => _i529.GetRecentlyViewedUseCase(gh<_i550.FavoritesRepository>()),
    );
    gh.lazySingleton<_i468.TrackRecentlyViewedUseCase>(
      () => _i468.TrackRecentlyViewedUseCase(gh<_i550.FavoritesRepository>()),
    );
    gh.lazySingleton<_i354.GetUserByIdUseCase>(
      () => _i354.GetUserByIdUseCase(gh<_i215.UsersRepository>()),
    );
    gh.factory<_i929.ListingDetailBloc>(
      () => _i929.ListingDetailBloc(
        gh<_i54.ListingRepository>(),
        gh<_i550.FavoritesRepository>(),
      ),
    );
    gh.lazySingleton<_i791.GetReportReasonsUseCase>(
      () => _i791.GetReportReasonsUseCase(gh<_i862.ModerationRepository>()),
    );
    gh.lazySingleton<_i690.SubmitReportUseCase>(
      () => _i690.SubmitReportUseCase(gh<_i862.ModerationRepository>()),
    );
    return this;
  }
}

class _$RegisterModule extends _i291.RegisterModule {}
