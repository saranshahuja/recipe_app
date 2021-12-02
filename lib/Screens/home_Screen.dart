// ignore_for_file: file_names
//Materials
import 'package:flutter/material.dart';

//Styles
import 'package:recipe_app/Styles/styles.dart';

//Widgets
import 'package:recipe_app/Widgets/app_bar.dart';
import 'package:recipe_app/Widgets/menu_lateral.dart';
import 'package:recipe_app/Widgets/swiper_popular.dart';
import 'package:recipe_app/Widgets/titles.dart';
import 'package:recipe_app/Widgets/swiper_categories.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: menuLateral(context),
        key: _scaffoldKey,
        backgroundColor: colorBG,
        body:CustomScrollView(
          slivers: <Widget>[
            appBar( context, _scaffoldKey ),
            SliverList(
              delegate: SliverChildListDelegate(
                    [
                      Column(
                        children: <Widget>[
                          swiperPopular(),
                          titles('Categories'),
                          swiperCategories(),
                          titles('Popular Recipes')
                        ]
                      )
                    ]
                ),
            )
          ],
        )
    );
}

// class _HomeScreenState extends State<HomeScreen> {
//
//   }
// }
