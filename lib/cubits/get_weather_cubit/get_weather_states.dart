import 'package:weather_app/model/weather_model.dart';

class WeatherState {} //Cubite وال  State استخدمتها عشان اربط بين ال

class WeatherInitialState extends WeatherState {}

class WeatherLoadedState extends WeatherState {}

class WeatherSuccessState extends WeatherState {
  final WeatherModel weatherModel;

  WeatherSuccessState(this.weatherModel);
}

class WeatherFailureState extends WeatherState {}
