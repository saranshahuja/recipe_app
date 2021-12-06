import 'package:flutter/material.dart';


Drawer menuLateral( context ) {
  return Drawer (
    elevation: 0.0,
    child: Container(
      color: colorBG, 
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assests/recipe1.png'),
                fit: BoxFit.cover
              ) //DecorationImage
            ), //BoxDecoration
          
            child: Conainer(
              alignment: Alignment.center,
              child: Text('RECIPE APP', style: styleTextoMenuLateral),
              ) //Container
            ), //DrawerHeader
          
          ListTile(
            leading: Icon(Icons.fastfood, color: colorIcons),
            title: Text('Categories'),
            onTap: () {
              Navigator.pushNamed(context, 'categories');
            } 
          ) //ListTile
          
          ListTile(
            leading: Icon(Icons.help, color: colorIcons),
            title: Text('Help'),
            onTap: () {
              Navigator.pushNamed(context, 'help');
            } 
          ) //ListTile
          
          ],
        ),
      ),
    );
}
