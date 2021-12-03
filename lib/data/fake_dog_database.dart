import 'package:flutter_wiggles/model/dog.dart';
import 'package:flutter_wiggles/model/owner.dart';

class FakeDogDatabase {
  static const Owner _owner = Owner(
    name: 'Parham Tabari',
    bio: 'Developer & Pet Lover',
    image: 'assets/images/sample_profile.png',
  );

  static const List<Dog> dogsData = [
    Dog(
      name: 'Hachiko',
      age: 3.5,
      gender: 'Male',
      color: 'Brown',
      weight: 12.9,
      location: '389m away',
      about:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries",
      image: 'assets/images/orange_dog.png',
      elapsedTime: 12,
      owner: _owner,
    ),
    Dog(
      name: 'Skooby Doo',
      age: 3,
      gender: 'Male',
      color: 'Gold',
      weight: 12.4,
      location: '412m away',
      about:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries",
      image: 'assets/images/blue_dog.png',
      elapsedTime: 23,
      owner: _owner,
    ),
    Dog(
      name: 'Miss Agnes',
      age: 2.5,
      gender: 'Female',
      color: 'White',
      weight: 6.7,
      location: '879m away',
      about:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries",
      image: 'assets/images/red_dog.png',
      elapsedTime: 46,
      owner: _owner,
    ),
    Dog(
      name: 'Cyrus',
      age: 2,
      gender: 'Male',
      color: 'Black',
      weight: 8.2,
      location: '672m away',
      about:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries",
      image: 'assets/images/yellow_dog.png',
      elapsedTime: 50,
      owner: _owner,
    ),
    Dog(
      name: 'Shelby',
      age: 1,
      gender: 'Female',
      color: 'Choco',
      weight: 6.9,
      location: '982m away',
      about:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries",
      image: 'assets/images/white_dog.png',
      elapsedTime: 59,
      owner: _owner,
    ),
  ];
}
