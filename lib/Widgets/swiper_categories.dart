import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import 'package:recipe_app/Providers/recipes_provider.dart';

import 'package:recipe_app/viewModels/category_list.dart';

class swiperCategories extends StatelessWidget {
  final controller = PageController(initialPage: 1, viewportFraction: 0.3);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110.0,
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: Swiper(

         itemBuilder: (BuildContext context, int index) {
           return FutureBuilder(
             future: RecipeProvider.carryCategory(),
             initialData: [],
             builder: (BuildContext context, AsyncSnapshot snapshot) {
               return PageView(
                   controller: controller, children: categoryList(context));
             },
           );
         },
        itemCount: 1,
         layout: SwiperLayout.DEFAULT,
      ),
    );
  }


} //Clase

