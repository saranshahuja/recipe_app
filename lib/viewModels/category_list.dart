import 'package:flutter/material.dart';

List<Widget> categoryList( BuildContext context){
  final List<Widget> listCategory - [];
  final List<dynamic> category = recipeProvider.category;
  
  category.forEach((category) {
    final Widget widgetProv = _imageCategory( context, category );
    listCategory.add(widgetProv);
  });
  
  return listCategory;
}

Widget _imageCategory( BuildContext context, Map<String dynamic> category ) {
  return GestureDetector(
    onTap: () {
      Navigator.pushedNamed(context, 'category');
    },
    child: Container(
      child: Image(image: NetworkImage(category['photo'])),
    ), //Container
    ); //GestureDetector
}
