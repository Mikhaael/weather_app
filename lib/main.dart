import 'package:flutter/material.dart';
import 'package:weather_app/weather_oracle.dart';

import 'forecast_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final WeatherOracle oracle = WeatherOracle();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: ForecastListScreen(oracle),
    );
  }
}
