// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:recipe_app/Screens/sidebar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bits and Bites"),),
      drawer: sidebar(),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
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
                ) ,//Textfield
                SizedBox(
                  height:15,
                ), //sizedbox
              ], //children
            ), //column
          ),
        ],
      ),
    );
  }
}
