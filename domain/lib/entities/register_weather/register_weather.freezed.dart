// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RegisterWeather _$RegisterWeatherFromJson(Map<String, dynamic> json) {
  return _RegisterWeather.fromJson(json);
}

/// @nodoc
mixin _$RegisterWeather {
  String get email => throw _privateConstructorUsedError;
  bool get isConfirmed => throw _privateConstructorUsedError;

  /// Serializes this RegisterWeather to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RegisterWeather
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegisterWeatherCopyWith<RegisterWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterWeatherCopyWith<$Res> {
  factory $RegisterWeatherCopyWith(
          RegisterWeather value, $Res Function(RegisterWeather) then) =
      _$RegisterWeatherCopyWithImpl<$Res, RegisterWeather>;
  @useResult
  $Res call({String email, bool isConfirmed});
}

/// @nodoc
class _$RegisterWeatherCopyWithImpl<$Res, $Val extends RegisterWeather>
    implements $RegisterWeatherCopyWith<$Res> {
  _$RegisterWeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterWeather
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? isConfirmed = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      isConfirmed: null == isConfirmed
          ? _value.isConfirmed
          : isConfirmed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterWeatherImplCopyWith<$Res>
    implements $RegisterWeatherCopyWith<$Res> {
  factory _$$RegisterWeatherImplCopyWith(_$RegisterWeatherImpl value,
          $Res Function(_$RegisterWeatherImpl) then) =
      __$$RegisterWeatherImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, bool isConfirmed});
}

/// @nodoc
class __$$RegisterWeatherImplCopyWithImpl<$Res>
    extends _$RegisterWeatherCopyWithImpl<$Res, _$RegisterWeatherImpl>
    implements _$$RegisterWeatherImplCopyWith<$Res> {
  __$$RegisterWeatherImplCopyWithImpl(
      _$RegisterWeatherImpl _value, $Res Function(_$RegisterWeatherImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterWeather
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? isConfirmed = null,
  }) {
    return _then(_$RegisterWeatherImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      isConfirmed: null == isConfirmed
          ? _value.isConfirmed
          : isConfirmed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegisterWeatherImpl implements _RegisterWeather {
  const _$RegisterWeatherImpl({this.email = '', this.isConfirmed = false});

  factory _$RegisterWeatherImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegisterWeatherImplFromJson(json);

  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final bool isConfirmed;

  @override
  String toString() {
    return 'RegisterWeather(email: $email, isConfirmed: $isConfirmed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterWeatherImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.isConfirmed, isConfirmed) ||
                other.isConfirmed == isConfirmed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, isConfirmed);

  /// Create a copy of RegisterWeather
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterWeatherImplCopyWith<_$RegisterWeatherImpl> get copyWith =>
      __$$RegisterWeatherImplCopyWithImpl<_$RegisterWeatherImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegisterWeatherImplToJson(
      this,
    );
  }
}

abstract class _RegisterWeather implements RegisterWeather {
  const factory _RegisterWeather({final String email, final bool isConfirmed}) =
      _$RegisterWeatherImpl;

  factory _RegisterWeather.fromJson(Map<String, dynamic> json) =
      _$RegisterWeatherImpl.fromJson;

  @override
  String get email;
  @override
  bool get isConfirmed;

  /// Create a copy of RegisterWeather
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterWeatherImplCopyWith<_$RegisterWeatherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
