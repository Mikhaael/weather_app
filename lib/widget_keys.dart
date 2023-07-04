import 'forecast_model.dart';
import 'package:flutter/widgets.dart';

class WidgetKey {
  static ValueKey<String> listOfForecasts = const ValueKey('listOfForecasts');
  static ValueKey<String> sortBtn = const ValueKey('sortBtn');

  static ValueKey<String> warszawa = ValueKey(City.warszawa);
  static ValueKey<String> zakopane = const ValueKey(City.zakopane);
  static ValueKey<String> gdansk = const ValueKey(City.gdansk);
  static ValueKey<String> poznan = const ValueKey(City.poznan);
  static ValueKey<String> krakow = const ValueKey(City.krakow);
  static ValueKey<String> ustka = const ValueKey(City.ustka);
}
