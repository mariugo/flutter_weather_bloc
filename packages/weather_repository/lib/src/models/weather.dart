import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'weather.g.dart';

enum WeatherCondition {
  clear,
  rainy,
  cloudy,
  snowy,
  unknown,
}

@JsonSerializable()
class Weather extends Equatable {
  final String location;
  final double temperature;
  final WeatherCondition condition;
  Weather({
    required this.location,
    required this.temperature,
    required this.condition,
  });

  @override
  List<Object?> get props => [
        location,
        temperature,
        condition,
      ];
}
