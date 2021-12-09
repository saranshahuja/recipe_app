import 'package:flutter/material.dart';
import 'package:recipe_app/Styles/styles.dart';
import 'package:recipe_app/Widgets/app_bar_categories.dart';
import 'package:recipe_app/Providers/recipes_provider.dart';
import 'package:recipe_app/Widgets/titles.dart';
import 'package:recipe_app/viewModels/recipe_list.dart';


class CategoriesPage extends StatelessWidget {
  static const routeName = 'categories';

  @override
  Widget build(BuildContext context) {

    final categories = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    return Scaffold(
      backgroundColor: colorBG,
      body: CustomScrollView(
        slivers: <Widget>[
          appBarCategory(categories['name']),
          SliverList(
              delegate: SliverChildListDelegate([
                titles( categories['name'], titlesStyleCategories ),

                FutureBuilder(
                    future: RecipeProvider.carryRecipeCategories('${categories['name']}'),
                    initialData: [],
                    builder: ( BuildContext context, AsyncSnapshot snapshot ) {
                      return Column(
                          children: recipeList( context, snapshot.data )
                      );
                    }
                )
              ]))
        ],
      ),
    );

  }


}
