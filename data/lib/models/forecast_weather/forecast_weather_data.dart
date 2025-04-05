import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data.dart';

part 'forecast_weather_data.freezed.dart';
part 'forecast_weather_data.g.dart';

@freezed
class ForecastDayDetail with _$ForecastDayDetail {
  const factory ForecastDayDetail({
    @JsonKey(name: 'avgtemp_c') double? avgTemperature,
    @JsonKey(name: 'maxwind_mph') double? maxWindSpeed,
    @JsonKey(name: 'avghumidity') int? avgHumidity,
    @JsonKey(name: 'condition') WeatherCondition? condition,
  }) = _ForecastDayDetail;

  factory ForecastDayDetail.fromJson(Map<String, dynamic> json) =>
      _$ForecastDayDetailFromJson(json);
}

@freezed
class ForecastWeatherData with _$ForecastWeatherData {
  const factory ForecastWeatherData({
    @JsonKey(name: 'date') String? date,
    @JsonKey(name: 'day') ForecastDayDetail? day,
  }) = _ForecastWeatherData;

  factory ForecastWeatherData.fromJson(Map<String, dynamic> json) =>
      _$ForecastWeatherDataFromJson(json);
}
