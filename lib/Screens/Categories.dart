import 'package:flutter/material.dart';
import 'package:recipe_app/src/Styles/styles.dart';
import 'package:recipe_app/src/Widgets/app_bar.dart';
import 'package:recipe_app/src/Widgets/menu_lateral.dart';

class CategoriesPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: menuLateral(context),
      key: _scaffoldKey,
      backgroundColor: colorBG,
      body: CustomScrollView(slivers: <Widgets>[appBar(context, key)]),
    );
  }
}
