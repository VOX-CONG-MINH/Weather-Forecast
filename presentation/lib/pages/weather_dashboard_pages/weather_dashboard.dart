import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../presentation.dart';

class WeatherDashboard extends StatefulWidget {
  const WeatherDashboard({super.key});

  @override
  State<WeatherDashboard> createState() => _WeatherDashboardState();
}

class _WeatherDashboardState extends State<WeatherDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Weather Dashboard',
          style: TextStyle(
            fontFamily: FontFamily.rubik,
            fontWeight: FontWeight.w800,
            color: Colors.white,
          ),
        ),
        actions: [
          BlocListener<WeatherBloc, WeatherState>(
            listenWhen:
                (previous, current) =>
                    !previous.isAuthenticated && current.isAuthenticated,
            listener: (context, state) {
              context.read<WeatherBloc>().add(
                LoadCurrentWeather(city: 'Ha Noi', user: state.user),
              );
            },
            child: Builder(
              builder: (context) {
                final state = context.watch<WeatherBloc>().state;

                if (state.isAuthenticated) {
                  return Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          state.user.name,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: FontFamily.rubik,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      const Text(
                        '/',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: FontFamily.rubik,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          context.read<WeatherBloc>().add(SignOutUser());
                        },
                        child: const Text(
                          'Sign Out',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: FontFamily.rubik,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ],
                  );
                } else {
                  return Row(
                    children: [
                      TextButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder:
                                (context) => SignInPopup(
                                  weatherBloc: context.read<WeatherBloc>(),
                                  weatherState: state,
                                ),
                          );
                        },
                        child: const Text(
                          'Sign In',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: FontFamily.rubik,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      const Text(
                        '/',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: FontFamily.rubik,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder:
                                (context) => SignUpPopup(weatherState: state),
                          );
                        },
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: FontFamily.rubik,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ],
                  );
                }
              },
            ),
          ),
        ],
        centerTitle: true,
        backgroundColor: AppColors.darkBlueBackground,
      ),
      backgroundColor: AppColors.lightBlueBackground,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: LayoutBuilder(
            builder: (context, constraints) {
              bool isWideScreen = constraints.maxWidth > 985;

              return BlocBuilder<WeatherBloc, WeatherState>(
                builder: (context, state) {
                  final bloc = context.read<WeatherBloc>();
                  return Container(
                    child:
                        isWideScreen
                            ? Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Column(
                                    children: [
                                      SearchSection(bloc: bloc, state: state),
                                      const SizedBox(height: 30),
                                      state.isAuthenticated
                                          ? Column(
                                            children: [
                                              _buttonHistory(
                                                bloc: bloc,
                                                state: state,
                                              ),
                                              const SizedBox(height: 30),
                                              _buttonSubscribeWeather(
                                                bloc: bloc,
                                                state: state,
                                              ),
                                            ],
                                          )
                                          : Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Opacity(
                                                opacity: 0.5,
                                                child: IgnorePointer(
                                                  ignoring: true,
                                                  child: Column(
                                                    children: [
                                                      _buttonHistory(
                                                        bloc: bloc,
                                                        state: state,
                                                      ),
                                                      const SizedBox(
                                                        height: 30,
                                                      ),
                                                      _buttonSubscribeWeather(
                                                        bloc: bloc,
                                                        state: state,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  showDialog(
                                                    context: context,
                                                    builder:
                                                        (context) =>
                                                            SignInPopup(
                                                              weatherBloc: bloc,
                                                              weatherState:
                                                                  state,
                                                            ),
                                                  );
                                                },
                                                child: Icon(
                                                  Icons.lock,
                                                  size: 80,
                                                  color:
                                                      AppColors.greyBackground,
                                                ),
                                              ),
                                            ],
                                          ),
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 30),
                                Expanded(
                                  flex: 2,
                                  child: _weatherContent(
                                    currentWeather: state.currentWeather,
                                    state: state,
                                    bloc: bloc,
                                  ),
                                ),
                              ],
                            )
                            : Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                  ),
                                  child: SearchSection(
                                    bloc: bloc,
                                    state: state,
                                  ),
                                ),
                                const SizedBox(height: 30),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                  ),
                                  child:
                                      state.isAuthenticated
                                          ? Column(
                                            children: [
                                              _buttonHistory(
                                                state: state,
                                                bloc: bloc,
                                              ),
                                              const SizedBox(height: 30),
                                              _buttonSubscribeWeather(
                                                bloc: bloc,
                                                state: state,
                                              ),
                                            ],
                                          )
                                          : Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Opacity(
                                                opacity: 0.5,
                                                child: IgnorePointer(
                                                  ignoring: true,
                                                  child: Column(
                                                    children: [
                                                      _buttonHistory(
                                                        state: state,
                                                        bloc: bloc,
                                                      ),
                                                      const SizedBox(
                                                        height: 30,
                                                      ),
                                                      _buttonSubscribeWeather(
                                                        bloc: bloc,
                                                        state: state,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  showDialog(
                                                    context: context,
                                                    builder:
                                                        (context) =>
                                                            SignInPopup(
                                                              weatherBloc: bloc,
                                                              weatherState:
                                                                  state,
                                                            ),
                                                  );
                                                },
                                                child: Icon(
                                                  Icons.lock,
                                                  size: 80,
                                                  color:
                                                      AppColors.greyBackground,
                                                ),
                                              ),
                                            ],
                                          ),
                                ),
                                const SizedBox(height: 20),
                                _weatherContent(
                                  currentWeather: state.currentWeather,
                                  state: state,
                                  bloc: bloc,
                                ),
                              ],
                            ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _weatherContent({
    required Weather currentWeather,
    required WeatherState state,
    required WeatherBloc bloc,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CurrentWeatherSection(currentWeather: currentWeather),
        const SizedBox(height: 16),
        const Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            '4-DAY FORECAST',
            style: TextStyle(
              fontSize: 18,
              fontFamily: FontFamily.rubik,
              fontWeight: FontWeight.w800,
              color: Colors.black,
            ),
          ),
        ),
        const SizedBox(height: 16),
        ForecastCardSection(state: state, bloc: bloc),
      ],
    );
  }

  Widget _buttonHistory({
    required WeatherState state,
    required WeatherBloc bloc,
  }) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => HistorySectionPopup(),
          );
        },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 20),
          backgroundColor: AppColors.greyBackground,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
        child: const Text(
          'History Search Weather',
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontFamily: FontFamily.rubik,
          ),
        ),
      ),
    );
  }

  Widget _buttonSubscribeWeather({
    required WeatherBloc bloc,
    required WeatherState state,
  }) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          showDialog(
            context: context,
            builder:
                (context) =>
                    RegisterWeatherSectionPopup(bloc: bloc, state: state),
          );
        },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 20),
          backgroundColor: AppColors.greyBackground,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
        child: const Text(
          'Subscribe Weather information',
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontFamily: FontFamily.rubik,
          ),
        ),
      ),
    );
  }
}
