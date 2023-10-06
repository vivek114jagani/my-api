import 'package:my_api/get%20Api/model/user_name.dart';
import 'package:my_api/get%20Api/model/user_picture.dart';
import 'user_dob.dart';
import 'user_location.dart';

class User {
  final String gender;
  final String email;
  final String phone;
  final String cell;
  final String nat;
  final UserName name;
  final UserDob dob;
  final UserLocation location;
  final UserPicture picture;

  User({
    required this.gender,
    required this.email,
    required this.phone,
    required this.cell,
    required this.nat,
    required this.name,
    required this.dob,
    required this.location,
    required this.picture,
  });

  factory User.fromMap(Map<String, dynamic> e) {
    
    final name = UserName.formMap(e['name']);

    final dob = UserDob.fromMap(e['dob']);

    final location = UserLocation.formMap(e['location']);

    final picture = UserPicture.fromMap(e['picture']);

    return User(
      cell: e['cell'],
      email: e['email'],
      gender: e['gender'],
      nat: e['nat'],
      phone: e['phone'],
      name: name,
      dob: dob,
      location: location,
      picture: picture,
    );
  }

  String get fullName {
    return '${name.title}${name.first}${name.last}';
  }
}
