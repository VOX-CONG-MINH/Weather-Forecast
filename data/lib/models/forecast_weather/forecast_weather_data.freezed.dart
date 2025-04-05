// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast_weather_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ForecastDayDetail _$ForecastDayDetailFromJson(Map<String, dynamic> json) {
  return _ForecastDayDetail.fromJson(json);
}

/// @nodoc
mixin _$ForecastDayDetail {
  @JsonKey(name: 'avgtemp_c')
  double? get avgTemperature => throw _privateConstructorUsedError;
  @JsonKey(name: 'maxwind_mph')
  double? get maxWindSpeed => throw _privateConstructorUsedError;
  @JsonKey(name: 'avghumidity')
  int? get avgHumidity => throw _privateConstructorUsedError;
  @JsonKey(name: 'condition')
  WeatherCondition? get condition => throw _privateConstructorUsedError;

  /// Serializes this ForecastDayDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ForecastDayDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ForecastDayDetailCopyWith<ForecastDayDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastDayDetailCopyWith<$Res> {
  factory $ForecastDayDetailCopyWith(
          ForecastDayDetail value, $Res Function(ForecastDayDetail) then) =
      _$ForecastDayDetailCopyWithImpl<$Res, ForecastDayDetail>;
  @useResult
  $Res call(
      {@JsonKey(name: 'avgtemp_c') double? avgTemperature,
      @JsonKey(name: 'maxwind_mph') double? maxWindSpeed,
      @JsonKey(name: 'avghumidity') int? avgHumidity,
      @JsonKey(name: 'condition') WeatherCondition? condition});

  $WeatherConditionCopyWith<$Res>? get condition;
}

/// @nodoc
class _$ForecastDayDetailCopyWithImpl<$Res, $Val extends ForecastDayDetail>
    implements $ForecastDayDetailCopyWith<$Res> {
  _$ForecastDayDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ForecastDayDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avgTemperature = freezed,
    Object? maxWindSpeed = freezed,
    Object? avgHumidity = freezed,
    Object? condition = freezed,
  }) {
    return _then(_value.copyWith(
      avgTemperature: freezed == avgTemperature
          ? _value.avgTemperature
          : avgTemperature // ignore: cast_nullable_to_non_nullable
              as double?,
      maxWindSpeed: freezed == maxWindSpeed
          ? _value.maxWindSpeed
          : maxWindSpeed // ignore: cast_nullable_to_non_nullable
              as double?,
      avgHumidity: freezed == avgHumidity
          ? _value.avgHumidity
          : avgHumidity // ignore: cast_nullable_to_non_nullable
              as int?,
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as WeatherCondition?,
    ) as $Val);
  }

  /// Create a copy of ForecastDayDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WeatherConditionCopyWith<$Res>? get condition {
    if (_value.condition == null) {
      return null;
    }

    return $WeatherConditionCopyWith<$Res>(_value.condition!, (value) {
      return _then(_value.copyWith(condition: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ForecastDayDetailImplCopyWith<$Res>
    implements $ForecastDayDetailCopyWith<$Res> {
  factory _$$ForecastDayDetailImplCopyWith(_$ForecastDayDetailImpl value,
          $Res Function(_$ForecastDayDetailImpl) then) =
      __$$ForecastDayDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'avgtemp_c') double? avgTemperature,
      @JsonKey(name: 'maxwind_mph') double? maxWindSpeed,
      @JsonKey(name: 'avghumidity') int? avgHumidity,
      @JsonKey(name: 'condition') WeatherCondition? condition});

  @override
  $WeatherConditionCopyWith<$Res>? get condition;
}

/// @nodoc
class __$$ForecastDayDetailImplCopyWithImpl<$Res>
    extends _$ForecastDayDetailCopyWithImpl<$Res, _$ForecastDayDetailImpl>
    implements _$$ForecastDayDetailImplCopyWith<$Res> {
  __$$ForecastDayDetailImplCopyWithImpl(_$ForecastDayDetailImpl _value,
      $Res Function(_$ForecastDayDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of ForecastDayDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avgTemperature = freezed,
    Object? maxWindSpeed = freezed,
    Object? avgHumidity = freezed,
    Object? condition = freezed,
  }) {
    return _then(_$ForecastDayDetailImpl(
      avgTemperature: freezed == avgTemperature
          ? _value.avgTemperature
          : avgTemperature // ignore: cast_nullable_to_non_nullable
              as double?,
      maxWindSpeed: freezed == maxWindSpeed
          ? _value.maxWindSpeed
          : maxWindSpeed // ignore: cast_nullable_to_non_nullable
              as double?,
      avgHumidity: freezed == avgHumidity
          ? _value.avgHumidity
          : avgHumidity // ignore: cast_nullable_to_non_nullable
              as int?,
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as WeatherCondition?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForecastDayDetailImpl implements _ForecastDayDetail {
  const _$ForecastDayDetailImpl(
      {@JsonKey(name: 'avgtemp_c') this.avgTemperature,
      @JsonKey(name: 'maxwind_mph') this.maxWindSpeed,
      @JsonKey(name: 'avghumidity') this.avgHumidity,
      @JsonKey(name: 'condition') this.condition});

  factory _$ForecastDayDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForecastDayDetailImplFromJson(json);

  @override
  @JsonKey(name: 'avgtemp_c')
  final double? avgTemperature;
  @override
  @JsonKey(name: 'maxwind_mph')
  final double? maxWindSpeed;
  @override
  @JsonKey(name: 'avghumidity')
  final int? avgHumidity;
  @override
  @JsonKey(name: 'condition')
  final WeatherCondition? condition;

  @override
  String toString() {
    return 'ForecastDayDetail(avgTemperature: $avgTemperature, maxWindSpeed: $maxWindSpeed, avgHumidity: $avgHumidity, condition: $condition)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForecastDayDetailImpl &&
            (identical(other.avgTemperature, avgTemperature) ||
                other.avgTemperature == avgTemperature) &&
            (identical(other.maxWindSpeed, maxWindSpeed) ||
                other.maxWindSpeed == maxWindSpeed) &&
            (identical(other.avgHumidity, avgHumidity) ||
                other.avgHumidity == avgHumidity) &&
            (identical(other.condition, condition) ||
                other.condition == condition));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, avgTemperature, maxWindSpeed, avgHumidity, condition);

  /// Create a copy of ForecastDayDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForecastDayDetailImplCopyWith<_$ForecastDayDetailImpl> get copyWith =>
      __$$ForecastDayDetailImplCopyWithImpl<_$ForecastDayDetailImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForecastDayDetailImplToJson(
      this,
    );
  }
}

abstract class _ForecastDayDetail implements ForecastDayDetail {
  const factory _ForecastDayDetail(
          {@JsonKey(name: 'avgtemp_c') final double? avgTemperature,
          @JsonKey(name: 'maxwind_mph') final double? maxWindSpeed,
          @JsonKey(name: 'avghumidity') final int? avgHumidity,
          @JsonKey(name: 'condition') final WeatherCondition? condition}) =
      _$ForecastDayDetailImpl;

  factory _ForecastDayDetail.fromJson(Map<String, dynamic> json) =
      _$ForecastDayDetailImpl.fromJson;

  @override
  @JsonKey(name: 'avgtemp_c')
  double? get avgTemperature;
  @override
  @JsonKey(name: 'maxwind_mph')
  double? get maxWindSpeed;
  @override
  @JsonKey(name: 'avghumidity')
  int? get avgHumidity;
  @override
  @JsonKey(name: 'condition')
  WeatherCondition? get condition;

  /// Create a copy of ForecastDayDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForecastDayDetailImplCopyWith<_$ForecastDayDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ForecastWeatherData _$ForecastWeatherDataFromJson(Map<String, dynamic> json) {
  return _ForecastWeatherData.fromJson(json);
}

/// @nodoc
mixin _$ForecastWeatherData {
  @JsonKey(name: 'date')
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'day')
  ForecastDayDetail? get day => throw _privateConstructorUsedError;

  /// Serializes this ForecastWeatherData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ForecastWeatherData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ForecastWeatherDataCopyWith<ForecastWeatherData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastWeatherDataCopyWith<$Res> {
  factory $ForecastWeatherDataCopyWith(
          ForecastWeatherData value, $Res Function(ForecastWeatherData) then) =
      _$ForecastWeatherDataCopyWithImpl<$Res, ForecastWeatherData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'date') String? date,
      @JsonKey(name: 'day') ForecastDayDetail? day});

  $ForecastDayDetailCopyWith<$Res>? get day;
}

/// @nodoc
class _$ForecastWeatherDataCopyWithImpl<$Res, $Val extends ForecastWeatherData>
    implements $ForecastWeatherDataCopyWith<$Res> {
  _$ForecastWeatherDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ForecastWeatherData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? day = freezed,
  }) {
    return _then(_value.copyWith(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as ForecastDayDetail?,
    ) as $Val);
  }

  /// Create a copy of ForecastWeatherData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ForecastDayDetailCopyWith<$Res>? get day {
    if (_value.day == null) {
      return null;
    }

    return $ForecastDayDetailCopyWith<$Res>(_value.day!, (value) {
      return _then(_value.copyWith(day: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ForecastWeatherDataImplCopyWith<$Res>
    implements $ForecastWeatherDataCopyWith<$Res> {
  factory _$$ForecastWeatherDataImplCopyWith(_$ForecastWeatherDataImpl value,
          $Res Function(_$ForecastWeatherDataImpl) then) =
      __$$ForecastWeatherDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'date') String? date,
      @JsonKey(name: 'day') ForecastDayDetail? day});

  @override
  $ForecastDayDetailCopyWith<$Res>? get day;
}

/// @nodoc
class __$$ForecastWeatherDataImplCopyWithImpl<$Res>
    extends _$ForecastWeatherDataCopyWithImpl<$Res, _$ForecastWeatherDataImpl>
    implements _$$ForecastWeatherDataImplCopyWith<$Res> {
  __$$ForecastWeatherDataImplCopyWithImpl(_$ForecastWeatherDataImpl _value,
      $Res Function(_$ForecastWeatherDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ForecastWeatherData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? day = freezed,
  }) {
    return _then(_$ForecastWeatherDataImpl(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as ForecastDayDetail?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ForecastWeatherDataImpl implements _ForecastWeatherData {
  const _$ForecastWeatherDataImpl(
      {@JsonKey(name: 'date') this.date, @JsonKey(name: 'day') this.day});

  factory _$ForecastWeatherDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ForecastWeatherDataImplFromJson(json);

  @override
  @JsonKey(name: 'date')
  final String? date;
  @override
  @JsonKey(name: 'day')
  final ForecastDayDetail? day;

  @override
  String toString() {
    return 'ForecastWeatherData(date: $date, day: $day)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForecastWeatherDataImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.day, day) || other.day == day));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, date, day);

  /// Create a copy of ForecastWeatherData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForecastWeatherDataImplCopyWith<_$ForecastWeatherDataImpl> get copyWith =>
      __$$ForecastWeatherDataImplCopyWithImpl<_$ForecastWeatherDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ForecastWeatherDataImplToJson(
      this,
    );
  }
}

abstract class _ForecastWeatherData implements ForecastWeatherData {
  const factory _ForecastWeatherData(
          {@JsonKey(name: 'date') final String? date,
          @JsonKey(name: 'day') final ForecastDayDetail? day}) =
      _$ForecastWeatherDataImpl;

  factory _ForecastWeatherData.fromJson(Map<String, dynamic> json) =
      _$ForecastWeatherDataImpl.fromJson;

  @override
  @JsonKey(name: 'date')
  String? get date;
  @override
  @JsonKey(name: 'day')
  ForecastDayDetail? get day;

  /// Create a copy of ForecastWeatherData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForecastWeatherDataImplCopyWith<_$ForecastWeatherDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
