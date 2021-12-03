import 'package:flutter/material.dart';
import 'package:flutter_wiggles/ui/theme/wiggles_color.dart';
import 'package:flutter_wiggles/ui/theme/wiggles_type.dart';

ThemeData lightTheme() => ThemeData(
      fontFamily: 'Sailec',
      scaffoldBackgroundColor: WigglesColor.blueBG,
      colorScheme: const ColorScheme.light(
        surface: WigglesColor.card,
        secondary: WigglesColor.buttonLight,
      ),
      iconTheme: const IconThemeData(color: WigglesColor.blueText),
      textTheme: wigglesTextTheme().apply(
        bodyColor: WigglesColor.blueText,
        displayColor: WigglesColor.blueText,
      ),
    );

ThemeData darkTheme() => ThemeData(
      fontFamily: 'Sailec',
      scaffoldBackgroundColor: WigglesColor.blueBGNight,
      colorScheme: const ColorScheme.dark(
        surface: WigglesColor.cardNight,
        secondary: WigglesColor.buttonDark,
      ),
      iconTheme: const IconThemeData(color: WigglesColor.pinkText),
      textTheme: wigglesTextTheme().apply(
        bodyColor: WigglesColor.pinkText,
        displayColor: WigglesColor.pinkText,
      ),
    );
