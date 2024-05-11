import 'package:weather/models/weather_model.dart';

class weather_state{}

class initialstate extends weather_state{}

class loadingstate extends weather_state{}

class succsestate extends weather_state{
  WeatherModel weatherModel;
succsestate({ required this.weatherModel});
}


class failurstate extends weather_state{}