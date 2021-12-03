import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_wiggles/screens/home_page.dart';
import 'package:flutter_wiggles/ui/theme/theme_provider.dart';
import 'package:flutter_wiggles/ui/theme/wiggles_theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(ThemeMode.light),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeProvider themeNotifier = Provider.of<ThemeProvider>(context);

    SystemChrome.setSystemUIOverlayStyle(
        themeNotifier.getThemeMode() == ThemeMode.light
            ? SystemUiOverlayStyle.dark
            : SystemUiOverlayStyle.light);

    return MaterialApp(
      title: 'Wiggles',
      theme: lightTheme(),
      darkTheme: darkTheme(),
      themeMode: themeNotifier.getThemeMode(),
      home: const MyHomePage(),
    );
  }
}
