import 'package:flutter/material.dart';
import 'package:recipe_app/Styles/styles.dart';

Widget appBarCategoria(String title) {
  return SliverAppBar(
      backgroundColor: colorBG,
      floating: false,
      pinned: true,
      elevation: 0.0,
      iconTheme: IconThemeData(color: colorIconsAppBar));
}
