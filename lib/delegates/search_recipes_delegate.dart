import 'package:flutter/material.dart';
import 'package:recipe_app/Styles/styles.dart';
import 'package:recipe_app/Providers/recipes_provider.dart';
import 'package:recipe_app/viewModels/recipes_wanted_view_model.dart';

class RecipeSearchDelegate extends SearchDelegate {

  @override
  ThemeData appBarTheme(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return theme.copyWith(
      primaryColor: theme.primaryColorLight,
      primaryIconTheme: theme.primaryIconTheme,
      primaryColorBrightness: theme.primaryColorBrightness,
      primaryTextTheme: theme.primaryTextTheme,
      textTheme: theme.primaryTextTheme,
      inputDecorationTheme: theme.inputDecorationTheme.copyWith(
        hintStyle: TextStyle(
          color: Colors.white60
        )
      )
    );
  }



  @override
  List<Widget> buildActions(BuildContext context) {
    return [
    IconButton(
        onPressed: () {
          this.query = '';
        }
        ,icon: Icon(Icons.clear)
    )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          this.close(context, null);
        }
        ,icon: Icon(Icons.arrow_back_ios)
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return FutureBuilder(
        future: RecipeProvider.loadPopularRecipes(),
        initialData: [],
        builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot){
          List<dynamic>? recipes = snapshot.data;
          var recipeWanted = this.query.toLowerCase();

          return CustomScrollView(
            slivers: [
  SliverList(delegate: SliverChildListDelegate(
    [
      Column(
        children: recipeListWanted(context, recipes!, recipeWanted),
      )
    ]
  ))
            ],
          );
        },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
   return Container(
     padding: EdgeInsets.all(10.0),
     child: Text(
       'Your Favourite Recipe...',


     )
   );
  }
}
