import 'package:flutter/material.dart';

import 'package:recipe_app/Styles/styles.dart';

//Style

List<Widget> recipeListWanted(BuildContext context, List<dynamic> recipes, String recipeWanted) {
  final List<Widget> listRecipe = [];

  recipes.forEach((recipe) {
    var title = recipe['title'].toString().toLowerCase();
    if(title.contains(recipeWanted)){
      final listWidgetProvisional = _bodyRecipeList(context, titlesRecipeStyle, recipe);
      listRecipe.add(listWidgetProvisional);
    }
  });

  return listRecipe;
}

Widget _bodyRecipeList(
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
          height: 140.0,
        ), //Image
      ),
    ), //GestureDetector
    Container(
      alignment: AlignmentDirectional.topStart,
      margin: EdgeInsets.only(left: 30.0, top: 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            recipe['title'],
            textAlign: TextAlign.left,
            style: titlesRecipeStyle,
          ), //Text
          Text(
            recipe['description'],
            textAlign: TextAlign.left,
            style: descriptionRecipeStyle,
          ), //Text
          SizedBox(
            height: 10.0,
          ), //SizedBOX
          Container(
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
                                fontSize: 14.0), //TextStyle
                          ), //Text
                        ) //Container
                      ], //<Widget>[]
                    ) //Row
                ), //Expanded

                Expanded(
                    flex: 2,
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.fastfood, color: colorIcons),

                        Container(
                          child: Text(
                            recipe['difficulty'],
                            style: TextStyle(
                              fontFamily: 'Avenir',
                              fontWeight: FontWeight.bold,
                              color: colorTitle,
                            ), //TextStyle
                          ), //Text
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
