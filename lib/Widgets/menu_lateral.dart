import 'package:flutter/material.dart';
import 'package:recipe_app/Providers/auth_provider.dart';
import 'package:recipe_app/Styles/styles.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Drawer menuLateral(context) {
  return Drawer(

    elevation: 0.0,
    child: SafeArea(
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
                  child: Text('Bits and Bytes', style: styleTextMenuLateral),
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
            ),
            ListTile(
              minVerticalPadding: 1000,
              leading: Icon(Icons.power, color: Colors.red),
              title: Text('Logout',),
              onTap: () {
                print('logout');
              },
            )
          ],
        ),
      ),
    ),
  );
}
