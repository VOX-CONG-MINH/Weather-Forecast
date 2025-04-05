import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../presentation.dart';

class HistorySectionPopup extends StatelessWidget {
  const HistorySectionPopup({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupWidget(
      headerText: "History Search Weather",
      headerLeft: GestureDetector(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: const Icon(Icons.close, size: 20),
      ),
      content: BlocBuilder<WeatherBloc, WeatherState>(
        builder: (context, state) {
          final historyList = state.historyWeather.values.toList();
          return SizedBox(
            height: 400,
            child:
                state.historyloadState == HistoryLoadState.loading
                    ? const Center(
                      child: CircularProgressIndicator(color: Colors.white),
                    )
                    : historyList.isEmpty
                    ? const Center(
                      child: Text(
                        "No history available",
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                    : SingleChildScrollView(
                      child: Column(
                        children:
                            historyList
                                .map(
                                  (forecast) =>
                                      _forecastItem(forecast: forecast),
                                )
                                .toList(),
                      ),
                    ),
          );
        },
      ),
    );
  }

  Widget _forecastItem({required Weather forecast}) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColors.greyBackground,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Text(
                  forecast.name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: FontFamily.rubik,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  forecast.time,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: FontFamily.rubik,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Text(
                forecast.day,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontFamily: FontFamily.rubik,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Temp: ${forecast.temperature}°C',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontFamily: FontFamily.rubik,
                ),
              ),
            ],
          ),
          SizedBox(width: 20),
          Column(
            children: [
              Text(
                'Wind: ${forecast.windSpeed} M/S',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontFamily: FontFamily.rubik,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Humidity: ${forecast.humidity}%',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontFamily: FontFamily.rubik,
                ),
              ),
            ],
          ),
          Expanded(
            flex: 2,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 40),
                  child: Image.network(
                    forecast.icon,
                    fit: BoxFit.fill,
                    height: 80,
                    width: 80,
                    errorBuilder: (context, error, stackTrace) {
                      return const Icon(Icons.error);
                    },
                  ),
                ),
                Positioned(
                  bottom: 30,
                  child: Text(
                    forecast.condition,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: FontFamily.rubik,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
