import 'package:flutter/material.dart';
import 'package:recipe_app/Styles/styles.dart';


class helpPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text('Help'), backgroundColor: Color.fromRGBO(15, 55, 91, 1)),
      backgroundColor: colorBG,
      body: CustomScrollView(
          slivers: <Widget>[
            SliverList(
              delegate: SliverChildListDelegate([
                Padding(
                  padding:
                  const EdgeInsets.only(top: 10.0, right: 8.0, bottom: 8.0),
                  child: _helpBody(''
                      'To return to the Home Page at any point, tap the menu button and tap the \'Home\' Button.\n\n'
                      'To view all Recipes, open the menu and tap the \'All Recipes button\'.\n\n'
                      'To logout, open the menu and tap the \'Logout\' Button.\n\n'
                      'To search for a specific recipe click the search icon in the top right and enter your key words.\n\n'
                      'Tip: The search function works best for searching for specific ingredients you want to use, '
                      'for example searching \'Chicken\' will bring up all available chicken recipes!\n\n'
                      'Please direct acny other concerns to help@bitsandbytes.com\n\n'
                  )
                ),
              ])
            )
          ]
        )
      );
  }
}

Widget _helpBody(String text) {
  return Container(
    margin: EdgeInsets.only(left: 30.0, right: 30.0, top:10.0, bottom: 20.0),
    child: Text(
      text,
      style: helpPageTextStyle
    ),
  );
}