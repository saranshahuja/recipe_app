import 'package:flutter/material.dart';

import 'package:recipe_app/Providers/recipes_provider.dart';


import 'package:recipe_app/Styles/styles.dart';


import 'package:recipe_app/viewModels/recipe_list.dart;


import 'package:recipe_app/Widgets/app_bar_categories.dart';

import 'package:recipe_app/Widgets/titles.dart'

class CategoriaPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final Map<String,dynamic> categoria =  ModalRoute.of(context).settings.arguments;

    return Scaffold(
      backgroundColor: colorBG,
      body: CustomScrollView(
        slivers: <Widget>[
          appBarCategories( 'Pizza' ),
          SliverList(
              delegate: SliverChildListDelegate([
                titles( category['nombre'], titlesStyleCategories ),
                //swiperPopulares(),
                FutureBuilder(
                    future: recipeProvider.cargarRecetaCategorias( categoria['nombre']),
                    initialData: [],
                    builder: ( BuildContext context, AsyncSnapshot snapshot ) {
                      return Column(
                          children: recipeList( context, snapshot.data )
                      );
                    }
                )
              ]))
        ],
      ),
    );
  }

}//Clase
