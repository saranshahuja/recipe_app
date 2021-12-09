import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class _recipe_provider{
List<dynamic> popularRecipes = [];
List<dynamic> category =[];
List<dynamic> recipeCategories = [];

FirebaseFirestore firestore = FirebaseFirestore.instance;


Future<List<dynamic>> loadPopularRecipes() async {
  final List<dynamic> tempRecipeList = [];
  await firestore.collection('Recipes').get().then((QuerySnapshot querySnapshot) => {
    querySnapshot.docs.forEach((doc) {
      Map<String, dynamic> recipeMap = doc.data() as Map<String, dynamic>;
      tempRecipeList.add(recipeMap);
    })
  });
  popularRecipes = tempRecipeList;
  return popularRecipes;
}

Future<List<dynamic>> carryCategory() async {
  final List<dynamic> tempCategoriesList = [];
  await firestore.collection('categories').get().then((QuerySnapshot querySnapshot) => {
    querySnapshot.docs.forEach((doc) {
      Map<String, dynamic> categoriesMap = doc.data() as Map<String, dynamic>;
      tempCategoriesList.add(categoriesMap);
    })
  });
  category = tempCategoriesList;
  return category;

}

Future<List<dynamic>> carryRecipeCategories(String categories) async {
  final List<dynamic> tempCategoryList = [];
  await firestore.collection("Recipes").where('category', isEqualTo: categories).get().then((QuerySnapshot querySnapshot) => {
    querySnapshot.docs.forEach((doc) {
      Map<String, dynamic>? categoryMap = doc.data() as Map<String, dynamic>?;
      tempCategoryList.add(categoryMap);
    })
  });
  recipeCategories = tempCategoryList;
  return recipeCategories;

}
}



final RecipeProvider = _recipe_provider();