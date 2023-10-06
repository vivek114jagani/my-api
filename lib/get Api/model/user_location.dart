class UserLocation {
  final String city;
  final String state;
  final String country;
  final String postcode;
  final LocationStreet street;
  final LocationCordinate coordinates;
  final LocationTimezone timezone;

  UserLocation({
    required this.city,
    required this.state,
    required this.country,
    required this.postcode,
    required this.street,
    required this.coordinates,
    required this.timezone,
  });

  factory UserLocation.formMap(Map<String, dynamic> json) {
    final coordinates = LocationCordinate.fromMap(json['coordinates']);

    final street = LocationStreet.fromMap(json['street']);

    final timezone = LocationTimezone.fromMap(json['timezone']);

    return UserLocation(
      city: json['city'],
      state: json['state'],
      country: json['country'],
      postcode: json['postcode'].toString(),
      coordinates: coordinates,
      street: street,
      timezone: timezone,
    );
  }
}

class LocationStreet {
  final int number;
  final String name;
  LocationStreet({
    required this.number,
    required this.name,
  });

  factory LocationStreet.fromMap(Map<String, dynamic> json) {
    return LocationStreet(
      name: json['name'],
      number: json['number'],
    );
  }
}

class LocationCordinate {
  final String latitude;
  final String longitude;
  LocationCordinate({
    required this.latitude,
    required this.longitude,
  });

  factory LocationCordinate.fromMap(Map<String, dynamic> json) {
    return LocationCordinate(
      latitude: json['latitude'],
      longitude: json['longitude'],
    );
  }
}

class LocationTimezone {
  final String offset;
  final String description;
  LocationTimezone({
    required this.offset,
    required this.description,
  });

  factory LocationTimezone.fromMap(Map<String, dynamic> json) {
    return LocationTimezone(
      offset: json['offset'],
      description: json['description'],
    );
  }
}
