import 'package:freezed_annotation/freezed_annotation.dart';

part 'current_weather_data.freezed.dart';
part 'current_weather_data.g.dart';

@freezed
class WeatherCondition with _$WeatherCondition {
  const factory WeatherCondition({
    @JsonKey(name: 'text') String? text,
    @JsonKey(name: 'icon') String? icon,
  }) = _WeatherCondition;

  factory WeatherCondition.fromJson(Map<String, dynamic> json) =>
      _$WeatherConditionFromJson(json);
}

@freezed
class LocationData with _$LocationData {
  const factory LocationData({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'localtime') String? localtime,
  }) = _LocationData;

  factory LocationData.fromJson(Map<String, dynamic> json) =>
      _$LocationDataFromJson(json);
}

@freezed
class CurrentData with _$CurrentData {
  const factory CurrentData({
    @JsonKey(name: 'temp_c') double? temperature,
    @JsonKey(name: 'condition') WeatherCondition? condition,
    @JsonKey(name: 'wind_mph') double? windSpeed,
    @JsonKey(name: 'humidity') int? humidity,
  }) = _CurrentData;

  factory CurrentData.fromJson(Map<String, dynamic> json) =>
      _$CurrentDataFromJson(json);
}

@freezed
class CurrentWeatherData with _$CurrentWeatherData {
  const factory CurrentWeatherData({
    @JsonKey(name: 'location') LocationData? location,
    @JsonKey(name: 'current') CurrentData? current,
  }) = _CurrentWeatherData;

  factory CurrentWeatherData.fromJson(Map<String, dynamic> json) =>
      _$CurrentWeatherDataFromJson(json);
}
