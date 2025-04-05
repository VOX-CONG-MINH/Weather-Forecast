// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegisterWeatherImpl _$$RegisterWeatherImplFromJson(
        Map<String, dynamic> json) =>
    _$RegisterWeatherImpl(
      email: json['email'] as String? ?? '',
      isConfirmed: json['isConfirmed'] as bool? ?? false,
    );

Map<String, dynamic> _$$RegisterWeatherImplToJson(
        _$RegisterWeatherImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'isConfirmed': instance.isConfirmed,
    };
