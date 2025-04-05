part of 'sign_in_bloc.dart';

enum SigninStatus { initial, loading, success, failure }

@freezed
class SignInState with _$SignInState {
  const factory SignInState({
    @Default(true) bool isPasswordObscured,
    @Default(SigninStatus.initial) SigninStatus status,
    @Default("") String errorMessage,
  }) = _SignInState;
}
