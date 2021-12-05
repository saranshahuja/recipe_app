import 'package:flutter/material.dart';

Widget textoRecipe() {}

Widget RecipeList() {
  return Column(
    children: <Widget>[
      SizedBox(
        height: 20.0,
      ),
      GestureDetector(
        onTap: () {
          print('Click');
        },
        child: Image(
          image: AssetImage('assets/pasta.jpg'),
          fit: BoxFit.fill,
          width: 380.0,
          height: 140.0,
        ),
      ),
      textoRecipe()
    ],
  );
}
