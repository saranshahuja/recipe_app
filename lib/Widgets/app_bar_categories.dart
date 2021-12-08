import 'package:flutter/material.dart';
import 'package:recipe_app/Styles/styles.dart';

Widget appBarCategory(String title) {
  return SliverAppBar(
      backgroundColor: colorBG,
      floating: false,
      pinned: true,
      elevation: 0.0,
      iconTheme: IconThemeData(color: colorIconsAppBar));
}
