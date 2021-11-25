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

  ///DO NOT CHANGE THE MAIN FILE!!!!!!
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
      //setting up search bar
        body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical 10),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
                ),//border
                fillColor: Colors.green.withOpacity(0.05),
                filled: true
              ), //InputDecoration
            ) //Textfield
            SizedBox(
              height:15,
            ), //sizedbox
          ], //children
        ), //column
      ),// container
    ); //MaterialApp
  }

