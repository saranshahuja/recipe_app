import 'package:flutter/material.dart';
import 'package:recipe_app/Screens/home_Screen.dart';
//this is saransh
//this is josh
// This is jeet
// This is Shubham Rishi
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext conext) {
    return MaterialApp(
      title: 'Recipe App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Container(color: Colors.red),
    );
  }
}

