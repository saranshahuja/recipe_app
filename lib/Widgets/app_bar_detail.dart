import 'package:flutter/material.dart';
import 'package:recipe_app/Styles/styles.dart';

Widget appBarDetail( String image, {required List<String> recipe}) {
  return SliverAppBar(
    backgroundColor: colorBG,
    expandedHeight: 200.0,
    floating: false,
    pinned: true,
    elevation: 0.0,
    iconTheme: IconThemeData(color: colorIconsAppBar),
    flexibleSpace: FlexibleSpaceBar(
      background: FadeInImage(
          placeholder: NetworkImage(image),
          image: NetworkImage(image),
          fadeInDuration: Duration(milliseconds: 150),
          fit: BoxFit.cover),
    ),
  );
}
