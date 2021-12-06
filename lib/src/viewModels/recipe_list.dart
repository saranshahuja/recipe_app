import 'package:flutter/material.dart';

//Style
import 'package:recipe_app/src/styles/styles.dart';

List<Widget> recipeList( BuildContext context, List<dynamic> recipesPopular ) {
  final List<Widget> listRecipe = [];
  
  recipePopular.forEach(( recipe ){
    final listWidgetProvisional = _bodyRecipeList( context, titlesRecipeStyle, recipe );
    listRecipe.add(listWidgetProvisional);
  });
  
  return listRecipe; 
}

Widget bodyRecipeList( BuildContext context, TextStyle RecipeStyle, Map<String,dymanic> recipe){
  return Column(
    children: <Widget>[
      SizedBox(
        height: 20.0,
      ),
      GestureDetector(
        onTap: () {
          Navigator.pushedNamed( context, 'detail'); 
        },
        child: ClipRRect(
          borerRadius: BorderRadius.circular(10.0),
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
        margin: EdgeInsets.only(left:30.0, top:0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              recipe['Title'],
              textAlign: TextAlign.left,
              style: titleRecipeStyle,
            ), //Text
            Text(recipe[ 'description' ],
            textAlign: TextAlign.left,
              style:descriptionRecipeStyle,
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
                            margin: EdgeInsets.only(left:5.0),
                            child: Text(recipe['duration'],
                            style: TextStyle(
                              fontFamily: 'Avenir',
                              fontWeight: FontWeight.bold,
                              color: colorTitle,
                              fontSize: 14.0
                            ), //TextStyle
                           ), //Text             
                          ) //Container
                        ], //<Widget>[]
                    ) //Row
                  ), //Expanded

                  Expanded(
                      flex: 2,
                      child: Row(
                          children: <Widget>[
                            Icon( Icons.fastfood, color: colorIcons),

                            container(
                                child: Text(recipe['difficulty'],
                                    style: TextStyle(
                                        fontFamily: 'Avenir',
                                        fontWeight: FontWeight.bold,
                                        color: colorTitle,
                                ), //TextStyle
                           ), //Text             
                          ) //Container
                        ], //<Widget>[]
                    ) //Row
                  ), //Expanded
                }   
