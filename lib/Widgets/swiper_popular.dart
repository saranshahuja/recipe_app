import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class swiperPopular extends StatelessWidget {
  final controller = PageController(initialPage: 1, viewportFraction: 1);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.0,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return PageView(
              children: <Widget>[_target(), _target(), _target(), _target()]);
        },
        itemCount: 1,
        layout: SwiperLayout.DEFAULT,
      ),
    );
  }

  Widget _target() {
    return Container(
      margin: EdgeInsets.all(10.0),
      alignment: AlignmentDirectional.center,
      child: Image(
        image: AssetImage('assets/breakfast.jpg'),
        fit: BoxFit.fill,
      ),
    );
  }
}
