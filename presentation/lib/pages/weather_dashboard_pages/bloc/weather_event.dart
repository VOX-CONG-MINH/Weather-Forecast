part of 'weather_bloc.dart';

sealed class WeatherEvent {
  const WeatherEvent();
}

@freezed
class SignInSuccess extends WeatherEvent with _$SignInSuccess {
  const factory SignInSuccess() = _SignInSuccess;
}

@freezed
class SignOutUser extends WeatherEvent with _$SignOutUser {
  const factory SignOutUser() = _SignOutUser;
}

@freezed
class LoadCurrentWeather extends WeatherEvent with _$LoadCurrentWeather {
  const factory LoadCurrentWeather({
    required String city,

    @Default(User()) User user,
  }) = _LoadCurrentWeather;
}

@freezed
class LoadForecastWeather extends WeatherEvent with _$LoadForecastWeather {
  const factory LoadForecastWeather({required String city}) =
      _LoadForecastWeather;
}

@freezed
class LoadMoreForecast extends WeatherEvent with _$LoadMoreForecast {
  const factory LoadMoreForecast() = _LoadMoreForecast;
}

@freezed
class ConfirmSubscription extends WeatherEvent with _$ConfirmSubscription {
  const factory ConfirmSubscription({
    required String email,
    required String city,
  }) = _ConfirmSubscription;
}
