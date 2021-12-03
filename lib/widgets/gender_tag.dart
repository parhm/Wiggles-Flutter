import 'package:flutter/material.dart';
import 'package:flutter_wiggles/ui/theme/wiggles_color.dart';

class GenderTag extends StatelessWidget {
  const GenderTag({Key? key, required this.dogGender}) : super(key: key);

  final String dogGender;

  @override
  Widget build(BuildContext context) {
    Color dogGenderColor;
    if (dogGender == 'Female') {
      dogGenderColor = WigglesColor.genderRed;
    } else {
      dogGenderColor = WigglesColor.genderBlue;
    }

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: dogGenderColor.withOpacity(0.2)),
      child: Text(
        dogGender,
        style: TextStyle(
            color: dogGenderColor, fontSize: 12, fontWeight: FontWeight.w400),
      ),
    );
  }
}
