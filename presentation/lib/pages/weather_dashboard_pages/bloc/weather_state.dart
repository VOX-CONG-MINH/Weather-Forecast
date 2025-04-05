part of 'weather_bloc.dart';

enum WeatherLoadState { initial, loading, loaded, failure }

enum HistoryLoadState { initial, loading, loaded, failure }

enum SubscriptionStatus { initial, loading, success, failure }

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState({
    @Default(WeatherLoadState.initial) WeatherLoadState loadState,
    @Default(HistoryLoadState.initial) HistoryLoadState historyloadState,
    @Default(Weather()) Weather currentWeather,
    @Default(<Weather>[]) List<Weather> forecastWeather,
    @Default(4) int displayedCount,
    @Default(false) bool isLoadingMore,
    @Default('') String errorMessage,
    @Default(<String, Weather>{}) Map<String, Weather> historyWeather,

    @Default(false) bool isAuthenticated,
    @Default(User()) User user, // Store user’s name

    @Default(SubscriptionStatus.initial) SubscriptionStatus subscriptionStatus,
    @Default('') String subscriptionError,
  }) = _WeatherState;
}
