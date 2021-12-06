import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

final controller = PageController(
  initialPage: 1,
  viewportFraction: 0.3
);

Widget sliderIngredients () {
  return Container(
    height: 120.0,
    padding: EdgeInsets.only(left:5.0),
    child: Swiper(
      itemCount: 3,
      layout: SwiperLayout.DEFAULT,
      itemBuilder: ( BuildContext context, int index ) {
        return PageView(
          controller: controller,
          children: [
            _image(),
            _image(),
            _image(),
            _image()
          ]
        );
      }
    )
  );
}

Widget _image() {
  return Center(
    child: Image(
      alignment: Alignment.topLeft,
      image: AssetImage('assets/ingredients.png'),
    )
  );
}