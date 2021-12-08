import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:recipe_app/Providers/recipes_provider.dart';
//Style
import 'package:recipe_app/Styles/styles.dart';

//Widgets
import 'package:recipe_app/Widgets/app_bar_detail.dart';
import 'package:recipe_app/Widgets/swiper_ingredients.dart';
import 'package:recipe_app/Widgets/titles.dart';

class detail_page extends StatelessWidget {
  static const routeName = 'details';
  @override
  Widget build(BuildContext context) {


    final recipes = ModalRoute.of(context)!.settings.arguments as Map<String,dynamic>;



    return Scaffold(
      backgroundColor: colorBG,
      body: CustomScrollView(
        slivers: <Widget>[
          appBarDetail(recipes['photo']),
          SliverList(
              delegate: SliverChildListDelegate([
                Padding(
                  padding:
                  const EdgeInsets.only(top: 10.0, right: 8.0, bottom: 8.0),
                  child: _RecipeBody(recipes, titlesRecipeStyleDetail),
                ),
                titles('Ingredients', titlesStyle),
                SizedBox(
                  height: 20.0,
                ),
                sliderIngredients(recipes['ingredients']),
                SizedBox(
                  height: 15.0,
                ),
                titles('Preparation', titlesStyle),
                _textDescription(recipes['preparation']),
                SizedBox(
                  height: 35.0,
                ),
              ]))
        ],
      ),
    );
  }
} //Clase

Widget _RecipeBody(Map<String, dynamic> recipe, TextStyle style) {
  return Container(
    margin: EdgeInsets.only(left: 30.0, right: 30.0, bottom: 20.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          recipe['title'],
          textAlign: TextAlign.left,
          style: style,
        ),
        Container(
          margin: EdgeInsets.only(top: 10.0),
          child: Text(
            recipe['description'],
            textAlign: TextAlign.left,
            style: descriptionRecipeStyle,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10.0),
          child: Row(
            children: <Widget>[
              Expanded(
                  flex: 1,
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.alarm, color: colorIcons),
                      Container(
                        margin: EdgeInsets.only(left: 5.0),
                        child: Text(
                          recipe['duration'],
                          style: TextStyle(
                              fontFamily: 'Avenir',
                              fontWeight: FontWeight.bold,
                              color: colorTitle,
                              fontSize: 14.0),
                        ),
                      )
                    ],
                  )),
              Expanded(
                  flex: 2,
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.fastfood, color: colorIcons),
                      Container(
                        margin: EdgeInsets.only(left: 5.0),
                        child: Text(
                          recipe['difficulty'],
                          style: TextStyle(
                              fontFamily: 'Avenir',
                              fontWeight: FontWeight.bold,
                              color: colorTitle,
                              fontSize: 14.0),
                        ),
                      )
                    ],
                  ))
            ],
          ),
        )
      ],
    ),
  );
}


Widget _textDescription(String text) {
  return Container(
    margin: EdgeInsets.only(top: 5.0, left: 30.0, right: 30.0),
    child: Text(
      text,
      textAlign: TextAlign.left,
      style: TextStyle(
          fontFamily: 'Avenir',
          fontWeight: FontWeight.normal,
          color: Color.fromRGBO(15, 55, 91, 1),
          fontSize: 13.0),
    ),
  );
}
