// ignore_for_file: file_names
//Materials
import 'package:flutter/material.dart';
import 'package:recipe_app/Providers/recipes_provider.dart';
//Styles
import 'package:recipe_app/Styles/styles.dart';
import 'package:recipe_app/Widgets/Recipe_List.dart';
//Widgets
import 'package:recipe_app/Widgets/app_bar.dart';
import 'package:recipe_app/Widgets/menu_lateral.dart';
import 'package:recipe_app/Widgets/swiper_categories.dart';
import 'package:recipe_app/Widgets/swiper_popular.dart';
import 'package:recipe_app/Widgets/titles.dart';
import 'package:recipe_app/viewModels/recipe_list.dart';

class allRecipes extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {

    RecipeProvider.loadPopularRecipes();

    return Scaffold(
        drawer: menuLateral(context),
        key: _scaffoldKey,
        backgroundColor: colorBG,
        body: CustomScrollView(
          slivers: <Widget>[
            appBar( context, _scaffoldKey ),
            SliverList(
                delegate: SliverChildListDelegate([
                  Column(
                    children: <Widget>[

                      titles('All Recipes', titlesStyle ),
                      FutureBuilder(
                          future: RecipeProvider.loadPopularRecipes(),
                          initialData: [],
                          builder: ( BuildContext context, snapshot ) {

                            return Column(
                              children: recipeList( context, snapshot.data as List<dynamic>),
                            );
                          }
                      )

                    ],
                  )
                ]))
          ],
        ));
  }
}
