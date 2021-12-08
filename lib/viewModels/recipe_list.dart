import 'package:flutter/material.dart';
import 'package:recipe_app/Screens/RecipeDetail.dart';
import 'package:recipe_app/Styles/styles.dart';
import 'package:sizer/sizer.dart';

//Style

List<Widget> recipeList(BuildContext context, List<dynamic> recipesPopular) {
  final List<Widget> listRecipe = [];

  recipesPopular.forEach((recipe) {
    final listWidgetProvisional =
        bodyRecipeList(context, titlesRecipeStyle, recipe);
    listRecipe.add(listWidgetProvisional);
  });

  return listRecipe;
}

Widget bodyRecipeList(
    BuildContext context, TextStyle RecipeStyle, Map<String, dynamic> recipe) {
  return Column(children: <Widget>[
    SizedBox(
      height: 20.0,
    ),
    GestureDetector(
      onTap: () {
        Navigator.pushNamed( context, 'detail', arguments: recipe);
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Image(
          image: NetworkImage(recipe['photo']),
          fit: BoxFit.fill,
          width: 350.0,
          height: 25.h,
        ), //Image
      ),
    ), //GestureDetector
    Container(
      alignment: AlignmentDirectional.topStart,
      margin: EdgeInsets.only(left: 30.0, top: 10.0, right: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            recipe['title'],
            textAlign: TextAlign.left,
            style: titlesRecipeStyle,
          ), //Text
          Padding(
            padding: const EdgeInsets.only(top:8.0),
            child: Text(
              recipe['description'],
              textAlign: TextAlign.left,
              style: descriptionRecipeStyle,
            ),
          ), //Text
          SizedBox(
            height: 10.0,
          ), //SizedBOX
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                fontSize: 14.0), //TextStyle
                          ), //Text
                        ) //Container
                      ], //<Widget>[]
                    ) //Row
                    ), //Expanded

                Expanded(
                    flex: 1,
                    child: Row(

                      children: <Widget>[
                        Icon(Icons.fastfood, color: colorIcons),


                        Padding(
                          padding: const EdgeInsets.only(left:8.0),
                          child: Text(
                            recipe['difficulty'],
                            style: TextStyle(
                              fontFamily: 'Avenir',
                              fontWeight: FontWeight.bold,
                              color: colorTitle,
                            ), //TextStyle
                          ),
                        ) //Container
                      ], //<Widget>[]
                    ) //Row
                    ),
              ],
            ),
          )
        ],
      ),
    )
  ]);
  //Expanded
}
