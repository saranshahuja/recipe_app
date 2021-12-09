// ignore_for_file: file_names
//Materials
import 'package:flutter/material.dart';
import 'package:recipe_app/Providers/recipes_provider.dart';
import 'package:sizer/sizer.dart';

//Styles
import 'package:recipe_app/Styles/styles.dart';

//Widgets
import 'package:recipe_app/Widgets/app_bar.dart';
import 'package:recipe_app/Widgets/menu_lateral.dart';
import 'package:recipe_app/Widgets/swiper_categories.dart';
import 'package:recipe_app/Widgets/swiper_popular.dart';
import 'package:recipe_app/Widgets/titles.dart';
import 'package:recipe_app/viewModels/recipe_list.dart';

class HomeScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    RecipeProvider.loadPopularRecipes();

    return Scaffold(
        drawer: menuLateral(context),
        key: _scaffoldKey,
        backgroundColor: colorBG,
        body: CustomScrollView(
          slivers: <Widget>[
            appBar(context, _scaffoldKey),
            SliverList(
                delegate: SliverChildListDelegate([
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB( 30,10,20,10 ),
                    child: Row(
                      children: [
                        Text('Bits and Bytes', style: TextStyle(
                            fontFamily: 'PlayfairDisplay-Bold',
                            fontWeight: FontWeight.bold,
                            color: colorTitle,
                            fontSize: 32.0
                        ),),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 10),
                    child: Container(
                      
                      width: 90.w,
                      child: ClipRRect(

                        borderRadius: BorderRadius.circular(15),
                        child: Image(

                          image: AssetImage('assets/homescreen.jpg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  //swiperPopular(),
                  titles('Categories', titlesStyle),
                  swiperCategories(),
                  titles('Popular Recipes', titlesStyle),
                  FutureBuilder(
                      future: RecipeProvider.loadPopularRecipes(),
                      initialData: [],
                      builder: (BuildContext context, snapshot) {
                        return Column(
                          children: recipeList(
                              context, snapshot.data as List<dynamic>),
                        );
                      })
                ],
              )
            ]))
          ],
        ));
  }
}
