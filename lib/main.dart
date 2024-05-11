import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:weather/cubits/weathercubit.dart';
import 'package:weather/pages/home_page.dart';

import 'package:weather/services/weather_service.dart';

void main() {
  runApp(BlocProvider(
     create: (context) {
        return weathercubit(WeatherService());
      },
    child: WeatherApp()));
}

class WeatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
      // primarySwatch: Provider.of<WeatherProvider>(context).weatherData == null ?  Colors.blue : Provider.of<WeatherProvider>(context).weatherData!.getThemeColor()  ,
      ),
      home: HomePage(),
    );
  }
}
