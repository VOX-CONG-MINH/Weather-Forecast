import 'package:domain/domain.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';
part 'sign_in_bloc.freezed.dart';

@injectable
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc(this._signInUsecase) : super(const SignInState()) {
    on<LoginPasswordVisibility>(_onPasswordVisibilityToggled);
    on<LoginAccount>(_onLoginAccount);
  }

  final SignInUsecase _signInUsecase;

  void _onPasswordVisibilityToggled(
    LoginPasswordVisibility event,
    Emitter<SignInState> emit,
  ) {
    emit(state.copyWith(isPasswordObscured: !state.isPasswordObscured));
  }

  Future<void> _onLoginAccount(
    LoginAccount event,
    Emitter<SignInState> emit,
  ) async {
    emit(state.copyWith(status: SigninStatus.loading));

    final result = await _signInUsecase.call(
      SignInParams(email: event.email, password: event.password),
    );
    await result.fold(
      (l) {
        emit(state.copyWith(status: SigninStatus.failure));
      },
      (user) async {
        emit(
          state.copyWith(status: SigninStatus.success, errorMessage: 'success'),
        );
      },
    );
  }
}
