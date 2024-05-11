
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/cubits/state_cubit.dart';
import 'package:weather/models/weather_model.dart';
import 'package:weather/services/weather_service.dart';

class weathercubit extends Cubit<weather_state>{
  
  weathercubit(this.weatherService):super(initialstate());
  WeatherService weatherService;
  WeatherModel? weatherModel;
  String? cityName;

  void weather_fun({required String city})async{
    try {
  emit(loadingstate());
WeatherModel weatherModel= await weatherService.getWeather(cityName: city);
emit(succsestate(weatherModel: weatherModel));
} on Exception catch (e) {
  emit(failurstate());
}

  }

}
  
