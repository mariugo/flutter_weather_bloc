/* Results from the API

{
  "results": [
    {
      "id": 4887398,
      "name": "Chicago",
      "latitude": 41.85003,
      "longitude": -87.65005
    }
  ]
}

*/

class Location {
  final int id;
  final String name;
  final double latitude;
  final double longitude;

  const Location({
    required this.id,
    required this.name,
    required this.latitude,
    required this.longitude,
  });
}
