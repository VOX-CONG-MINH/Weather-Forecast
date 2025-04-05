// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_weather_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherConditionImpl _$$WeatherConditionImplFromJson(
        Map<String, dynamic> json) =>
    _$WeatherConditionImpl(
      text: json['text'] as String?,
      icon: json['icon'] as String?,
    );

Map<String, dynamic> _$$WeatherConditionImplToJson(
        _$WeatherConditionImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'icon': instance.icon,
    };

_$LocationDataImpl _$$LocationDataImplFromJson(Map<String, dynamic> json) =>
    _$LocationDataImpl(
      name: json['name'] as String?,
      localtime: json['localtime'] as String?,
    );

Map<String, dynamic> _$$LocationDataImplToJson(_$LocationDataImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'localtime': instance.localtime,
    };

_$CurrentDataImpl _$$CurrentDataImplFromJson(Map<String, dynamic> json) =>
    _$CurrentDataImpl(
      temperature: (json['temp_c'] as num?)?.toDouble(),
      condition: json['condition'] == null
          ? null
          : WeatherCondition.fromJson(
              json['condition'] as Map<String, dynamic>),
      windSpeed: (json['wind_mph'] as num?)?.toDouble(),
      humidity: (json['humidity'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CurrentDataImplToJson(_$CurrentDataImpl instance) =>
    <String, dynamic>{
      'temp_c': instance.temperature,
      'condition': instance.condition,
      'wind_mph': instance.windSpeed,
      'humidity': instance.humidity,
    };

_$CurrentWeatherDataImpl _$$CurrentWeatherDataImplFromJson(
        Map<String, dynamic> json) =>
    _$CurrentWeatherDataImpl(
      location: json['location'] == null
          ? null
          : LocationData.fromJson(json['location'] as Map<String, dynamic>),
      current: json['current'] == null
          ? null
          : CurrentData.fromJson(json['current'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CurrentWeatherDataImplToJson(
        _$CurrentWeatherDataImpl instance) =>
    <String, dynamic>{
      'location': instance.location,
      'current': instance.current,
    };
