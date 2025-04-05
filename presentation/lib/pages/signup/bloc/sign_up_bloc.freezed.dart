// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignUpPasswordVisibility {}

/// @nodoc
abstract class $SignUpPasswordVisibilityCopyWith<$Res> {
  factory $SignUpPasswordVisibilityCopyWith(SignUpPasswordVisibility value,
          $Res Function(SignUpPasswordVisibility) then) =
      _$SignUpPasswordVisibilityCopyWithImpl<$Res, SignUpPasswordVisibility>;
}

/// @nodoc
class _$SignUpPasswordVisibilityCopyWithImpl<$Res,
        $Val extends SignUpPasswordVisibility>
    implements $SignUpPasswordVisibilityCopyWith<$Res> {
  _$SignUpPasswordVisibilityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignUpPasswordVisibility
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SignUpPasswordVisibilityImplCopyWith<$Res> {
  factory _$$SignUpPasswordVisibilityImplCopyWith(
          _$SignUpPasswordVisibilityImpl value,
          $Res Function(_$SignUpPasswordVisibilityImpl) then) =
      __$$SignUpPasswordVisibilityImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignUpPasswordVisibilityImplCopyWithImpl<$Res>
    extends _$SignUpPasswordVisibilityCopyWithImpl<$Res,
        _$SignUpPasswordVisibilityImpl>
    implements _$$SignUpPasswordVisibilityImplCopyWith<$Res> {
  __$$SignUpPasswordVisibilityImplCopyWithImpl(
      _$SignUpPasswordVisibilityImpl _value,
      $Res Function(_$SignUpPasswordVisibilityImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpPasswordVisibility
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SignUpPasswordVisibilityImpl implements _SignUpPasswordVisibility {
  const _$SignUpPasswordVisibilityImpl();

  @override
  String toString() {
    return 'SignUpPasswordVisibility()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpPasswordVisibilityImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _SignUpPasswordVisibility implements SignUpPasswordVisibility {
  const factory _SignUpPasswordVisibility() = _$SignUpPasswordVisibilityImpl;
}

/// @nodoc
mixin _$SignUpAccount {
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  /// Create a copy of SignUpAccount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignUpAccountCopyWith<SignUpAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpAccountCopyWith<$Res> {
  factory $SignUpAccountCopyWith(
          SignUpAccount value, $Res Function(SignUpAccount) then) =
      _$SignUpAccountCopyWithImpl<$Res, SignUpAccount>;
  @useResult
  $Res call({String name, String email, String password});
}

/// @nodoc
class _$SignUpAccountCopyWithImpl<$Res, $Val extends SignUpAccount>
    implements $SignUpAccountCopyWith<$Res> {
  _$SignUpAccountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignUpAccount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignUpAccountImplCopyWith<$Res>
    implements $SignUpAccountCopyWith<$Res> {
  factory _$$SignUpAccountImplCopyWith(
          _$SignUpAccountImpl value, $Res Function(_$SignUpAccountImpl) then) =
      __$$SignUpAccountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String email, String password});
}

/// @nodoc
class __$$SignUpAccountImplCopyWithImpl<$Res>
    extends _$SignUpAccountCopyWithImpl<$Res, _$SignUpAccountImpl>
    implements _$$SignUpAccountImplCopyWith<$Res> {
  __$$SignUpAccountImplCopyWithImpl(
      _$SignUpAccountImpl _value, $Res Function(_$SignUpAccountImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpAccount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$SignUpAccountImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignUpAccountImpl implements _SignUpAccount {
  const _$SignUpAccountImpl(
      {required this.name, required this.email, required this.password});

  @override
  final String name;
  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'SignUpAccount(name: $name, email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpAccountImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, email, password);

  /// Create a copy of SignUpAccount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpAccountImplCopyWith<_$SignUpAccountImpl> get copyWith =>
      __$$SignUpAccountImplCopyWithImpl<_$SignUpAccountImpl>(this, _$identity);
}

abstract class _SignUpAccount implements SignUpAccount {
  const factory _SignUpAccount(
      {required final String name,
      required final String email,
      required final String password}) = _$SignUpAccountImpl;

  @override
  String get name;
  @override
  String get email;
  @override
  String get password;

  /// Create a copy of SignUpAccount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpAccountImplCopyWith<_$SignUpAccountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignUpState {
  bool get isPasswordObscured => throw _privateConstructorUsedError;
  SignUpStatus get status => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignUpStateCopyWith<SignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res, SignUpState>;
  @useResult
  $Res call(
      {bool isPasswordObscured, SignUpStatus status, String errorMessage});
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res, $Val extends SignUpState>
    implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPasswordObscured = null,
    Object? status = null,
    Object? errorMessage = null,
  }) {
    return _then(_value.copyWith(
      isPasswordObscured: null == isPasswordObscured
          ? _value.isPasswordObscured
          : isPasswordObscured // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SignUpStatus,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignUpStateImplCopyWith<$Res>
    implements $SignUpStateCopyWith<$Res> {
  factory _$$SignUpStateImplCopyWith(
          _$SignUpStateImpl value, $Res Function(_$SignUpStateImpl) then) =
      __$$SignUpStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isPasswordObscured, SignUpStatus status, String errorMessage});
}

/// @nodoc
class __$$SignUpStateImplCopyWithImpl<$Res>
    extends _$SignUpStateCopyWithImpl<$Res, _$SignUpStateImpl>
    implements _$$SignUpStateImplCopyWith<$Res> {
  __$$SignUpStateImplCopyWithImpl(
      _$SignUpStateImpl _value, $Res Function(_$SignUpStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPasswordObscured = null,
    Object? status = null,
    Object? errorMessage = null,
  }) {
    return _then(_$SignUpStateImpl(
      isPasswordObscured: null == isPasswordObscured
          ? _value.isPasswordObscured
          : isPasswordObscured // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SignUpStatus,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignUpStateImpl implements _SignUpState {
  const _$SignUpStateImpl(
      {this.isPasswordObscured = true,
      this.status = SignUpStatus.initial,
      this.errorMessage = ""});

  @override
  @JsonKey()
  final bool isPasswordObscured;
  @override
  @JsonKey()
  final SignUpStatus status;
  @override
  @JsonKey()
  final String errorMessage;

  @override
  String toString() {
    return 'SignUpState(isPasswordObscured: $isPasswordObscured, status: $status, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpStateImpl &&
            (identical(other.isPasswordObscured, isPasswordObscured) ||
                other.isPasswordObscured == isPasswordObscured) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isPasswordObscured, status, errorMessage);

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpStateImplCopyWith<_$SignUpStateImpl> get copyWith =>
      __$$SignUpStateImplCopyWithImpl<_$SignUpStateImpl>(this, _$identity);
}

abstract class _SignUpState implements SignUpState {
  const factory _SignUpState(
      {final bool isPasswordObscured,
      final SignUpStatus status,
      final String errorMessage}) = _$SignUpStateImpl;

  @override
  bool get isPasswordObscured;
  @override
  SignUpStatus get status;
  @override
  String get errorMessage;

  /// Create a copy of SignUpState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignUpStateImplCopyWith<_$SignUpStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
