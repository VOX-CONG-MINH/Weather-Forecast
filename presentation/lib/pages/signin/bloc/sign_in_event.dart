part of 'sign_in_bloc.dart';

sealed class SignInEvent {
  const SignInEvent();
}

@freezed
class LoginPasswordVisibility extends SignInEvent
    with _$LoginPasswordVisibility {
  const factory LoginPasswordVisibility() = _LoginPasswordVisibility;
}

@freezed
class LoginAccount extends SignInEvent with _$LoginAccount {
  const factory LoginAccount({
    required String email,
    required String password,
  }) = _LoginAccount;
}
