// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_weather_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ForecastDayDetailImpl _$$ForecastDayDetailImplFromJson(
        Map<String, dynamic> json) =>
    _$ForecastDayDetailImpl(
      avgTemperature: (json['avgtemp_c'] as num?)?.toDouble(),
      maxWindSpeed: (json['maxwind_mph'] as num?)?.toDouble(),
      avgHumidity: (json['avghumidity'] as num?)?.toInt(),
      condition: json['condition'] == null
          ? null
          : WeatherCondition.fromJson(
              json['condition'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ForecastDayDetailImplToJson(
        _$ForecastDayDetailImpl instance) =>
    <String, dynamic>{
      'avgtemp_c': instance.avgTemperature,
      'maxwind_mph': instance.maxWindSpeed,
      'avghumidity': instance.avgHumidity,
      'condition': instance.condition,
    };

_$ForecastWeatherDataImpl _$$ForecastWeatherDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ForecastWeatherDataImpl(
      date: json['date'] as String?,
      day: json['day'] == null
          ? null
          : ForecastDayDetail.fromJson(json['day'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ForecastWeatherDataImplToJson(
        _$ForecastWeatherDataImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'day': instance.day,
    };
