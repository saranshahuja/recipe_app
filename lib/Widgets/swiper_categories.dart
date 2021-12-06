import 'package:flutter/material.dart';

import 'package:flutter_swiper/flutter_swiper.dart';

class SwiperCategories  extends StatelessWidget {

  final controller = PageController(
    initialPage: 1,
    viewportFraction: 0.3
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110.0,
      child: Swiper(
          itemBuilder: ( BuildContext context, int index ) {
            return FutureBuilder(
              future: recipeProvider.bodyCategory(),
              intialData: [],
              builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
                return pageView( 
                  controller: controller,
                  children: <Widget>[
                    
                    ], //<Widget>[]  
                ); //PageView
              }; 
            );
          },
          itemCount: 3,
          layout: SwiperLayout.DEFAULT,
      ),
    );
  }

  Widget _imageCategory() {
    return GestureDetector(
      onTap: () {
        print('temp');
      },
      child: Container(
        child: Image(
          image: AssetImage('assets/category.png')
        )
      )
    );
  }
}
