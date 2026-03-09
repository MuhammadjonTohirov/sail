// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

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
import '../../data/datasources/remote/listing_remote_data_source.dart' as _i632;
import '../../data/datasources/remote/saved_search_remote_data_source.dart'
    as _i113;
import '../../data/datasources/remote/search_remote_data_source.dart' as _i171;
import '../../data/datasources/remote/taxonomy_remote_data_source.dart'
    as _i260;
import '../../data/repositories/auth_repository_impl.dart' as _i895;
import '../../data/repositories/chat_repository_impl.dart' as _i838;
import '../../data/repositories/currency_repository_impl.dart' as _i371;
import '../../data/repositories/favorites_repository_impl.dart' as _i944;
import '../../data/repositories/listing_repository_impl.dart' as _i1042;
import '../../data/repositories/saved_search_repository_impl.dart' as _i225;
import '../../data/repositories/search_repository_impl.dart' as _i278;
import '../../data/repositories/taxonomy_repository_impl.dart' as _i501;
import '../../domain/repositories/auth_repository.dart' as _i1073;
import '../../domain/repositories/chat_repository.dart' as _i1072;
import '../../domain/repositories/currency_repository.dart' as _i950;
import '../../domain/repositories/favorites_repository.dart' as _i550;
import '../../domain/repositories/listing_repository.dart' as _i54;
import '../../domain/repositories/saved_search_repository.dart' as _i233;
import '../../domain/repositories/search_repository.dart' as _i475;
import '../../domain/repositories/taxonomy_repository.dart' as _i2;
import '../../presentation/bloc/auth/auth_bloc.dart' as _i605;
import '../../presentation/bloc/home/home_bloc.dart' as _i751;
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
    gh.lazySingleton<_i260.TaxonomyRemoteDataSource>(
      () =>
          _i260.TaxonomyRemoteDataSourceImpl(apiClient: gh<_i557.ApiClient>()),
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
    gh.lazySingleton<_i950.CurrencyRepository>(
      () => _i371.CurrencyRepositoryImpl(
        remoteDataSource: gh<_i859.CurrencyRemoteDataSource>(),
      ),
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
    gh.lazySingleton<_i54.ListingRepository>(
      () => _i1042.ListingRepositoryImpl(
        remoteDataSource: gh<_i632.ListingRemoteDataSource>(),
      ),
    );
    gh.factory<_i751.HomeBloc>(
      () => _i751.HomeBloc(
        gh<_i2.TaxonomyRepository>(),
        gh<_i475.SearchRepository>(),
      ),
    );
    gh.lazySingleton<_i1072.ChatRepository>(
      () => _i838.ChatRepositoryImpl(
        remoteDataSource: gh<_i26.ChatRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i550.FavoritesRepository>(
      () => _i944.FavoritesRepositoryImpl(
        remoteDataSource: gh<_i168.FavoritesRemoteDataSource>(),
      ),
    );
    gh.factory<_i605.AuthBloc>(
      () => _i605.AuthBloc(gh<_i1073.AuthRepository>(), gh<_i974.Logger>()),
    );
    return this;
  }
}

class _$RegisterModule extends _i291.RegisterModule {}
