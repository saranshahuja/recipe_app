import 'package:flutter/material.dart';

List<Widget> recipeList( BuildContext context, List<dynamic> recipesPopular ) {
  final List<Widget> listRecipe = [];
  
  recipePopular.forEach(( recipe ){
    final listWidgetProv =  
  });
 
}

Widget Recipe(BuildContext context) {
  return Column(
    children: <Widget>[
      SizedBox(
        height: 20.0,
      ),
      GestureDetector(
        onTap: () {
          Navigator.pushedNamed( context, 'detail'); 
        },
        child: Image(
          image: AssetImage('assets/pasta.jpg'),
          fit: BoxFit.fill,
          width: 380.0,
          height: 140.0,
        ), //Image
      ), //GestureDetector
      textoRecipe( titlesRecipeStyle )
      ], //<Widget>[]
    ); //Column
