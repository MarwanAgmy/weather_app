import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Center(
        child: TextField(
          onSubmitted: (value) async {
            //cubitمن الobjectدة بالظبط كأني جبت
            //GetWeatherCubit()
            var getWeatherCubit = BlocProvider.of<WeatherCubit>(context);
            getWeatherCubit.getWeather(cityName: value);
            Navigator.pop(context);
          },
          decoration: const InputDecoration(
            labelText: 'Search',
            contentPadding: EdgeInsets.symmetric(
              vertical: 32.0,
              horizontal: 16.0,
            ),
            suffixIcon: Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(Icons.search),
            ),
            hintText: 'Enter City Name',
            border: OutlineInputBorder(),
          ),
        ),
      ),
    );
  }
}
