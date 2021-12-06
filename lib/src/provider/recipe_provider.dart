import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class _RecipeProvider {
  List<dynamic> recipePopular = [];
  List<dynamic> category = [];
  
  Future<List<dynamic>> carryRecipePopular() async {
    final resp = await rootBundle.loadString('data/recipe.json');
    Map<String, dynamic> recipeMap = json.decode(resp);
    recipePopular = recipeMap['recipePopular'];
    
    return recipePopular;
  }
  
  Future<List<dynamic>> carryCategory() async {
    final resp = await rootBundle.loadString('data/recipe.json');
    Map<String, dynamic> categoryMap = json.decode(resp);
    category = categoryMap['category'];
    return category;
  }

}

final recipeProvider - _RecipeProvider();
