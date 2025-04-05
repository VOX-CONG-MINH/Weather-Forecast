import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';

import '../../../presentation.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key, required this.bloc, required this.state});

  final Bloc bloc;
  final WeatherState state;

  Future<void> _useCurrentLocation(BuildContext context, Bloc bloc) async {
    try {
      LocationSettings locationSettings = LocationSettings(
        accuracy: LocationAccuracy.high,
        distanceFilter: 10,
      );

      Position position = await Geolocator.getCurrentPosition(
        locationSettings: locationSettings,
      );

      final locationQuery = '${position.latitude},${position.longitude}';
      bloc.add(LoadCurrentWeather(city: locationQuery, user: state.user));
      bloc.add(LoadForecastWeather(city: locationQuery));
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Error getting location: $e')));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Enter a City Name',
          style: TextStyle(
            fontSize: 18,
            fontFamily: FontFamily.rubik,
            fontWeight: FontWeight.w800,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          controller: controller,
          decoration: InputDecoration(
            hintText: 'E.g., New York, London, Tokyo',
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
          ),
        ),
        const SizedBox(height: 20),
        _customElevatedButton(
          text: 'Search',
          onTap: () {
            final cityName = controller.text;
            if (cityName.isNotEmpty) {
              bloc.add(LoadCurrentWeather(city: cityName, user: state.user));
              bloc.add(LoadForecastWeather(city: cityName));
            }
          },
          backgroundColor: AppColors.darkBlueBackground,
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            const Expanded(child: Divider(color: Colors.grey, thickness: 1)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'or',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: FontFamily.rubik,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ),
            ),
            const Expanded(child: Divider(color: Colors.grey, thickness: 1)),
          ],
        ),
        const SizedBox(height: 10),
        _customElevatedButton(
          text: 'Use Current Location',
          onTap: () => _useCurrentLocation(context, bloc),
          backgroundColor: AppColors.greyBackground,
        ),
      ],
    );
  }

  Widget _customElevatedButton({
    required String text,
    required VoidCallback onTap,
    required Color backgroundColor,
  }) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 20),
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontFamily: FontFamily.rubik,
          ),
        ),
      ),
    );
  }
}
