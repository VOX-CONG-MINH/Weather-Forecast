// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_weather_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeatherCondition _$WeatherConditionFromJson(Map<String, dynamic> json) {
  return _WeatherCondition.fromJson(json);
}

/// @nodoc
mixin _$WeatherCondition {
  @JsonKey(name: 'text')
  String? get text => throw _privateConstructorUsedError;
  @JsonKey(name: 'icon')
  String? get icon => throw _privateConstructorUsedError;

  /// Serializes this WeatherCondition to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WeatherCondition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeatherConditionCopyWith<WeatherCondition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherConditionCopyWith<$Res> {
  factory $WeatherConditionCopyWith(
          WeatherCondition value, $Res Function(WeatherCondition) then) =
      _$WeatherConditionCopyWithImpl<$Res, WeatherCondition>;
  @useResult
  $Res call(
      {@JsonKey(name: 'text') String? text,
      @JsonKey(name: 'icon') String? icon});
}

/// @nodoc
class _$WeatherConditionCopyWithImpl<$Res, $Val extends WeatherCondition>
    implements $WeatherConditionCopyWith<$Res> {
  _$WeatherConditionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeatherCondition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? icon = freezed,
  }) {
    return _then(_value.copyWith(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherConditionImplCopyWith<$Res>
    implements $WeatherConditionCopyWith<$Res> {
  factory _$$WeatherConditionImplCopyWith(_$WeatherConditionImpl value,
          $Res Function(_$WeatherConditionImpl) then) =
      __$$WeatherConditionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'text') String? text,
      @JsonKey(name: 'icon') String? icon});
}

/// @nodoc
class __$$WeatherConditionImplCopyWithImpl<$Res>
    extends _$WeatherConditionCopyWithImpl<$Res, _$WeatherConditionImpl>
    implements _$$WeatherConditionImplCopyWith<$Res> {
  __$$WeatherConditionImplCopyWithImpl(_$WeatherConditionImpl _value,
      $Res Function(_$WeatherConditionImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeatherCondition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
    Object? icon = freezed,
  }) {
    return _then(_$WeatherConditionImpl(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherConditionImpl implements _WeatherCondition {
  const _$WeatherConditionImpl(
      {@JsonKey(name: 'text') this.text, @JsonKey(name: 'icon') this.icon});

  factory _$WeatherConditionImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherConditionImplFromJson(json);

  @override
  @JsonKey(name: 'text')
  final String? text;
  @override
  @JsonKey(name: 'icon')
  final String? icon;

  @override
  String toString() {
    return 'WeatherCondition(text: $text, icon: $icon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherConditionImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, text, icon);

  /// Create a copy of WeatherCondition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherConditionImplCopyWith<_$WeatherConditionImpl> get copyWith =>
      __$$WeatherConditionImplCopyWithImpl<_$WeatherConditionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherConditionImplToJson(
      this,
    );
  }
}

abstract class _WeatherCondition implements WeatherCondition {
  const factory _WeatherCondition(
      {@JsonKey(name: 'text') final String? text,
      @JsonKey(name: 'icon') final String? icon}) = _$WeatherConditionImpl;

  factory _WeatherCondition.fromJson(Map<String, dynamic> json) =
      _$WeatherConditionImpl.fromJson;

  @override
  @JsonKey(name: 'text')
  String? get text;
  @override
  @JsonKey(name: 'icon')
  String? get icon;

  /// Create a copy of WeatherCondition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeatherConditionImplCopyWith<_$WeatherConditionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LocationData _$LocationDataFromJson(Map<String, dynamic> json) {
  return _LocationData.fromJson(json);
}

/// @nodoc
mixin _$LocationData {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'localtime')
  String? get localtime => throw _privateConstructorUsedError;

  /// Serializes this LocationData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LocationData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationDataCopyWith<LocationData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationDataCopyWith<$Res> {
  factory $LocationDataCopyWith(
          LocationData value, $Res Function(LocationData) then) =
      _$LocationDataCopyWithImpl<$Res, LocationData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'localtime') String? localtime});
}

/// @nodoc
class _$LocationDataCopyWithImpl<$Res, $Val extends LocationData>
    implements $LocationDataCopyWith<$Res> {
  _$LocationDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocationData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? localtime = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      localtime: freezed == localtime
          ? _value.localtime
          : localtime // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationDataImplCopyWith<$Res>
    implements $LocationDataCopyWith<$Res> {
  factory _$$LocationDataImplCopyWith(
          _$LocationDataImpl value, $Res Function(_$LocationDataImpl) then) =
      __$$LocationDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'localtime') String? localtime});
}

/// @nodoc
class __$$LocationDataImplCopyWithImpl<$Res>
    extends _$LocationDataCopyWithImpl<$Res, _$LocationDataImpl>
    implements _$$LocationDataImplCopyWith<$Res> {
  __$$LocationDataImplCopyWithImpl(
      _$LocationDataImpl _value, $Res Function(_$LocationDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocationData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? localtime = freezed,
  }) {
    return _then(_$LocationDataImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      localtime: freezed == localtime
          ? _value.localtime
          : localtime // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationDataImpl implements _LocationData {
  const _$LocationDataImpl(
      {@JsonKey(name: 'name') this.name,
      @JsonKey(name: 'localtime') this.localtime});

  factory _$LocationDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationDataImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'localtime')
  final String? localtime;

  @override
  String toString() {
    return 'LocationData(name: $name, localtime: $localtime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationDataImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.localtime, localtime) ||
                other.localtime == localtime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, localtime);

  /// Create a copy of LocationData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationDataImplCopyWith<_$LocationDataImpl> get copyWith =>
      __$$LocationDataImplCopyWithImpl<_$LocationDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationDataImplToJson(
      this,
    );
  }
}

abstract class _LocationData implements LocationData {
  const factory _LocationData(
          {@JsonKey(name: 'name') final String? name,
          @JsonKey(name: 'localtime') final String? localtime}) =
      _$LocationDataImpl;

  factory _LocationData.fromJson(Map<String, dynamic> json) =
      _$LocationDataImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'localtime')
  String? get localtime;

  /// Create a copy of LocationData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationDataImplCopyWith<_$LocationDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CurrentData _$CurrentDataFromJson(Map<String, dynamic> json) {
  return _CurrentData.fromJson(json);
}

/// @nodoc
mixin _$CurrentData {
  @JsonKey(name: 'temp_c')
  double? get temperature => throw _privateConstructorUsedError;
  @JsonKey(name: 'condition')
  WeatherCondition? get condition => throw _privateConstructorUsedError;
  @JsonKey(name: 'wind_mph')
  double? get windSpeed => throw _privateConstructorUsedError;
  @JsonKey(name: 'humidity')
  int? get humidity => throw _privateConstructorUsedError;

  /// Serializes this CurrentData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CurrentData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CurrentDataCopyWith<CurrentData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentDataCopyWith<$Res> {
  factory $CurrentDataCopyWith(
          CurrentData value, $Res Function(CurrentData) then) =
      _$CurrentDataCopyWithImpl<$Res, CurrentData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'temp_c') double? temperature,
      @JsonKey(name: 'condition') WeatherCondition? condition,
      @JsonKey(name: 'wind_mph') double? windSpeed,
      @JsonKey(name: 'humidity') int? humidity});

  $WeatherConditionCopyWith<$Res>? get condition;
}

/// @nodoc
class _$CurrentDataCopyWithImpl<$Res, $Val extends CurrentData>
    implements $CurrentDataCopyWith<$Res> {
  _$CurrentDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CurrentData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temperature = freezed,
    Object? condition = freezed,
    Object? windSpeed = freezed,
    Object? humidity = freezed,
  }) {
    return _then(_value.copyWith(
      temperature: freezed == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double?,
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as WeatherCondition?,
      windSpeed: freezed == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double?,
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of CurrentData
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
abstract class _$$CurrentDataImplCopyWith<$Res>
    implements $CurrentDataCopyWith<$Res> {
  factory _$$CurrentDataImplCopyWith(
          _$CurrentDataImpl value, $Res Function(_$CurrentDataImpl) then) =
      __$$CurrentDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'temp_c') double? temperature,
      @JsonKey(name: 'condition') WeatherCondition? condition,
      @JsonKey(name: 'wind_mph') double? windSpeed,
      @JsonKey(name: 'humidity') int? humidity});

  @override
  $WeatherConditionCopyWith<$Res>? get condition;
}

/// @nodoc
class __$$CurrentDataImplCopyWithImpl<$Res>
    extends _$CurrentDataCopyWithImpl<$Res, _$CurrentDataImpl>
    implements _$$CurrentDataImplCopyWith<$Res> {
  __$$CurrentDataImplCopyWithImpl(
      _$CurrentDataImpl _value, $Res Function(_$CurrentDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of CurrentData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temperature = freezed,
    Object? condition = freezed,
    Object? windSpeed = freezed,
    Object? humidity = freezed,
  }) {
    return _then(_$CurrentDataImpl(
      temperature: freezed == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double?,
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as WeatherCondition?,
      windSpeed: freezed == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as double?,
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrentDataImpl implements _CurrentData {
  const _$CurrentDataImpl(
      {@JsonKey(name: 'temp_c') this.temperature,
      @JsonKey(name: 'condition') this.condition,
      @JsonKey(name: 'wind_mph') this.windSpeed,
      @JsonKey(name: 'humidity') this.humidity});

  factory _$CurrentDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrentDataImplFromJson(json);

  @override
  @JsonKey(name: 'temp_c')
  final double? temperature;
  @override
  @JsonKey(name: 'condition')
  final WeatherCondition? condition;
  @override
  @JsonKey(name: 'wind_mph')
  final double? windSpeed;
  @override
  @JsonKey(name: 'humidity')
  final int? humidity;

  @override
  String toString() {
    return 'CurrentData(temperature: $temperature, condition: $condition, windSpeed: $windSpeed, humidity: $humidity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentDataImpl &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.windSpeed, windSpeed) ||
                other.windSpeed == windSpeed) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, temperature, condition, windSpeed, humidity);

  /// Create a copy of CurrentData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentDataImplCopyWith<_$CurrentDataImpl> get copyWith =>
      __$$CurrentDataImplCopyWithImpl<_$CurrentDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrentDataImplToJson(
      this,
    );
  }
}

abstract class _CurrentData implements CurrentData {
  const factory _CurrentData(
      {@JsonKey(name: 'temp_c') final double? temperature,
      @JsonKey(name: 'condition') final WeatherCondition? condition,
      @JsonKey(name: 'wind_mph') final double? windSpeed,
      @JsonKey(name: 'humidity') final int? humidity}) = _$CurrentDataImpl;

  factory _CurrentData.fromJson(Map<String, dynamic> json) =
      _$CurrentDataImpl.fromJson;

  @override
  @JsonKey(name: 'temp_c')
  double? get temperature;
  @override
  @JsonKey(name: 'condition')
  WeatherCondition? get condition;
  @override
  @JsonKey(name: 'wind_mph')
  double? get windSpeed;
  @override
  @JsonKey(name: 'humidity')
  int? get humidity;

  /// Create a copy of CurrentData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CurrentDataImplCopyWith<_$CurrentDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CurrentWeatherData _$CurrentWeatherDataFromJson(Map<String, dynamic> json) {
  return _CurrentWeatherData.fromJson(json);
}

/// @nodoc
mixin _$CurrentWeatherData {
  @JsonKey(name: 'location')
  LocationData? get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'current')
  CurrentData? get current => throw _privateConstructorUsedError;

  /// Serializes this CurrentWeatherData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CurrentWeatherData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CurrentWeatherDataCopyWith<CurrentWeatherData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentWeatherDataCopyWith<$Res> {
  factory $CurrentWeatherDataCopyWith(
          CurrentWeatherData value, $Res Function(CurrentWeatherData) then) =
      _$CurrentWeatherDataCopyWithImpl<$Res, CurrentWeatherData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'location') LocationData? location,
      @JsonKey(name: 'current') CurrentData? current});

  $LocationDataCopyWith<$Res>? get location;
  $CurrentDataCopyWith<$Res>? get current;
}

/// @nodoc
class _$CurrentWeatherDataCopyWithImpl<$Res, $Val extends CurrentWeatherData>
    implements $CurrentWeatherDataCopyWith<$Res> {
  _$CurrentWeatherDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CurrentWeatherData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = freezed,
    Object? current = freezed,
  }) {
    return _then(_value.copyWith(
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationData?,
      current: freezed == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as CurrentData?,
    ) as $Val);
  }

  /// Create a copy of CurrentWeatherData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationDataCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LocationDataCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }

  /// Create a copy of CurrentWeatherData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CurrentDataCopyWith<$Res>? get current {
    if (_value.current == null) {
      return null;
    }

    return $CurrentDataCopyWith<$Res>(_value.current!, (value) {
      return _then(_value.copyWith(current: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CurrentWeatherDataImplCopyWith<$Res>
    implements $CurrentWeatherDataCopyWith<$Res> {
  factory _$$CurrentWeatherDataImplCopyWith(_$CurrentWeatherDataImpl value,
          $Res Function(_$CurrentWeatherDataImpl) then) =
      __$$CurrentWeatherDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'location') LocationData? location,
      @JsonKey(name: 'current') CurrentData? current});

  @override
  $LocationDataCopyWith<$Res>? get location;
  @override
  $CurrentDataCopyWith<$Res>? get current;
}

/// @nodoc
class __$$CurrentWeatherDataImplCopyWithImpl<$Res>
    extends _$CurrentWeatherDataCopyWithImpl<$Res, _$CurrentWeatherDataImpl>
    implements _$$CurrentWeatherDataImplCopyWith<$Res> {
  __$$CurrentWeatherDataImplCopyWithImpl(_$CurrentWeatherDataImpl _value,
      $Res Function(_$CurrentWeatherDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of CurrentWeatherData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = freezed,
    Object? current = freezed,
  }) {
    return _then(_$CurrentWeatherDataImpl(
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationData?,
      current: freezed == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as CurrentData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrentWeatherDataImpl implements _CurrentWeatherData {
  const _$CurrentWeatherDataImpl(
      {@JsonKey(name: 'location') this.location,
      @JsonKey(name: 'current') this.current});

  factory _$CurrentWeatherDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrentWeatherDataImplFromJson(json);

  @override
  @JsonKey(name: 'location')
  final LocationData? location;
  @override
  @JsonKey(name: 'current')
  final CurrentData? current;

  @override
  String toString() {
    return 'CurrentWeatherData(location: $location, current: $current)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentWeatherDataImpl &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.current, current) || other.current == current));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, location, current);

  /// Create a copy of CurrentWeatherData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentWeatherDataImplCopyWith<_$CurrentWeatherDataImpl> get copyWith =>
      __$$CurrentWeatherDataImplCopyWithImpl<_$CurrentWeatherDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrentWeatherDataImplToJson(
      this,
    );
  }
}

abstract class _CurrentWeatherData implements CurrentWeatherData {
  const factory _CurrentWeatherData(
          {@JsonKey(name: 'location') final LocationData? location,
          @JsonKey(name: 'current') final CurrentData? current}) =
      _$CurrentWeatherDataImpl;

  factory _CurrentWeatherData.fromJson(Map<String, dynamic> json) =
      _$CurrentWeatherDataImpl.fromJson;

  @override
  @JsonKey(name: 'location')
  LocationData? get location;
  @override
  @JsonKey(name: 'current')
  CurrentData? get current;

  /// Create a copy of CurrentWeatherData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CurrentWeatherDataImplCopyWith<_$CurrentWeatherDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
