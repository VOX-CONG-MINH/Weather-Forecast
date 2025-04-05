// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:domain/domain.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:presentation/pages/signin/bloc/sign_in_bloc.dart' as _i6;
import 'package:presentation/pages/signup/bloc/sign_up_bloc.dart' as _i3;
import 'package:presentation/pages/weather_dashboard_pages/bloc/weather_bloc.dart'
    as _i5;

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
    gh.factory<_i3.SignUpBloc>(() => _i3.SignUpBloc(gh<_i4.SignUpUsecase>()));
    gh.factory<_i5.WeatherBloc>(() => _i5.WeatherBloc(
          gh<_i4.GetWeatherUsecase>(),
          gh<_i4.GetForecastUsecases>(),
          gh<_i4.ConfirmEmailUsecase>(),
          gh<_i4.GetUserUsecase>(),
          gh<_i4.HistorySearchUsecase>(),
          gh<_i4.SignOutUsecase>(),
        ));
    gh.factory<_i6.SignInBloc>(() => _i6.SignInBloc(gh<_i4.SignInUsecase>()));
    return this;
  }
}
