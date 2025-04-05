part of 'sign_up_bloc.dart';

enum SignUpStatus { initial, loading, success, failure }

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState({
    @Default(true) bool isPasswordObscured,
    @Default(SignUpStatus.initial) SignUpStatus status,
    @Default("") String errorMessage,
  }) = _SignUpState;
}
