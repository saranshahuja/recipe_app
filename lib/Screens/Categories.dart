import 'package:flutter/material.dart';
import 'package:recipe_app/Styles/styles.dart';
import 'package:recipe_app/Widgets/Recipe_List.dart';
import 'package:recipe_app/Widgets/app_bar.dart';
import 'package:recipe_app/Widgets/app_bar_categories.dart';
import 'package:recipe_app/Widgets/menu_lateral.dart';
import 'package:recipe_app/Providers/recipes_provider.dart';
import 'package:recipe_app/Widgets/titles.dart';
import 'package:recipe_app/viewModels/recipe_list.dart';
import 'package:recipe_app/viewModels/recipes_wanted_view_model.dart';

class CategoriesPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
//lower line code to be fixed!!
    final Object? categories = ModalRoute.of(context)!.settings.arguments;

    return Scaffold(
      drawer: menuLateral(context),
      key: _scaffoldKey,
      backgroundColor: colorBG,
      body: CustomScrollView(slivers: <Widget>[
       // appBar(context, _scaffoldKey),
        appBarCategory('Pizza'),
        SliverList(
            delegate: SliverChildListDelegate([
          titles(categories['name'], titlesStyleCategories),
          FutureBuilder(
            future: RecipeProvider.carryRecipeCategories( categories!["name"]),
            initialData: [],
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              return Column(
                children: recipeList(context, snapshot.data),
              );
            },
          )
        ]))
      ]),
    );
  }
}
