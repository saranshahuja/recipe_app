import 'dart:html';

import 'package:flutter/material.dart';
import 'package:recipe_app/Screens/home_Screen.dart';

import 'Screens/home_Screen.dart';

void main() {
  runApp(const MyApp(
  debugShowCheckedModeBanner: false,
  home: MyApp(),
  theme:   ,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  ///this is saransh
/// this is josh
/// This is jeet
  /// This is Shubham Rishi
  // This widget is the root of your application.
  @override
  Widget build(BuildContext conext) {
    return MaterialApp(
  title: 'Recipe App',
  theme: ThemeData(
    primartSwatch: Colors.blue,),
  appBar: AppBar(
    elevation: 0,
    title: Text("Recipe App"),

      ), //appBar
      home: const HomeScreen(),
    ); //MaterialApp
  }

