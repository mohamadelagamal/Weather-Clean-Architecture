abstract class BaseWeatherRepository{
  // contract for getting weather data from the api

  Future<dynamic> getWeatherData(String cityName);


}
