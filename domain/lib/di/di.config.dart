// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:domain/domain.dart' as _i4;
import 'package:domain/usecases/confirm_email_usecase.dart' as _i6;
import 'package:domain/usecases/get_forecast_usecases.dart' as _i3;
import 'package:domain/usecases/get_user_usecase.dart' as _i9;
import 'package:domain/usecases/get_weather_usecase.dart' as _i5;
import 'package:domain/usecases/history_search_usecase.dart' as _i10;
import 'package:domain/usecases/sign_in_usecase.dart' as _i7;
import 'package:domain/usecases/sign_out_usecase.dart' as _i11;
import 'package:domain/usecases/sign_up_usecase.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
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
    gh.factory<_i3.GetForecastUsecases>(
        () => _i3.GetForecastUsecases(gh<_i4.Repository>()));
    gh.factory<_i5.GetWeatherUsecase>(
        () => _i5.GetWeatherUsecase(gh<_i4.Repository>()));
    gh.factory<_i6.ConfirmEmailUsecase>(
        () => _i6.ConfirmEmailUsecase(gh<_i4.Repository>()));
    gh.factory<_i7.SignInUsecase>(
        () => _i7.SignInUsecase(gh<_i4.Repository>()));
    gh.factory<_i8.SignUpUsecase>(
        () => _i8.SignUpUsecase(gh<_i4.Repository>()));
    gh.factory<_i9.GetUserUsecase>(
        () => _i9.GetUserUsecase(gh<_i4.Repository>()));
    gh.factory<_i10.HistorySearchUsecase>(
        () => _i10.HistorySearchUsecase(gh<_i4.Repository>()));
    gh.factory<_i11.SignOutUsecase>(
        () => _i11.SignOutUsecase(gh<_i4.Repository>()));
    return this;
  }
}
