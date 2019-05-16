import 'package:flutter/material.dart';
import 'package:flutter_outpost/Pages/IntroPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Outpost',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: IntroPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

