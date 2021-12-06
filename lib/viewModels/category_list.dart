import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:recipe_app/Providers/recipes_provider.dart';



List<Widget> categoryList( BuildContext context){
  final List<Widget> listCategory = [];
  final List<dynamic> category = RecipeProvider.category;
  
  category.forEach((category) {
    final Widget widgetProv = _imageCategory( context, category );
    listCategory.add(widgetProv);
  });
  
  return listCategory;
}

Widget _imageCategory( BuildContext context, Map<String, dynamic> category ) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(context, 'category');
    },
    child: Stack(
      children: [
        Container(
          width: 130.0,
          height: 100.0,
          margin: EdgeInsets.only(right: 10.0, top: 10.0, bottom: 10.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            // child: Image(
            //   //image: networkImage(category['photo']),
            //   fit: BoxFit.cover,
            //   ), //Image
            )), //ClipRRect //Container
        Container(
          alignment: Alignment.bottomLeft,
          padding: EdgeInsets.all(20.0),
          child: Text('Name',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        decorationColor: Colors.black,
                        decorationStyle: TextDecorationStyle.wavy)), // TextStyle // Text
          ) // Controller
        ],
      ), //Stack
    ); //GestureDetector
}
