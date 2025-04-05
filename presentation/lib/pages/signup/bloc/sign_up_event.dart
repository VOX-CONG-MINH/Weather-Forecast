part of 'sign_up_bloc.dart';

sealed class SignUpEvent {
  const SignUpEvent();
}

@freezed
class SignUpPasswordVisibility extends SignUpEvent
    with _$SignUpPasswordVisibility {
  const factory SignUpPasswordVisibility() = _SignUpPasswordVisibility;
}

@freezed
class SignUpAccount extends SignUpEvent with _$SignUpAccount {
  const factory SignUpAccount({
    required String name,
    required String email,
    required String password,
  }) = _SignUpAccount;
}
