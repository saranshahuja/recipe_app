import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class _RecipeProvider {
  List<dynamic> recipePopular = [];
  
  Future<List<dynamic>> cargarRecetasPopulares) async {
    final resp = await rootBundle.loadString('data/recetas.json');
    Map<String, dynamic> recipeMap = json. decode (resp);
    recipePopular = recipeMap'recipePopular'];
    
    return recipePopular;
  }

}

final recipeProvider - _RecipeProvider();
