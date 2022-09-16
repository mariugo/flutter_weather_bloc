/* Results from the API

{
  "current_weather": {
    "temperature": 15.3,
    "weathercode": 63
  }
}

*/

import 'package:json_annotation/json_annotation.dart';

part 'weather.g.dart';

@JsonSerializable()
class Weather {
  final double temperature;
  @JsonKey(name: 'weathercode')
  final double weatherCode;

  const Weather({
    required this.temperature,
    required this.weatherCode,
  });

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);
}
