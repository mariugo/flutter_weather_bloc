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

In order for code generation to work, we need to annotate our code using the following:

@JsonSerializable to label classes which can be serialized
@JsonKey to provide string representations of field names
@JsonValue to provide string representations of field values
Implement JSONConverter to convert object representations into JSON representations
For each file we also need to:

Import json_annotation
Include the generated code using the part keyword
Include fromJson methods for deserialization

*/

import 'package:json_annotation/json_annotation.dart';

part 'location.g.dart';

@JsonSerializable()
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

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}
