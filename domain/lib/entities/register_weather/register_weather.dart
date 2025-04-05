import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_weather.freezed.dart';
part 'register_weather.g.dart';

@freezed
class RegisterWeather with _$RegisterWeather {
  const factory RegisterWeather({
    @Default('') String email,
    @Default(false) bool isConfirmed,
  }) = _RegisterWeather;

  factory RegisterWeather.fromJson(Map<String, dynamic> json) =>
      _$RegisterWeatherFromJson(json);
}
