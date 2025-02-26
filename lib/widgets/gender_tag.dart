import 'package:flutter/material.dart';
import 'package:flutter_wiggles/ui/theme/wiggles_color.dart';

class GenderTag extends StatelessWidget {
  const GenderTag({super.key, required this.dogGender});

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
          color: dogGenderColor.withAlpha((255.0 * 0.2).round())),
      child: Text(
        dogGender,
        style: TextStyle(
            color: dogGenderColor, fontSize: 12, fontWeight: FontWeight.w400),
      ),
    );
  }
}
