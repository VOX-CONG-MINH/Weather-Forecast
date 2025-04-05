import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../presentation.dart';

class SignInPopup extends StatefulWidget {
  const SignInPopup({
    super.key,
    required this.weatherBloc,
    required this.weatherState,
  });

  final Bloc weatherBloc;
  final WeatherState weatherState;

  @override
  State<SignInPopup> createState() => _SignInPopupState();
}

class _SignInPopupState extends BasePageState<SignInPopup, SignInBloc> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget buildPage(BuildContext context) {
    return PopupWidget(
      headerText: "Sign In",
      headerLeft: GestureDetector(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: const Icon(Icons.close, size: 20),
      ),
      content: SizedBox(
        height: 360,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 100),
          child: BlocBuilder<SignInBloc, SignInState>(
            builder: (context, state) {
              if (state.status == SigninStatus.success) {
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  widget.weatherBloc.add(const SignInSuccess());
                  Navigator.of(context).pop();
                });
              }

              return Column(
                children: [
                  Text(
                    "LET'S LOGIN YOUR ACCOUNT",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: FontFamily.rubik,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      hintText: 'E.g., your_email@gmail.com',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontFamily: FontFamily.rubik,
                        fontWeight: FontWeight.w400,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(
                          color: Colors.grey,
                          width: 1,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(
                          color: Colors.blue,
                          width: 1,
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 12,
                      ),
                      prefixIcon: const Icon(Icons.email),
                    ),
                  ),
                  const SizedBox(height: 12),
                  TextField(
                    controller: _passwordController,
                    obscureText: state.isPasswordObscured,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontFamily: FontFamily.rubik,
                        fontWeight: FontWeight.w400,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(
                          color: Colors.grey,
                          width: 1,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(
                          color: Colors.blue,
                          width: 1,
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 12,
                      ),
                      prefixIcon: const Icon(Icons.lock),
                      suffixIcon: BlocBuilder<SignInBloc, SignInState>(
                        builder: (context, state) {
                          return IconButton(
                            icon: Icon(
                              state.isPasswordObscured
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                            ),
                            onPressed: () {
                              bloc.add(const LoginPasswordVisibility());
                            },
                          );
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  if (state.status == SigninStatus.loading)
                    const Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: SizedBox(
                        height: 24,
                        child: Center(child: CircularProgressIndicator()),
                      ),
                    ),
                  if (state.status == SigninStatus.failure)
                    Text(
                      "❌ ${state.errorMessage.isEmpty ? 'Invalid email or password' : state.errorMessage}",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 14,
                        fontFamily: FontFamily.rubik,
                      ),
                    ),
                  if (state.status == SigninStatus.success)
                    Text(
                      "✅ Login successful!",
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 14,
                        fontFamily: FontFamily.rubik,
                      ),
                    ),

                  const SizedBox(height: 12),
                  SizedBox(
                    width: double.infinity,
                    child: BlocBuilder<SignInBloc, SignInState>(
                      builder: (context, state) {
                        return ElevatedButton(
                          onPressed:
                              state.status == SigninStatus.loading
                                  ? null
                                  : () {
                                    final email = _emailController.text.trim();
                                    final password =
                                        _passwordController.text.trim();

                                    if (EmailValidator.validate(email) &&
                                        password.length >= 6) {
                                      bloc.add(
                                        LoginAccount(
                                          email: email,
                                          password: password,
                                        ),
                                      );
                                    } else {
                                      bloc.add(
                                        LoginAccount(
                                          email: email,
                                          password: password,
                                        ),
                                      );
                                    }
                                  },
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            backgroundColor: AppColors.darkBlueBackground,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          child: const Text(
                            'Sign In',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontFamily: FontFamily.rubik,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
