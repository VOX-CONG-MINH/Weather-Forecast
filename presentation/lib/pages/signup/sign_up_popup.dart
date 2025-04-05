import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../presentation.dart';

class SignUpPopup extends StatefulWidget {
  const SignUpPopup({super.key, required this.weatherState});

  final WeatherState weatherState;

  @override
  State<SignUpPopup> createState() => _SignUpPopupState();
}

class _SignUpPopupState extends BasePageState<SignUpPopup, SignUpBloc> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  Widget buildPage(BuildContext context) {
    return PopupWidget(
      headerText: "Sign Up",
      headerLeft: GestureDetector(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: const Icon(Icons.close, size: 20),
      ),
      content: SizedBox(
        height: 480,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 60),
          child: BlocBuilder<SignUpBloc, SignUpState>(
            builder: (context, state) {
              if (state.status == SignUpStatus.success) {
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  Navigator.of(context).pop(); //
                  showDialog(
                    context: context,
                    builder:
                        (context) => SignInPopup(
                          weatherBloc: context.read<WeatherBloc>(),
                          weatherState: widget.weatherState,
                        ),
                  );
                });
              }

              return Column(
                children: [
                  Text('CREATE AN ACCOUNT', style: TextStyle(/* style */)),
                  const SizedBox(height: 20),
                  TextField(
                    controller: _nameController,
                    decoration: InputDecoration(
                      hintText: 'E.g., John Doe',
                      hintStyle: TextStyle(/* style */),
                      enabledBorder: OutlineInputBorder(/* style */),
                      focusedBorder: OutlineInputBorder(/* style */),
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 12,
                      ),
                      prefixIcon: const Icon(Icons.person),
                    ),
                  ),
                  const SizedBox(height: 12),
                  TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      hintText: 'E.g., your_email@gmail.com',
                      hintStyle: TextStyle(/* style */),
                      enabledBorder: OutlineInputBorder(/* style */),
                      focusedBorder: OutlineInputBorder(/* style */),
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
                      hintText: 'Password (min 6 characters)',
                      hintStyle: TextStyle(/* style */),
                      enabledBorder: OutlineInputBorder(/* style */),
                      focusedBorder: OutlineInputBorder(/* style */),
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 12,
                      ),
                      prefixIcon: const Icon(Icons.lock),
                      suffixIcon: IconButton(
                        icon: Icon(
                          state.isPasswordObscured
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                        onPressed: () {
                          context.read<SignUpBloc>().add(
                            const SignUpPasswordVisibility(),
                          );
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  TextField(
                    controller: _confirmPasswordController,
                    obscureText: state.isPasswordObscured,
                    decoration: InputDecoration(
                      hintText: 'Confirm Password',
                      hintStyle: TextStyle(/* style */),
                      enabledBorder: OutlineInputBorder(/* style */),
                      focusedBorder: OutlineInputBorder(/* style */),
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 12,
                      ),
                      prefixIcon: const Icon(Icons.lock),
                    ),
                  ),
                  const SizedBox(height: 12),
                  if (state.status == SignUpStatus.loading)
                    const Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: SizedBox(
                        height: 24,
                        child: Center(child: CircularProgressIndicator()),
                      ),
                    ),
                  if (state.status == SignUpStatus.failure)
                    Text(
                      "❌ ${state.errorMessage.isEmpty ? 'Invalid input or passwords don\'t match' : state.errorMessage}",
                      style: TextStyle(/* style */),
                    ),
                  if (state.status == SignUpStatus.success)
                    Text(
                      "✅ Sign-up successful! Redirecting to Sign In...",
                      style: TextStyle(/* style */),
                    ),
                  const SizedBox(height: 12),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed:
                          state.status == SignUpStatus.loading
                              ? null
                              : () {
                                final name = _nameController.text.trim();
                                final email = _emailController.text.trim();
                                final password =
                                    _passwordController.text.trim();
                                final confirmPassword =
                                    _confirmPasswordController.text.trim();

                                if (name.isNotEmpty &&
                                    EmailValidator.validate(email) &&
                                    password.length >= 6 &&
                                    password == confirmPassword) {
                                  bloc.add(
                                    SignUpAccount(
                                      name: name,
                                      email: email,
                                      password: password,
                                    ),
                                  );
                                } else {
                                  bloc.add(
                                    SignUpAccount(
                                      name: name,
                                      email: email,
                                      password: password,
                                    ),
                                  ); // Trigger failure for invalid input
                                }
                              },
                      style: ElevatedButton.styleFrom(/* style */),
                      child: const Text('Sign Up' /* style */),
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
