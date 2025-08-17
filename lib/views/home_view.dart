import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weather_app/main.dart';
import 'package:weather_app/views/search_view.dart';
import 'package:weather_app/widgets/no_weather_body.dart';
import 'package:weather_app/widgets/weather_failure.dart';
import 'package:weather_app/widgets/weather_info_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherCubit, WeatherState>(
      builder: (context, state) {
        // Choose AppBar color based on state and data
        final Color appBarColor =
            (state is WeatherSuccessState)
                ? getThemeColor(
                  BlocProvider.of<WeatherCubit>(
                    context,
                  ).weatherModel!.weatherState,
                )
                : Color(0xff88A6C0);

        return Scaffold(
          appBar: AppBar(
            backgroundColor: appBarColor,
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return const SearchView();
                      },
                    ),
                  );
                },
                icon: const Icon(Icons.search, color: Colors.white),
              ),
            ],
            //backgroundColor: Colors.blue,
            title: const Text(
              'Weather App',
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: BlocBuilder<WeatherCubit, WeatherState>(
            builder: (context, state) {
              if (state is WeatherLoadedState) {
                return const Center(child: CircularProgressIndicator());
              } else if (state is WeatherSuccessState) {
                return WeatherInfoBody(weather: state.weatherModel);
              } else if (state is WeatherFailureState) {
                return WeatherFailure();
              } else {
                return const NoWeatherBody();
              }
            },
          ),
        );
      },
    );
  }
}
