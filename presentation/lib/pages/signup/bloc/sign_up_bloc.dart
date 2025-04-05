import 'package:domain/domain.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';
part 'sign_up_bloc.freezed.dart';

@injectable
class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc(this._signUpUsecase) : super(const SignUpState()) {
    on<SignUpPasswordVisibility>(_onPasswordVisibilityToggled);
    on<SignUpAccount>(_onSignUpAccount);
  }

  final SignUpUsecase _signUpUsecase;

  void _onPasswordVisibilityToggled(
    SignUpPasswordVisibility event,
    Emitter<SignUpState> emit,
  ) {
    emit(state.copyWith(isPasswordObscured: !state.isPasswordObscured));
  }

  Future<void> _onSignUpAccount(
    SignUpAccount event,
    Emitter<SignUpState> emit,
  ) async {
    emit(state.copyWith(status: SignUpStatus.loading));

    final result = await _signUpUsecase.call(
      SignUpParams(
        email: event.email,
        password: event.password,
        name: event.name,
      ),
    );

    await result.fold(
      (l) {
        emit(state.copyWith(status: SignUpStatus.failure));
      },
      (user) async {
        emit(state.copyWith(status: SignUpStatus.success, errorMessage: ''));
      },
    );
  }
}
