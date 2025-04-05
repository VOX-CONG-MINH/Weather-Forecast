import 'package:data/data.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:shared/shared.dart';
import 'dart:convert';

@LazySingleton()
class RemoteDataSource {
  final http.Client client;

  RemoteDataSource(this.client);

  Future<CurrentWeatherData> getCurrentWeather(String city) async {
    final response = await client.get(
      Uri.parse(
        'https://api.weatherapi.com/v1/current.json?key=0880dd7ed42e43a1a8b170315250204&q=$city',
      ),
    );
    if (response.statusCode == 200) {
      return CurrentWeatherData.fromJson(jsonDecode(response.body));
    } else {
      throw ServerFailure();
    }
  }

  Future<List<ForecastWeatherData>> getForecast(String city, int days) async {
    final response = await client.get(
      Uri.parse(
        'https://api.weatherapi.com/v1/forecast.json?key=0880dd7ed42e43a1a8b170315250204&q=$city&days=$days',
      ),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final forecastDays = data['forecast']['forecastday'] as List;
      final cityName = data['location']['name'] as String;

      return forecastDays.map((day) {
        return ForecastWeatherData.fromJson({
          'name': cityName,
          'date': day['date'],
          'day': day['day'],
        });
      }).toList();
    } else {
      throw ServerFailure();
    }
  }
}
