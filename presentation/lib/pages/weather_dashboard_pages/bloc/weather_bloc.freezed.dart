// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignInSuccess {}

/// @nodoc
abstract class $SignInSuccessCopyWith<$Res> {
  factory $SignInSuccessCopyWith(
          SignInSuccess value, $Res Function(SignInSuccess) then) =
      _$SignInSuccessCopyWithImpl<$Res, SignInSuccess>;
}

/// @nodoc
class _$SignInSuccessCopyWithImpl<$Res, $Val extends SignInSuccess>
    implements $SignInSuccessCopyWith<$Res> {
  _$SignInSuccessCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignInSuccess
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SignInSuccessImplCopyWith<$Res> {
  factory _$$SignInSuccessImplCopyWith(
          _$SignInSuccessImpl value, $Res Function(_$SignInSuccessImpl) then) =
      __$$SignInSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInSuccessImplCopyWithImpl<$Res>
    extends _$SignInSuccessCopyWithImpl<$Res, _$SignInSuccessImpl>
    implements _$$SignInSuccessImplCopyWith<$Res> {
  __$$SignInSuccessImplCopyWithImpl(
      _$SignInSuccessImpl _value, $Res Function(_$SignInSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInSuccess
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignInSuccessImpl implements _SignInSuccess {
  const _$SignInSuccessImpl();

  @override
  String toString() {
    return 'SignInSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignInSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _SignInSuccess implements SignInSuccess {
  const factory _SignInSuccess() = _$SignInSuccessImpl;
}

/// @nodoc
mixin _$SignOutUser {}

/// @nodoc
abstract class $SignOutUserCopyWith<$Res> {
  factory $SignOutUserCopyWith(
          SignOutUser value, $Res Function(SignOutUser) then) =
      _$SignOutUserCopyWithImpl<$Res, SignOutUser>;
}

/// @nodoc
class _$SignOutUserCopyWithImpl<$Res, $Val extends SignOutUser>
    implements $SignOutUserCopyWith<$Res> {
  _$SignOutUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignOutUser
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SignOutUserImplCopyWith<$Res> {
  factory _$$SignOutUserImplCopyWith(
          _$SignOutUserImpl value, $Res Function(_$SignOutUserImpl) then) =
      __$$SignOutUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignOutUserImplCopyWithImpl<$Res>
    extends _$SignOutUserCopyWithImpl<$Res, _$SignOutUserImpl>
    implements _$$SignOutUserImplCopyWith<$Res> {
  __$$SignOutUserImplCopyWithImpl(
      _$SignOutUserImpl _value, $Res Function(_$SignOutUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignOutUser
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignOutUserImpl implements _SignOutUser {
  const _$SignOutUserImpl();

  @override
  String toString() {
    return 'SignOutUser()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignOutUserImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _SignOutUser implements SignOutUser {
  const factory _SignOutUser() = _$SignOutUserImpl;
}

/// @nodoc
mixin _$LoadCurrentWeather {
  String get city => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;

  /// Create a copy of LoadCurrentWeather
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoadCurrentWeatherCopyWith<LoadCurrentWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadCurrentWeatherCopyWith<$Res> {
  factory $LoadCurrentWeatherCopyWith(
          LoadCurrentWeather value, $Res Function(LoadCurrentWeather) then) =
      _$LoadCurrentWeatherCopyWithImpl<$Res, LoadCurrentWeather>;
  @useResult
  $Res call({String city, User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$LoadCurrentWeatherCopyWithImpl<$Res, $Val extends LoadCurrentWeather>
    implements $LoadCurrentWeatherCopyWith<$Res> {
  _$LoadCurrentWeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoadCurrentWeather
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ) as $Val);
  }

  /// Create a copy of LoadCurrentWeather
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoadCurrentWeatherImplCopyWith<$Res>
    implements $LoadCurrentWeatherCopyWith<$Res> {
  factory _$$LoadCurrentWeatherImplCopyWith(_$LoadCurrentWeatherImpl value,
          $Res Function(_$LoadCurrentWeatherImpl) then) =
      __$$LoadCurrentWeatherImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String city, User user});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$LoadCurrentWeatherImplCopyWithImpl<$Res>
    extends _$LoadCurrentWeatherCopyWithImpl<$Res, _$LoadCurrentWeatherImpl>
    implements _$$LoadCurrentWeatherImplCopyWith<$Res> {
  __$$LoadCurrentWeatherImplCopyWithImpl(_$LoadCurrentWeatherImpl _value,
      $Res Function(_$LoadCurrentWeatherImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoadCurrentWeather
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = null,
    Object? user = null,
  }) {
    return _then(_$LoadCurrentWeatherImpl(
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$LoadCurrentWeatherImpl implements _LoadCurrentWeather {
  const _$LoadCurrentWeatherImpl(
      {required this.city, this.user = const User()});

  @override
  final String city;
  @override
  @JsonKey()
  final User user;

  @override
  String toString() {
    return 'LoadCurrentWeather(city: $city, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadCurrentWeatherImpl &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, city, user);

  /// Create a copy of LoadCurrentWeather
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadCurrentWeatherImplCopyWith<_$LoadCurrentWeatherImpl> get copyWith =>
      __$$LoadCurrentWeatherImplCopyWithImpl<_$LoadCurrentWeatherImpl>(
          this, _$identity);
}

abstract class _LoadCurrentWeather implements LoadCurrentWeather {
  const factory _LoadCurrentWeather(
      {required final String city, final User user}) = _$LoadCurrentWeatherImpl;

  @override
  String get city;
  @override
  User get user;

  /// Create a copy of LoadCurrentWeather
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadCurrentWeatherImplCopyWith<_$LoadCurrentWeatherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoadForecastWeather {
  String get city => throw _privateConstructorUsedError;

  /// Create a copy of LoadForecastWeather
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoadForecastWeatherCopyWith<LoadForecastWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadForecastWeatherCopyWith<$Res> {
  factory $LoadForecastWeatherCopyWith(
          LoadForecastWeather value, $Res Function(LoadForecastWeather) then) =
      _$LoadForecastWeatherCopyWithImpl<$Res, LoadForecastWeather>;
  @useResult
  $Res call({String city});
}

/// @nodoc
class _$LoadForecastWeatherCopyWithImpl<$Res, $Val extends LoadForecastWeather>
    implements $LoadForecastWeatherCopyWith<$Res> {
  _$LoadForecastWeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoadForecastWeather
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = null,
  }) {
    return _then(_value.copyWith(
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadForecastWeatherImplCopyWith<$Res>
    implements $LoadForecastWeatherCopyWith<$Res> {
  factory _$$LoadForecastWeatherImplCopyWith(_$LoadForecastWeatherImpl value,
          $Res Function(_$LoadForecastWeatherImpl) then) =
      __$$LoadForecastWeatherImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String city});
}

/// @nodoc
class __$$LoadForecastWeatherImplCopyWithImpl<$Res>
    extends _$LoadForecastWeatherCopyWithImpl<$Res, _$LoadForecastWeatherImpl>
    implements _$$LoadForecastWeatherImplCopyWith<$Res> {
  __$$LoadForecastWeatherImplCopyWithImpl(_$LoadForecastWeatherImpl _value,
      $Res Function(_$LoadForecastWeatherImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoadForecastWeather
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = null,
  }) {
    return _then(_$LoadForecastWeatherImpl(
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadForecastWeatherImpl implements _LoadForecastWeather {
  const _$LoadForecastWeatherImpl({required this.city});

  @override
  final String city;

  @override
  String toString() {
    return 'LoadForecastWeather(city: $city)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadForecastWeatherImpl &&
            (identical(other.city, city) || other.city == city));
  }

  @override
  int get hashCode => Object.hash(runtimeType, city);

  /// Create a copy of LoadForecastWeather
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadForecastWeatherImplCopyWith<_$LoadForecastWeatherImpl> get copyWith =>
      __$$LoadForecastWeatherImplCopyWithImpl<_$LoadForecastWeatherImpl>(
          this, _$identity);
}

abstract class _LoadForecastWeather implements LoadForecastWeather {
  const factory _LoadForecastWeather({required final String city}) =
      _$LoadForecastWeatherImpl;

  @override
  String get city;

  /// Create a copy of LoadForecastWeather
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadForecastWeatherImplCopyWith<_$LoadForecastWeatherImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoadMoreForecast {}

/// @nodoc
abstract class $LoadMoreForecastCopyWith<$Res> {
  factory $LoadMoreForecastCopyWith(
          LoadMoreForecast value, $Res Function(LoadMoreForecast) then) =
      _$LoadMoreForecastCopyWithImpl<$Res, LoadMoreForecast>;
}

/// @nodoc
class _$LoadMoreForecastCopyWithImpl<$Res, $Val extends LoadMoreForecast>
    implements $LoadMoreForecastCopyWith<$Res> {
  _$LoadMoreForecastCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoadMoreForecast
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadMoreForecastImplCopyWith<$Res> {
  factory _$$LoadMoreForecastImplCopyWith(_$LoadMoreForecastImpl value,
          $Res Function(_$LoadMoreForecastImpl) then) =
      __$$LoadMoreForecastImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadMoreForecastImplCopyWithImpl<$Res>
    extends _$LoadMoreForecastCopyWithImpl<$Res, _$LoadMoreForecastImpl>
    implements _$$LoadMoreForecastImplCopyWith<$Res> {
  __$$LoadMoreForecastImplCopyWithImpl(_$LoadMoreForecastImpl _value,
      $Res Function(_$LoadMoreForecastImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoadMoreForecast
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadMoreForecastImpl implements _LoadMoreForecast {
  const _$LoadMoreForecastImpl();

  @override
  String toString() {
    return 'LoadMoreForecast()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadMoreForecastImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _LoadMoreForecast implements LoadMoreForecast {
  const factory _LoadMoreForecast() = _$LoadMoreForecastImpl;
}

/// @nodoc
mixin _$ConfirmSubscription {
  String get email => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;

  /// Create a copy of ConfirmSubscription
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConfirmSubscriptionCopyWith<ConfirmSubscription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmSubscriptionCopyWith<$Res> {
  factory $ConfirmSubscriptionCopyWith(
          ConfirmSubscription value, $Res Function(ConfirmSubscription) then) =
      _$ConfirmSubscriptionCopyWithImpl<$Res, ConfirmSubscription>;
  @useResult
  $Res call({String email, String city});
}

/// @nodoc
class _$ConfirmSubscriptionCopyWithImpl<$Res, $Val extends ConfirmSubscription>
    implements $ConfirmSubscriptionCopyWith<$Res> {
  _$ConfirmSubscriptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConfirmSubscription
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? city = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConfirmSubscriptionImplCopyWith<$Res>
    implements $ConfirmSubscriptionCopyWith<$Res> {
  factory _$$ConfirmSubscriptionImplCopyWith(_$ConfirmSubscriptionImpl value,
          $Res Function(_$ConfirmSubscriptionImpl) then) =
      __$$ConfirmSubscriptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String city});
}

/// @nodoc
class __$$ConfirmSubscriptionImplCopyWithImpl<$Res>
    extends _$ConfirmSubscriptionCopyWithImpl<$Res, _$ConfirmSubscriptionImpl>
    implements _$$ConfirmSubscriptionImplCopyWith<$Res> {
  __$$ConfirmSubscriptionImplCopyWithImpl(_$ConfirmSubscriptionImpl _value,
      $Res Function(_$ConfirmSubscriptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConfirmSubscription
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? city = null,
  }) {
    return _then(_$ConfirmSubscriptionImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConfirmSubscriptionImpl implements _ConfirmSubscription {
  const _$ConfirmSubscriptionImpl({required this.email, required this.city});

  @override
  final String email;
  @override
  final String city;

  @override
  String toString() {
    return 'ConfirmSubscription(email: $email, city: $city)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmSubscriptionImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.city, city) || other.city == city));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, city);

  /// Create a copy of ConfirmSubscription
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmSubscriptionImplCopyWith<_$ConfirmSubscriptionImpl> get copyWith =>
      __$$ConfirmSubscriptionImplCopyWithImpl<_$ConfirmSubscriptionImpl>(
          this, _$identity);
}

abstract class _ConfirmSubscription implements ConfirmSubscription {
  const factory _ConfirmSubscription(
      {required final String email,
      required final String city}) = _$ConfirmSubscriptionImpl;

  @override
  String get email;
  @override
  String get city;

  /// Create a copy of ConfirmSubscription
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConfirmSubscriptionImplCopyWith<_$ConfirmSubscriptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WeatherState {
  WeatherLoadState get loadState => throw _privateConstructorUsedError;
  HistoryLoadState get historyloadState => throw _privateConstructorUsedError;
  Weather get currentWeather => throw _privateConstructorUsedError;
  List<Weather> get forecastWeather => throw _privateConstructorUsedError;
  int get displayedCount => throw _privateConstructorUsedError;
  bool get isLoadingMore => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  Map<String, Weather> get historyWeather => throw _privateConstructorUsedError;
  bool get isAuthenticated => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError; // Store user’s name
  SubscriptionStatus get subscriptionStatus =>
      throw _privateConstructorUsedError;
  String get subscriptionError => throw _privateConstructorUsedError;

  /// Create a copy of WeatherState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeatherStateCopyWith<WeatherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherStateCopyWith<$Res> {
  factory $WeatherStateCopyWith(
          WeatherState value, $Res Function(WeatherState) then) =
      _$WeatherStateCopyWithImpl<$Res, WeatherState>;
  @useResult
  $Res call(
      {WeatherLoadState loadState,
      HistoryLoadState historyloadState,
      Weather currentWeather,
      List<Weather> forecastWeather,
      int displayedCount,
      bool isLoadingMore,
      String errorMessage,
      Map<String, Weather> historyWeather,
      bool isAuthenticated,
      User user,
      SubscriptionStatus subscriptionStatus,
      String subscriptionError});

  $WeatherCopyWith<$Res> get currentWeather;
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$WeatherStateCopyWithImpl<$Res, $Val extends WeatherState>
    implements $WeatherStateCopyWith<$Res> {
  _$WeatherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WeatherState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadState = null,
    Object? historyloadState = null,
    Object? currentWeather = null,
    Object? forecastWeather = null,
    Object? displayedCount = null,
    Object? isLoadingMore = null,
    Object? errorMessage = null,
    Object? historyWeather = null,
    Object? isAuthenticated = null,
    Object? user = null,
    Object? subscriptionStatus = null,
    Object? subscriptionError = null,
  }) {
    return _then(_value.copyWith(
      loadState: null == loadState
          ? _value.loadState
          : loadState // ignore: cast_nullable_to_non_nullable
              as WeatherLoadState,
      historyloadState: null == historyloadState
          ? _value.historyloadState
          : historyloadState // ignore: cast_nullable_to_non_nullable
              as HistoryLoadState,
      currentWeather: null == currentWeather
          ? _value.currentWeather
          : currentWeather // ignore: cast_nullable_to_non_nullable
              as Weather,
      forecastWeather: null == forecastWeather
          ? _value.forecastWeather
          : forecastWeather // ignore: cast_nullable_to_non_nullable
              as List<Weather>,
      displayedCount: null == displayedCount
          ? _value.displayedCount
          : displayedCount // ignore: cast_nullable_to_non_nullable
              as int,
      isLoadingMore: null == isLoadingMore
          ? _value.isLoadingMore
          : isLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      historyWeather: null == historyWeather
          ? _value.historyWeather
          : historyWeather // ignore: cast_nullable_to_non_nullable
              as Map<String, Weather>,
      isAuthenticated: null == isAuthenticated
          ? _value.isAuthenticated
          : isAuthenticated // ignore: cast_nullable_to_non_nullable
              as bool,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      subscriptionStatus: null == subscriptionStatus
          ? _value.subscriptionStatus
          : subscriptionStatus // ignore: cast_nullable_to_non_nullable
              as SubscriptionStatus,
      subscriptionError: null == subscriptionError
          ? _value.subscriptionError
          : subscriptionError // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of WeatherState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WeatherCopyWith<$Res> get currentWeather {
    return $WeatherCopyWith<$Res>(_value.currentWeather, (value) {
      return _then(_value.copyWith(currentWeather: value) as $Val);
    });
  }

  /// Create a copy of WeatherState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeatherStateImplCopyWith<$Res>
    implements $WeatherStateCopyWith<$Res> {
  factory _$$WeatherStateImplCopyWith(
          _$WeatherStateImpl value, $Res Function(_$WeatherStateImpl) then) =
      __$$WeatherStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {WeatherLoadState loadState,
      HistoryLoadState historyloadState,
      Weather currentWeather,
      List<Weather> forecastWeather,
      int displayedCount,
      bool isLoadingMore,
      String errorMessage,
      Map<String, Weather> historyWeather,
      bool isAuthenticated,
      User user,
      SubscriptionStatus subscriptionStatus,
      String subscriptionError});

  @override
  $WeatherCopyWith<$Res> get currentWeather;
  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$WeatherStateImplCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$WeatherStateImpl>
    implements _$$WeatherStateImplCopyWith<$Res> {
  __$$WeatherStateImplCopyWithImpl(
      _$WeatherStateImpl _value, $Res Function(_$WeatherStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of WeatherState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadState = null,
    Object? historyloadState = null,
    Object? currentWeather = null,
    Object? forecastWeather = null,
    Object? displayedCount = null,
    Object? isLoadingMore = null,
    Object? errorMessage = null,
    Object? historyWeather = null,
    Object? isAuthenticated = null,
    Object? user = null,
    Object? subscriptionStatus = null,
    Object? subscriptionError = null,
  }) {
    return _then(_$WeatherStateImpl(
      loadState: null == loadState
          ? _value.loadState
          : loadState // ignore: cast_nullable_to_non_nullable
              as WeatherLoadState,
      historyloadState: null == historyloadState
          ? _value.historyloadState
          : historyloadState // ignore: cast_nullable_to_non_nullable
              as HistoryLoadState,
      currentWeather: null == currentWeather
          ? _value.currentWeather
          : currentWeather // ignore: cast_nullable_to_non_nullable
              as Weather,
      forecastWeather: null == forecastWeather
          ? _value._forecastWeather
          : forecastWeather // ignore: cast_nullable_to_non_nullable
              as List<Weather>,
      displayedCount: null == displayedCount
          ? _value.displayedCount
          : displayedCount // ignore: cast_nullable_to_non_nullable
              as int,
      isLoadingMore: null == isLoadingMore
          ? _value.isLoadingMore
          : isLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      historyWeather: null == historyWeather
          ? _value._historyWeather
          : historyWeather // ignore: cast_nullable_to_non_nullable
              as Map<String, Weather>,
      isAuthenticated: null == isAuthenticated
          ? _value.isAuthenticated
          : isAuthenticated // ignore: cast_nullable_to_non_nullable
              as bool,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      subscriptionStatus: null == subscriptionStatus
          ? _value.subscriptionStatus
          : subscriptionStatus // ignore: cast_nullable_to_non_nullable
              as SubscriptionStatus,
      subscriptionError: null == subscriptionError
          ? _value.subscriptionError
          : subscriptionError // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WeatherStateImpl implements _WeatherState {
  const _$WeatherStateImpl(
      {this.loadState = WeatherLoadState.initial,
      this.historyloadState = HistoryLoadState.initial,
      this.currentWeather = const Weather(),
      final List<Weather> forecastWeather = const <Weather>[],
      this.displayedCount = 4,
      this.isLoadingMore = false,
      this.errorMessage = '',
      final Map<String, Weather> historyWeather = const <String, Weather>{},
      this.isAuthenticated = false,
      this.user = const User(),
      this.subscriptionStatus = SubscriptionStatus.initial,
      this.subscriptionError = ''})
      : _forecastWeather = forecastWeather,
        _historyWeather = historyWeather;

  @override
  @JsonKey()
  final WeatherLoadState loadState;
  @override
  @JsonKey()
  final HistoryLoadState historyloadState;
  @override
  @JsonKey()
  final Weather currentWeather;
  final List<Weather> _forecastWeather;
  @override
  @JsonKey()
  List<Weather> get forecastWeather {
    if (_forecastWeather is EqualUnmodifiableListView) return _forecastWeather;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_forecastWeather);
  }

  @override
  @JsonKey()
  final int displayedCount;
  @override
  @JsonKey()
  final bool isLoadingMore;
  @override
  @JsonKey()
  final String errorMessage;
  final Map<String, Weather> _historyWeather;
  @override
  @JsonKey()
  Map<String, Weather> get historyWeather {
    if (_historyWeather is EqualUnmodifiableMapView) return _historyWeather;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_historyWeather);
  }

  @override
  @JsonKey()
  final bool isAuthenticated;
  @override
  @JsonKey()
  final User user;
// Store user’s name
  @override
  @JsonKey()
  final SubscriptionStatus subscriptionStatus;
  @override
  @JsonKey()
  final String subscriptionError;

  @override
  String toString() {
    return 'WeatherState(loadState: $loadState, historyloadState: $historyloadState, currentWeather: $currentWeather, forecastWeather: $forecastWeather, displayedCount: $displayedCount, isLoadingMore: $isLoadingMore, errorMessage: $errorMessage, historyWeather: $historyWeather, isAuthenticated: $isAuthenticated, user: $user, subscriptionStatus: $subscriptionStatus, subscriptionError: $subscriptionError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherStateImpl &&
            (identical(other.loadState, loadState) ||
                other.loadState == loadState) &&
            (identical(other.historyloadState, historyloadState) ||
                other.historyloadState == historyloadState) &&
            (identical(other.currentWeather, currentWeather) ||
                other.currentWeather == currentWeather) &&
            const DeepCollectionEquality()
                .equals(other._forecastWeather, _forecastWeather) &&
            (identical(other.displayedCount, displayedCount) ||
                other.displayedCount == displayedCount) &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                other.isLoadingMore == isLoadingMore) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality()
                .equals(other._historyWeather, _historyWeather) &&
            (identical(other.isAuthenticated, isAuthenticated) ||
                other.isAuthenticated == isAuthenticated) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.subscriptionStatus, subscriptionStatus) ||
                other.subscriptionStatus == subscriptionStatus) &&
            (identical(other.subscriptionError, subscriptionError) ||
                other.subscriptionError == subscriptionError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      loadState,
      historyloadState,
      currentWeather,
      const DeepCollectionEquality().hash(_forecastWeather),
      displayedCount,
      isLoadingMore,
      errorMessage,
      const DeepCollectionEquality().hash(_historyWeather),
      isAuthenticated,
      user,
      subscriptionStatus,
      subscriptionError);

  /// Create a copy of WeatherState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherStateImplCopyWith<_$WeatherStateImpl> get copyWith =>
      __$$WeatherStateImplCopyWithImpl<_$WeatherStateImpl>(this, _$identity);
}

abstract class _WeatherState implements WeatherState {
  const factory _WeatherState(
      {final WeatherLoadState loadState,
      final HistoryLoadState historyloadState,
      final Weather currentWeather,
      final List<Weather> forecastWeather,
      final int displayedCount,
      final bool isLoadingMore,
      final String errorMessage,
      final Map<String, Weather> historyWeather,
      final bool isAuthenticated,
      final User user,
      final SubscriptionStatus subscriptionStatus,
      final String subscriptionError}) = _$WeatherStateImpl;

  @override
  WeatherLoadState get loadState;
  @override
  HistoryLoadState get historyloadState;
  @override
  Weather get currentWeather;
  @override
  List<Weather> get forecastWeather;
  @override
  int get displayedCount;
  @override
  bool get isLoadingMore;
  @override
  String get errorMessage;
  @override
  Map<String, Weather> get historyWeather;
  @override
  bool get isAuthenticated;
  @override
  User get user; // Store user’s name
  @override
  SubscriptionStatus get subscriptionStatus;
  @override
  String get subscriptionError;

  /// Create a copy of WeatherState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeatherStateImplCopyWith<_$WeatherStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
