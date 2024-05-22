import 'package:weather/data/data_source/remote/remote_data_source.dart';
import 'package:weather/domain/repository/base_weather_repository.dart';

class WeatherRepository implements BaseWeatherRepository {

  final BaseRemoteDataSource baseRemoteDataSource;
  WeatherRepository(this.baseRemoteDataSource);

  @override
  Future<dynamic> getWeatherData(String cityName) async {
    return await baseRemoteDataSource.getWeatherByCountry(cityName);
  }

}
