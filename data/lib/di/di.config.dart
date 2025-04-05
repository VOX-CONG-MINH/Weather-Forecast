// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:data/data.dart' as _i12;
import 'package:data/datasources/client/api_client.dart' as _i13;
import 'package:data/datasources/emailjs_datasource.dart' as _i8;
import 'package:data/datasources/firestore_datasource.dart' as _i7;
import 'package:data/datasources/remote_datasource.dart' as _i9;
import 'package:data/mapper/current_weather_data_mapper.dart' as _i3;
import 'package:data/mapper/forecast_weather_data_mapper.dart' as _i4;
import 'package:data/mapper/user_data_mapper.dart' as _i5;
import 'package:data/repositories/repository_impl.dart' as _i11;
import 'package:domain/domain.dart' as _i10;
import 'package:get_it/get_it.dart' as _i1;
import 'package:http/http.dart' as _i6;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final apiClient = _$ApiClient();
    gh.factory<_i3.CurrentWeatherDataMapper>(
        () => const _i3.CurrentWeatherDataMapper());
    gh.factory<_i4.ForecastWeatherDataMapper>(
        () => const _i4.ForecastWeatherDataMapper());
    gh.factory<_i5.UserDataMapper>(() => const _i5.UserDataMapper());
    gh.lazySingleton<_i6.Client>(() => apiClient.httpClient);
    gh.lazySingleton<_i7.FirestoreDataSource>(() => _i7.FirestoreDataSource());
    gh.lazySingleton<_i8.EmailJsDataSource>(
        () => _i8.EmailJsDataSource(gh<_i6.Client>()));
    gh.lazySingleton<_i9.RemoteDataSource>(
        () => _i9.RemoteDataSource(gh<_i6.Client>()));
    gh.lazySingleton<_i10.Repository>(() => _i11.RepositoryImpl(
          gh<_i12.RemoteDataSource>(),
          gh<_i12.CurrentWeatherDataMapper>(),
          gh<_i12.ForecastWeatherDataMapper>(),
          gh<_i12.FirestoreDataSource>(),
          gh<_i12.EmailJsDataSource>(),
          gh<_i12.UserDataMapper>(),
        ));
    return this;
  }
}

class _$ApiClient extends _i13.ApiClient {}
