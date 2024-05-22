import 'package:weather/domain/entities/weather.dart';

class WeatherModel extends Weather {
  WeatherModel(
      {required super.id,
      required super.cityName,
      required super.main,
      required super.description,
      required super.pressure});

  // format the data from the api

  // factory use to create an instance of the class
  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      id: json['id'],
      cityName: json['name'],
      main: json['weather'][0]['main'],
      description: json['weather'][0]['description'],
      pressure: json['main']['pressure'],
    );
  }

}
