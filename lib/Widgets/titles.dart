import 'package:flutter/material.dart';
import 'package:recipe_app/Styles/styles.dart';

Widget titles( String text) {
  return Container(
    alignment: AlignmentDirectional.topStart,
    margin: EdgeInsets.only(left:30.0),
    child: Text(text, style: titlesStyle,)
  );
}