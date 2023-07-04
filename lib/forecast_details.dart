import 'forecast_model.dart';
import 'weather_oracle.dart';
import 'package:flutter/material.dart';

import 'forecast_widget.dart';

class ForecastDetailsScreen extends StatelessWidget {
  final WeatherOracle oracle;
  final EightHourCityForecast initialForecast;

  const ForecastDetailsScreen({
    Key? key,
    required this.oracle,
    required this.initialForecast,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(initialForecast.city),
      ),
      body: Column(
        children: [
          ForecastWidget.bigVersion(initialForecast.first),
          const SizedBox(height: 16),
          Container(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: initialForecast.forecasts.length,
              itemBuilder: (context, index) {
                final forecast = initialForecast.forecasts[index];
                return ForecastWidget.smallVersion(forecast);
              },
            ),
          ),
        ],
      ),
    );
  }
}
