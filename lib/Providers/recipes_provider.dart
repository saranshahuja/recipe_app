import 'package:flutter/services.dart' show rootBundle, rootbundle;
import 'dart:convert';

class _recipe_provider{
List<dynamic> popularRecipes = [];


Future<List<dynamic>> loadPopularRecipes() async {
  final res = await rootBundle.loadString('data/recipes.json');
 Map<String, dynamic> recipeMap = json.decode(res);
 popularRecipes = recipeMap['poularRecipes'];
 return popularRecipes;
}

}

final RecipeProvider = _recipe_provider();