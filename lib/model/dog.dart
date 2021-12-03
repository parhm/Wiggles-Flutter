import 'package:flutter_wiggles/model/owner.dart';

class Dog {
  final String name;
  final double age;
  final String gender;
  final String color;
  final double weight;
  final String location;
  final String about;
  final String image;
  final int elapsedTime;
  final Owner owner;

  const Dog({
    required this.name,
    required this.age,
    required this.gender,
    required this.color,
    required this.weight,
    required this.location,
    required this.about,
    required this.image,
    required this.elapsedTime,
    required this.owner,
  });
}
