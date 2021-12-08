import 'package:flutter/material.dart';

//Style
import 'package:recipe_app/Styles/styles.dart';

//Widgets
import 'package:recipe_app/Widgets/app_bar_detail.dart';
import 'package:recipe_app/Widgets/swiper_ingredients.dart';
import 'package:recipe_app/Widgets/titles.dart';

class DetailPage extends StatelessWidget {
  final String description = 'Place the shrimp in the work bowl...';

  @override
  Widget build(BuildContext context) {

    final Map<String,dynamic> recipe = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      backgroundColor: colorBG,
      body: CustomScrollView(slivers: <Widget>[
        appBarDetail(recipe['photo' ]),
        SliverList(
            delegate: SliverChildListDelegate([
          Padding(
              padding: const EdgeInsets.only(right: 8.0, bottom: 8.0),
              child: Text('Hello')
              //textRecipe(titleRecipeStyleDetail),
              ),

          Container(
              alignment: AlignmentDirectional.topStart,
              margin: EdgeInsets.only(left: 30.0),
              child: Text(
                'Ingredients',
                style: titlesStyle,
              )),
          SizedBox(
            height: 20.0,
          ),
          sliderIngredients(),
          SizedBox(
            height: 15.0,
          ),
          Container(
              alignment: AlignmentDirectional.topStart,
              margin: EdgeInsets.only(left: 30.0),
              child: Text(
                'Preparation',
                style: titlesStyle,
              )),
         // _textDescription(description)
        ]))
      ]),
    );
  }
}
