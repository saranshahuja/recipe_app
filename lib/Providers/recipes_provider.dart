import 'package:flutter/services.dart' show rootBundle, rootbundle;
import 'dart:convert';

class _recipe_provider{
List<dynamic> popularRecipes = [];
List<dynamic> category =[];


Future<List<dynamic>> loadPopularRecipes() async {
  final res = await rootBundle.loadString('data/recipes.json');
 Map<String, dynamic> recipeMap = json.decode(res);
 popularRecipes = recipeMap['poularRecipes'];
 return popularRecipes;
}

Future<List<dynamic>> carryCategory() async {
  final resp = await rootBundle.loadString('data/recipe.json');
  Map<String, dynamic> categoryMap = json.decode(resp);
  category = categoryMap['category'];
  return category;
}

}

final RecipeProvider = _recipe_provider();