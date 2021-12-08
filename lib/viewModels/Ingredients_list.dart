import 'package:flutter/material.dart';

List<Widget> IngredientsList(List<dynamic> ingredients) {
  final List<Widget> IngredientsList = [];
  final List<dynamic> RecipeIngredients = ingredients;

  RecipeIngredients.forEach(( ingredients ) {
    final Widget IngredientsListTemp = _image( ingredients );
    IngredientsList.add(IngredientsListTemp);
  });

  return IngredientsList;
}

Widget _image( Map<String,dynamic> ingredients ) {
  return Center(
    child: Stack(
      children: [
        Container(
            width: 130.0,
            height: 100.0,
            margin: EdgeInsets.only(right: 10.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image(
                image: NetworkImage( ingredients['PhotoIngredients'] ),
                //color: colorTitle,
                //colorBlendMode: BlendMode.overlay,
                fit: BoxFit.cover,
              ),
            )),
        Container(
          alignment: Alignment.bottomLeft,
          padding: EdgeInsets.all(20.0),
          child: Text(ingredients['ingredients'],
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                      blurRadius: 10.0,
                      color: Colors.black,
                      offset: Offset(5.0, 5.0),
                    )
                  ]
              )
          ),
        )
      ],
    ),
  );
}