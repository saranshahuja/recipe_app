import 'package:flutter/material.dart';
import 'package:recipe_app/Styles/styles.dart';
import 'package:recipe_app/Widgets/app_bar.dart';
import 'package:recipe_app/Widgets/menu_lateral.dart';
import 'package:recipe_app/Providers/recipes_provider.dart';

class CategoriesPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {

    final Object? categories = ModalRoute.of(context)!.settings.arguments;

    return Scaffold(
      drawer: menuLateral(context),
      key: _scaffoldKey,
      backgroundColor: colorBG,
      body: CustomScrollView(slivers: <Widget>[appBar(context, _scaffoldKey),
        FutureBuilder(
            future: RecipeProvider.carryRecipeCategories(categories['name']),
            initialData: [],
            builder: (BuildContext context, ){
              return ;
            }

        )

      ]
      ),
    );
  }
}
