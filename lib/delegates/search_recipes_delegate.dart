import 'package:flutter/material.dart';
import 'package:recipe_app/Styles/styles.dart';
import 'package:recipe_app/Providers/recipes_provider.dart';

class RecipeSearchDelegate extends SearchDelegate {
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
        builder: (BuildContext context, AsyncSnapshot snapshot){
          return;
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
