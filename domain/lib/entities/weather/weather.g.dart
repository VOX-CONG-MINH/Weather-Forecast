// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherImpl _$$WeatherImplFromJson(Map<String, dynamic> json) =>
    _$WeatherImpl(
      name: json['name'] as String? ?? '',
      day: json['day'] as String? ?? '',
      time: json['time'] as String? ?? '',
      temperature: (json['temperature'] as num?)?.toDouble() ?? 0.0,
      condition: json['condition'] as String? ?? '',
      icon: json['icon'] as String? ?? '',
      windSpeed: (json['windSpeed'] as num?)?.toDouble() ?? 0.0,
      humidity: (json['humidity'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$WeatherImplToJson(_$WeatherImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'day': instance.day,
      'time': instance.time,
      'temperature': instance.temperature,
      'condition': instance.condition,
      'icon': instance.icon,
      'windSpeed': instance.windSpeed,
      'humidity': instance.humidity,
    };
