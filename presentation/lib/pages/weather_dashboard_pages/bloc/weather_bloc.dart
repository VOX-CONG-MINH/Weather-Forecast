import 'package:domain/domain.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'weather_event.dart';
part 'weather_state.dart';
part 'weather_bloc.freezed.dart';

@injectable
class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherBloc(
    this._getWeatherUsecase,
    this._getForecastUsecases,
    this._confirmEmailUsecase,
    this._getUserUsecase,
    this._historySearchUsecase,
    this._signOutUsecase,
  ) : super(WeatherState()) {
    on<LoadCurrentWeather>(_onLoadCurrentWeather);
    on<LoadForecastWeather>(_onLoadForecastWeather);
    on<LoadMoreForecast>(_onLoadMoreForecast);
    on<ConfirmSubscription>(_onConfirmSubscription);
    on<SignInSuccess>(_onSignInSuccess);
    on<SignOutUser>(_onSignOut);
  }

  final GetWeatherUsecase _getWeatherUsecase;
  final GetForecastUsecases _getForecastUsecases;
  final GetUserUsecase _getUserUsecase;
  final HistorySearchUsecase _historySearchUsecase;
  final ConfirmEmailUsecase _confirmEmailUsecase;
  final SignOutUsecase _signOutUsecase;

  Future<void> _onSignInSuccess(
    SignInSuccess event,
    Emitter<WeatherState> emit,
  ) async {
    final user = await _getUserUsecase.call(NoParams());
    await user.fold((l) {}, (user) async {
      emit(state.copyWith(isAuthenticated: true, errorMessage: '', user: user));
    });
  }

  Future<void> _onSignOut(SignOutUser event, Emitter<WeatherState> emit) async {
    final signOutResult = await _signOutUsecase.call(SignOutParams());
    signOutResult.fold(
      (failure) => emit(state.copyWith(errorMessage: failure.message)),
      (_) async {
        emit(
          state.copyWith(
            isAuthenticated: false,
            user: const User(),
            historyWeather: {},
            errorMessage: '',
          ),
        );
      },
    );
  }

  Future<void> _saveToHistory(
    Weather weather,
    LoadCurrentWeather event,
    Emitter<WeatherState> emit,
  ) async {
    emit(state.copyWith(historyloadState: HistoryLoadState.loading));
    final result = await _historySearchUsecase.call(
      HistorySearchParams(uuid: event.user.uuid, weather: weather),
    );
    await result.fold(
      (failure) {
        emit(
          state.copyWith(
            historyloadState: HistoryLoadState.failure,
            errorMessage: 'Failed to save search history',
          ),
        );
      },
      (weatherHistory) async {
        emit(
          state.copyWith(
            historyloadState: HistoryLoadState.loaded,
            historyWeather: weatherHistory,
            currentWeather: weather,
          ),
        );
      },
    );
  }

  Future<void> _onLoadCurrentWeather(
    LoadCurrentWeather event,
    Emitter<WeatherState> emit,
  ) async {
    emit(state.copyWith(loadState: WeatherLoadState.loading));
    final currentWeather = await _getWeatherUsecase.call(event.city);

    await currentWeather.fold(
      (l) {
        emit(
          state.copyWith(
            loadState: WeatherLoadState.failure,
            errorMessage: 'failure',
          ),
        );
      },
      (weather) async {
        emit(
          state.copyWith(
            currentWeather: weather,
            loadState: WeatherLoadState.loaded,
            isAuthenticated: state.isAuthenticated,
            user: state.user,
          ),
        );
        if (event.user.uuid != '') {
          await _saveToHistory(weather, event, emit);
        }
      },
    );

    await _onSignInSuccess(const SignInSuccess(), emit);
  }

  Future<void> _onLoadForecastWeather(
    LoadForecastWeather event,
    Emitter<WeatherState> emit,
  ) async {
    emit(const WeatherState(loadState: WeatherLoadState.loading));

    final forecasts = await _getForecastUsecases.call(
      Params(city: event.city, days: 4),
    );

    await forecasts.fold(
      (l) {
        emit(
          state.copyWith(
            loadState: WeatherLoadState.failure,
            errorMessage: 'failure',
          ),
        );
      },
      (forecasts) async {
        emit(
          state.copyWith(
            forecastWeather: forecasts,
            loadState: WeatherLoadState.loaded,
            isAuthenticated: state.isAuthenticated,
            user: state.user,
            displayedCount: 4,
            isLoadingMore: false,
          ),
        );
      },
    );

    await _onSignInSuccess(const SignInSuccess(), emit);
  }

  Future<void> _onLoadMoreForecast(
    LoadMoreForecast event,
    Emitter<WeatherState> emit,
  ) async {
    if (state.loadState == WeatherLoadState.loaded && !state.isLoadingMore) {
      emit(state.copyWith(isLoadingMore: true));

      final newDisplayedCount = state.displayedCount + 2;

      final newForecast = await _getForecastUsecases.call(
        Params(city: state.currentWeather.name, days: newDisplayedCount),
      );

      newForecast.fold(
        (l) {
          emit(
            WeatherState(
              loadState: WeatherLoadState.failure,
              errorMessage: 'failure',
            ),
          );
        },
        (newForecast) {
          emit(
            state.copyWith(
              forecastWeather: newForecast,
              displayedCount: newDisplayedCount,
              isLoadingMore: false,
            ),
          );
        },
      );
    }
  }

  Future<void> _onConfirmSubscription(
    ConfirmSubscription event,
    Emitter<WeatherState> emit,
  ) async {
    emit(state.copyWith(subscriptionStatus: SubscriptionStatus.loading));
    final result = await _confirmEmailUsecase(event.email);
    result.fold(
      (failure) => emit(
        state.copyWith(
          subscriptionStatus: SubscriptionStatus.failure,
          subscriptionError: 'Failed to confirm subscription: $failure',
        ),
      ),
      (_) async {
        // // Giả định repository đã cập nhật danh sách subscriptions
        // final updatedSubscriptions = Map<String, String>.from(
        //   state.subscriptions,
        // );
        // final subscription = await _subscribeWeatherUsecase._dbService
        //     .getSubscription(event.email);
        // if (subscription != null) {
        //   updatedSubscriptions[event.email] = subscription['city'];
        // }
        emit(
          state.copyWith(
            subscriptionStatus: SubscriptionStatus.success,
            // subscriptions: updatedSubscriptions,
          ),
        );
      },
    );
  }
}
