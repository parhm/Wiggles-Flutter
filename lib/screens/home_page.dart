import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_wiggles/data/fake_dog_database.dart';
import 'package:flutter_wiggles/screens/dog_detail.dart';
import 'package:flutter_wiggles/ui/theme/theme_provider.dart';
import 'package:flutter_wiggles/widgets/dog_card.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var header = Padding(
      padding: const EdgeInsets.fromLTRB(20, 28, 46, 34),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hey Parham,',
                style: Theme.of(context).textTheme.headline5,
              ),
              const SizedBox(height: 5),
              Text(
                'Adopt a new friend near you!',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ],
          ),
          IconButton(
            icon: Icon(
              (Provider.of<ThemeProvider>(context).getThemeMode() ==
                      ThemeMode.dark)
                  ? CupertinoIcons.moon_fill
                  : CupertinoIcons.sun_max_fill,
              color: Theme.of(context).iconTheme.color,
            ),
            onPressed: () => Provider.of<ThemeProvider>(context, listen: false)
                .toggleTheme(),
          ),
        ],
      ),
    );

    var nearbyResults = Padding(
      padding: const EdgeInsets.fromLTRB(19, 20, 0, 20),
      child: Text(
        'Nearby results',
        style: Theme.of(context).textTheme.headline6,
      ),
    );

    var dogsData = FakeDogDatabase.dogsData;
    var listOfDogs = List.generate(
        dogsData.length * 5,
        (index) => GestureDetector(
              child: DogCard(
                dog: dogsData[index % 5],
              ),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return DogDetail(dog: dogsData[index % 5]);
                }),
              ),
            ),
        growable: false);

    return Scaffold(
      body: SafeArea(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            header,
            nearbyResults,
            ...listOfDogs,
          ],
        ),
      ),
    );
  }
}
