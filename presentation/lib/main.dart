import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:initializer/initializer.dart';

import 'presentation.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  try {
    await AppInitializer().init();
    configurePresentationDependencies();
  } catch (e) {
    return;
  }

  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create:
              (context) =>
                  getIt<WeatherBloc>()
                    ..add(const LoadCurrentWeather(city: 'Ha Noi'))
                    ..add(const LoadForecastWeather(city: 'Ha Noi')),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Weather Dashboard',
        home: const WeatherDashboard(),
      ),
    );
  }
}
