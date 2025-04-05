import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

import '../../../presentation.dart';

class CurrentWeatherSection extends StatelessWidget {
  final Weather currentWeather;

  const CurrentWeatherSection({super.key, required this.currentWeather});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColors.darkBlueBackground,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${currentWeather.name} (${currentWeather.day})',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: FontFamily.rubik,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Temperature: ${currentWeather.temperature}°C',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: FontFamily.rubik,
                ),
              ),
              const SizedBox(height: 8),

              Text(
                'Wind: ${currentWeather.windSpeed} M/S',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: FontFamily.rubik,
                ),
              ),
              const SizedBox(height: 8),

              Text(
                'Humidity: ${currentWeather.humidity}%',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: FontFamily.rubik,
                ),
              ),
            ],
          ),
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Image.network(
                  currentWeather.icon,
                  fit: BoxFit.fill,
                  height: 100,
                  width: 100,
                  errorBuilder: (context, error, stackTrace) {
                    return const Icon(Icons.error);
                  },
                ),
              ),
              Positioned(
                bottom: 0,
                child: Text(
                  currentWeather.condition,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: FontFamily.rubik,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
