import 'package:flutter/material.dart';
import 'package:recipe_app/Styles/styles.dart';


class helpPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text('Help'), backgroundColor: Color.fromRGBO(243, 198, 36, 1)),
      backgroundColor: colorBG,
      body: CustomScrollView(
          slivers: <Widget>[
            SliverList(
              delegate: SliverChildListDelegate([
                Padding(
                  padding:
                  const EdgeInsets.only(top: 10.0, right: 8.0, bottom: 8.0),
                  child: _HelpBody('text', descriptionRecipeStyle)
                ),
              ])
            )
          ]
        )
      );

  }


}

Widget _HelpBody(String text, TextStyle tstyle) {
  return Container(
    margin: EdgeInsets.only(left: 30.0, right: 30.0, bottom: 20.0),
    child: Text(
      text,
      textAlign: TextAlign.left,
      style: tstyle,
    ),
  );
}