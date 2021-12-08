import 'package:flutter/material.dart';
import 'package:recipe_app/Providers/auth_provider.dart';
import 'package:recipe_app/Screens/Categories.dart';
import 'package:recipe_app/Screens/help_page.dart';
import 'package:recipe_app/Screens/home_Screen.dart';
import 'package:recipe_app/Screens/login_page.dart';
import 'package:recipe_app/Screens/all_recipes.dart';
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
              leading: Icon(Icons.home, color: colorIcons),
              title: Text('Home'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
            ),
            ListTile(
              leading: Icon(Icons.all_inclusive, color: colorIcons),
              title: Text('All Recipes'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => allRecipes()));
              },
            ),
            ListTile(
              leading: Icon(Icons.help, color: colorIcons),
              title: Text('Help'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => helpPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.power_settings_new, color: Colors.red),
              title: Text('Logout', style: TextStyle(
                color: Colors.black,


              ),),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Login()));
                print('logout');
              },
            )
          ],
        ),
      ),
    ),
  );
}
