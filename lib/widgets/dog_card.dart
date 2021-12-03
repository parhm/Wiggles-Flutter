import 'package:flutter/material.dart';
import 'package:flutter_wiggles/model/dog.dart';
import 'package:flutter_wiggles/widgets/gender_tag.dart';

class DogCard extends StatelessWidget {
  final Dog dog;

  const DogCard({Key? key, required this.dog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var dogImage = ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Image.asset(
        dog.image,
        fit: BoxFit.fill,
        height: 80,
        width: 80,
      ),
    );

    var genderWidget = GenderTag(dogGender: dog.gender);

    return Container(
      margin: const EdgeInsets.fromLTRB(12, 0, 12, 12),
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Theme.of(context).colorScheme.surface,
        // boxShadow: [
        //   BoxShadow(
        //       color: HexColor.fromHex('#000000').withOpacity(0.1),
        //       blurRadius: 16,
        //       offset: const Offset(0, 3))
        // ],
      ),
      child: Row(
        children: [
          Padding(padding: const EdgeInsets.all(12), child: dogImage),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                dog.name,
                style: Theme.of(context).textTheme.subtitle1,
              ),
              Text(
                '${dog.age} yrs | ${dog.weight} kg',
                style: Theme.of(context).textTheme.bodyText2,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.location_on,
                    color: Colors.red,
                    size: 16,
                  ),
                  const SizedBox(width: 5),
                  Text(
                    dog.location,
                    style: Theme.of(context).textTheme.bodyText2,
                  )
                ],
              )
            ],
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 28, 0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  genderWidget,
                  Text(
                    '${dog.elapsedTime} min ago',
                    style: Theme.of(context).textTheme.bodyText2,
                  )
                ]),
          ),
        ],
      ),
    );
  }
}
