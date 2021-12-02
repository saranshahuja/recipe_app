import 'package:flutter/material.dart';

Widget appBar( BuildContext context, GlobalKey<ScaffoldState> key ) {
  return SliverAppBar(
    backgroundColor: Color.fromRGBO(244, 252, 255, 1.0),
    floating: false,
    leading: GestureDetector(
      onTap:() {
        print('HI');
      },
      child: Container(
        padding: EdgeInsets.all(15.0),
        child: Image(
          image: AssetImage('assets/menu.png'),
          width:10.0,
          height: 10.0,
        ),
      ),
    ),
    actions: <Widget>[
      Container(
        padding: EdgeInsets.all(15.0),
        child:Icon(
          Icons.search,
          color: Color.fromRGBO(183, 195, 206, 1.0),
          size: 25.0,
        ),
      )
      ],
  );
}