import 'package:flutter/material.dart';
import 'package:recipe_app/Styles/styles.dart';
import 'package:recipe_app/Widgets/app_bar.dart';
import 'package:recipe_app/Widgets/menu_lateral.dart';

class CategoriesPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: menuLateral(context),
      key: _scaffoldKey,
      backgroundColor: colorBG,
      body: CustomScrollView(slivers: [appBar(context, _scaffoldKey)]),
    );
  }
}
