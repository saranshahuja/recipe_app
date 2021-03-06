import 'package:flutter/material.dart';
import 'package:recipe_app/Styles/styles.dart';

//styles
Widget textorecipe() {
  return Column(
    children: <Widget>[
      Container(
          alignment: AlignmentDirectional.topStart,
          margin: EdgeInsets.only(left: 30.0, top: 0.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Masala Marinated Tandoori Chicken',
                  textAlign: TextAlign.left,
                  style: titlesRecipeStyle,
                ),
                Text(
                  'Tandoori chiken is always great on the charcoal grill and does not need much help, but I love how this came out...',
                  textAlign: TextAlign.left,
                  style: descriptionRecipeStyle,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  child: Row(children: <Widget>[
                    Expanded(
                        flex: 1,
                        child: Row(children: <Widget>[
                          Icon(Icons.alarm, color: colorIcons),
                          Container(
                              margin: EdgeInsets.only(left: 5.0),
                              child: Text('45 min',
                                  style: TextStyle(
                                      fontFamily: 'Avenir',
                                      fontWeight: FontWeight.bold,
                                      color: colorTitle,
                                      fontSize: 14.0)))
                        ])),
                    Expanded(
                        flex: 2,
                        child: Row(children: <Widget>[
                          Icon(Icons.fastfood, color: colorIcons),
                          Container(
                              child: Text('Medium',
                                  style: TextStyle(
                                      fontFamily: 'Avenir',
                                      fontWeight: FontWeight.bold,
                                      color: colorTitle,
                                      fontSize: 14.0)))
                        ])),
                  ]),
                )
              ]))
    ],
  );
}
