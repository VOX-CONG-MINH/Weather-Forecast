import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../presentation.dart';

class RegisterWeatherSectionPopup extends StatefulWidget {
  const RegisterWeatherSectionPopup({
    super.key,
    required this.state,
    required this.bloc,
  });

  final WeatherState state;
  final Bloc bloc;

  @override
  State<RegisterWeatherSectionPopup> createState() =>
      _RegisterWeatherSectionPopupState();
}

class _RegisterWeatherSectionPopupState
    extends State<RegisterWeatherSectionPopup> {
  final TextEditingController _controller = TextEditingController();
  bool? _checkEmail;

  @override
  Widget build(BuildContext context) {
    return PopupWidget(
      headerText: "Subscribe Weather information",
      headerLeft: GestureDetector(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: const Icon(Icons.close, size: 20),
      ),
      content: SizedBox(
        height: 320,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 60),
          child: Column(
            children: [
              Text(
                'ENTER YOUR EMAIL',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: FontFamily.rubik,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: _controller,
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
                    borderSide: const BorderSide(color: Colors.grey, width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(color: Colors.blue, width: 1),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 12,
                  ),
                  prefixIcon: Icon(Icons.email),
                ),
              ),

              const SizedBox(height: 12),

              if (_checkEmail == false)
                Text(
                  "❌ Invalid email format",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 14,
                    fontFamily: FontFamily.rubik,
                  ),
                ),
              if (_checkEmail == true)
                const Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: SizedBox(
                    height: 24,
                    child: Center(child: CircularProgressIndicator()),
                  ),
                ),

              const SizedBox(height: 12),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    final email = _controller.text.trim();

                    if (EmailValidator.validate(email) &&
                        email.endsWith('@gmail.com')) {
                      widget.bloc.add(
                        ConfirmSubscription(email: email, city: ''),
                      );
                      setState(() {
                        _checkEmail = true;
                      });
                    } else {
                      setState(() {
                        _checkEmail = false;
                      });
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
                    'Register',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontFamily: FontFamily.rubik,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
