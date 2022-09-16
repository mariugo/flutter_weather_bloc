/* Results from the API

{
  "current_weather": {
    "temperature": 15.3,
    "weathercode": 63
  }
}

*/

class Weather {
  final double temperature;
  final double weatherCode;

  const Weather({
    required this.temperature,
    required this.weatherCode,
  });
}
