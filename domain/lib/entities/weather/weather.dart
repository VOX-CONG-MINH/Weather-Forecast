import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather.freezed.dart';
part 'weather.g.dart'; // Thêm dòng này để hỗ trợ JSON

@freezed
class Weather with _$Weather {
  const factory Weather({
    @Default('') String name,
    @Default('') String day,
    @Default('') String time,
    @Default(0.0) double temperature,
    @Default('') String condition,
    @Default('') String icon,
    @Default(0.0) double windSpeed,
    @Default(0) int humidity,
  }) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);
}
