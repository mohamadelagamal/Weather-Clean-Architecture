
import 'package:weather/domain/entities/weather.dart';
import 'package:weather/domain/repository/base_weather_repository.dart';

class GetWeatherByCountry{

  final BaseWeatherRepository weatherRepository;

  GetWeatherByCountry(this.weatherRepository);

  Future<Weather> call(String country) async {
    return await weatherRepository.getWeatherData(country);
  }

  // Future<Either<Failure, WeatherEntity>> call(String country) async {
  //   return await weatherRepository.getWeatherByCountry(country);
  // }

}