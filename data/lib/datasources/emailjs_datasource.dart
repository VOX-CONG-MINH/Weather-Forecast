import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:shared/shared.dart';

@LazySingleton()
class EmailJsDataSource {
  final http.Client client;

  EmailJsDataSource(this.client);

  Future<void> sendConfirmationEmail(String email) async {
    const serviceId = 'service_mdfkcf7';
    const templateId = 'template_za85xll';
    const userId = 'gDayV3jE81Cbz3vKs';

    final confirmationLink =
        'https://yourapp.com/confirm?email=$email'; // Tùy bạn xử lý
    try {
      await http.post(
        Uri.parse('https://api.emailjs.com/api/v1.0/email/send'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'service_id': serviceId,
          'template_id': templateId,
          'user_id': userId,
          'template_params': {
            'name': 'Go Weather Forecast',
            'email': email,
            'message': confirmationLink,
          },
        }),
      );
    } catch (e) {
      throw ServerFailure();
    }
  }
}
