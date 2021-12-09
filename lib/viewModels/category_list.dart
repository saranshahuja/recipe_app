import 'package:flutter/material.dart';
import 'package:recipe_app/Providers/recipes_provider.dart';



List<Widget> categoryList( BuildContext context){
  final List<Widget> listCategory = [];
  final List<dynamic> categories = RecipeProvider.category;

  categories.forEach((category) {
    final Widget widgetProv = imageCategory( context, category );
    listCategory.add(widgetProv);
  });
  
  return listCategory;
}

Widget imageCategory( BuildContext context, Map<String, dynamic> category ) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(context, 'category', arguments: category);
    },
    child: Stack(
      children: [
        Container(
          width: 130.0,
          height: 100.0,
          margin: EdgeInsets.only(right: 10.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image(
              image: NetworkImage('${category['photo']}'),
              fit: BoxFit.fill,
              ), //Image
            )), //ClipRRect //Container
        Container(
          alignment: Alignment.bottomLeft,
          padding: EdgeInsets.all(20.0),
          child: Text('${category['name']}',
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
