import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class swiperCategories extends StatelessWidget {
  final controller = PageController(initialPage: 1, viewportFraction: 0.3);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110.0,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return PageView(children: <Widget>[
            _imageCategory(context),
            _imageCategory(context),
            _imageCategory(context),
            _imageCategory(context)
          ]);
        },
        itemCount: 3,
        layout: SwiperLayout.DEFAULT,
      ),
    );
  }

  Widget _imageCategory(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, 'Categories');
        },
        child: Container(child: Image(image: AssetImage('assets/pasta.jpg'))));
  }
}
