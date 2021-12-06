import 'package:flutter/material.dart';
import 'package:recipe_app/Styles/styles.dart';

Drawer menuLateral(context) {
  return Drawer(
    elevation: 0.0,
    child: Container(
      color: colorBG,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/chicken-tandori-1526595014.jpg'),
                      fit: BoxFit.cover)),
              child: Container(
                alignment: Alignment.center,
                child: Text('RECIPE APP', style: styleTextMenuLateral),
              )),
          ListTile(
            leading: Icon(Icons.all_inclusive, color: colorIcons),
            title: Text('All Recipes'),
            onTap: () {
              print('Continue browsing');
            },
          ),
          ListTile(
            leading: Icon(Icons.fastfood, color: colorIcons),
            title: Text('Categories'),
            onTap: () {
              print('Continue browsing');
            },
          ),
          ListTile(
            leading: Icon(Icons.help, color: colorIcons),
            title: Text('Help'),
            onTap: () {
              print('Continue browsing');
            },
          )
        ],
      ),
    ),
  );
}
