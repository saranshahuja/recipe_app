import 'package:flutter/material.dart';

//Colors
final colorBG = Color.fromRGBO(244, 252, 255, 1.0);
final colorTitle = Color.fromRGBO(34, 87, 126, 1);
final colorRecipeDesc = Color.fromRGBO(85, 132, 172, 1);
final colorIconsAppBar = Color.fromRGBO(183, 195, 206, 1);
final colorIcons = Color.fromRGBO(34, 87, 126, 1);
//final colorIcons = Color.fromRGBO(243, 198, 36, 1);
final colorText = Color.fromRGBO(15, 55, 91, 1);

final color1 = Color.fromRGBO(34, 87, 126, 1);
final color2 = Color.fromRGBO(85, 132, 172, 1);
final color3 = Color.fromRGBO(183, 195, 206, 1);
final color4 = Color.fromRGBO(246, 242, 212, 1);

//Texts
final titlesStyle = TextStyle(
    fontFamily: 'PlayfairDisplay-Bold',
    fontWeight: FontWeight.bold,
    color: colorTitle,
    fontSize: 24.0);

final titlesStyleCategories = TextStyle(
    fontFamily: 'PlayfairDisplay-Bold',
    fontWeight: FontWeight.bold,
    color: colorTitle,
    fontSize: 34.0);

final titlesRecipeStyle = TextStyle(
    fontFamily: 'PlayfairDisplay-Bold',
    fontWeight: FontWeight.bold,
    color: colorTitle,
    fontSize: 18.0);

final titlesRecipeStyleDetail = TextStyle(
    fontFamily: 'PlayfairDisplay-Bold',
    fontWeight: FontWeight.bold,
    color: colorTitle,
    fontSize: 22.0);

final descriptionRecipeStyle = TextStyle(
    fontFamily: 'Avenir',
    fontWeight: FontWeight.bold,
    color: colorRecipeDesc,
    fontSize: 14.0);

final helpPageTextStyle = TextStyle(
    fontFamily: 'Avenir',
    //fontWeight: FontWeight.bold,
    color: colorIcons,
    fontSize: 18.0);

//Menu
final styleTextMenuLateral = TextStyle(
    fontFamily: 'PlayfairDisplay-Bold',
    fontWeight: FontWeight.bold,
    color: colorTitle,
    fontSize: 34.0,
    shadows: [
      Shadow( // bottomLeft
          offset: Offset(-1.5, -1.5),
          color: Colors.white
      ),
      Shadow( // bottomRight
          offset: Offset(1.5, -1.5),
          color: Colors.white
      ),
      Shadow( // topRight
          offset: Offset(1.5, 1.5),
          color: Colors.white
      ),
      Shadow( // topLeft
          offset: Offset(-1.5, 1.5),
          color: Colors.white
      ),
    ]
);

