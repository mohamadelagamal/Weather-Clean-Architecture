import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:weather/core/utills/constances.dart';
import 'package:weather/data/models/weather_model.dart';
import 'package:weather/domain/entities/weather.dart';

abstract class BaseRemoteDataSource{
  Future<WeatherModel?> getWeatherByCountry(String countryName);
}

class RemoteDataSource implements BaseRemoteDataSource {
  @override
  Future<WeatherModel?> getWeatherByCountry(String countryName)async{
    try{
      var response = await Dio().get(
        '${AppConstance.baseUrl}/weather?q=$countryName&appid=${AppConstance.apiKey}'
      );
      print(response.data);
      // means the request was successful
      return WeatherModel.fromJson(response.data);
    }catch(e){
      print(e);
      return null ;
    }
  }
}