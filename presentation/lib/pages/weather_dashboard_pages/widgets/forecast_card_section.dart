import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../presentation.dart';

class ForecastCardSection extends StatefulWidget {
  const ForecastCardSection({
    super.key,
    required this.bloc,
    required this.state,
  });

  final WeatherState state;
  final Bloc bloc;

  @override
  State<ForecastCardSection> createState() => _ForecastCardState();
}

class _ForecastCardState extends State<ForecastCardSection> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 50) {
      widget.bloc.add(const LoadMoreForecast());
    }
  }

  @override
  Widget build(BuildContext context) {
    return switch (widget.state.loadState) {
      WeatherLoadState.loading => const SizedBox(
        height: 250,
        child: Center(child: CircularProgressIndicator()),
      ),
      WeatherLoadState.loaded => SizedBox(
        height: 250,
        child: Scrollbar(
          controller: _scrollController,
          thumbVisibility: true, // Hiển thị thanh cuộn ngay cả khi không cuộn
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            controller: _scrollController,
            child: Row(
              children:
                  widget.state.forecastWeather
                      .take(widget.state.displayedCount)
                      .map((forecast) => _forecastItem(forecast: forecast))
                      .toList()
                    ..addAll(
                      widget.state.isLoadingMore
                          ? [
                            const SizedBox(
                              width: 180,
                              child: Center(child: CircularProgressIndicator()),
                            ),
                          ]
                          : [],
                    ),
            ),
          ),
        ),
      ),
      WeatherLoadState.failure => SizedBox(
        height: 250,
        child: Center(child: Text('Error: ${widget.state.errorMessage}')),
      ),
      WeatherLoadState.initial => const SizedBox.shrink(),
    };
  }

  Widget _forecastItem({required Weather forecast}) {
    return Container(
      width: 190,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.greyBackground,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            forecast.day,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: FontFamily.rubik,
              fontWeight: FontWeight.w800,
            ),
          ),
          Image.network(
            'https:${forecast.icon}',
            fit: BoxFit.fill,
            height: 100,
            width: 100,
            errorBuilder: (context, error, stackTrace) {
              return const Icon(Icons.error, size: 80);
            },
          ),
          Text(
            'Temp: ${forecast.temperature}°C',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontFamily: FontFamily.rubik,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            'Wind: ${forecast.windSpeed} M/S',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontFamily: FontFamily.rubik,
            ),
          ),
          const SizedBox(height: 6),
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
    );
  }
}
