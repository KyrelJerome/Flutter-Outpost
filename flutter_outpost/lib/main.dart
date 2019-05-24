import 'package:flutter/material.dart';
import 'package:flutter_outpost/Pages/IntroPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Outpost',
      theme: appTheme,
      home: IntroPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

ThemeData appTheme = ThemeData(
  brightness: Brightness.light,
  primarySwatch: Colors.blueGrey,
  accentColor: Colors.blue[900],
  accentColorBrightness: Brightness.light,
);
