import 'dart:html';

import 'package:flutter/material.dart';
import 'package:recipe_app/Screens/home_Screen.dart';
import 'package:firebase_core/firebase_core.dart';

import 'Screens/home_Screen.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
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
          primarySwatch: Colors.blue,),
        //appBar
        home: const HomeScreen()

    ); //MaterialApp
  }
}

