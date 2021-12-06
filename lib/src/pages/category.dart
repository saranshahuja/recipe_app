import 'package:flutter/material.dart';

//Style
import 'package: recipe_app/src/styles/styles.dart';

//Widgets
import 'package:recipe_app/src/widgets/app_bar_detail.dart';
import 'package:recipe_app/src/widgets/swiper_ingredients.dart';
import 'package:recipe_app/src/widgets/titles.dart';

class DetailPage extends StatelessWidget {
  final String description = 
    'Place the shrimp in the work bowl...'
    @override 
    Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBG,
      body: CustomScrollView(
        slivers: <Widget>[
          appBarDetail( 'Pizza' )
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.only(right: 8.0, bottom: 8.0),
                child: Text('Hello')
                //textRecipe(titleRecipeStyleDetail),
              ), //Padding
              
              titles ('Ingredients', titlesStyle),
              Sizedbox(
                height: 20.0,
              ), //SizedBox
              sliderIngredients(),
              SizedBox(
                height:15.0,
              ), //Sizedbox
              titles('Preparation', titleStyle),
              _textDescription(description)
              ]) //SliverChildDelegate
              ) //SliverList
            ]' //<Widget>[]
          ), //CustomScrollView
         ); //Scaffold     
       }    
          
              
               
                
