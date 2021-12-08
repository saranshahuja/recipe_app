import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:recipe_app/Screens/Categories.dart';
import 'package:recipe_app/Screens/RecipeDetail.dart';
import 'package:recipe_app/Screens/home_Screen.dart';
import 'package:recipe_app/Services/start_page.dart';
import 'package:sizer/sizer.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  ///this is saransh
  /// this is josh
  /// This is jeet
  /// This is Shubham Rishi
  ///This is Jahnavi
  ///This is Akshay Raj Bhandari
  // This widget is the root of your application.
  @override 

  ///DO NOT CHANGE THE MAIN FILE!!!!!!
  Widget build(BuildContext context) {
    return ProviderScope(
      child: Sizer(
  builder: (context, orientation, devicetype) {
    return
    MaterialApp(
        title: 'Recipe App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        //appBar
        home: StartPage(),
        routes: <String,WidgetBuilder> {
          'category' : ( BuildContext context ) => CategoriesPage(),
          'detail' : ( BuildContext context ) => detail_page(),
        });

  }),
    ); //MaterialApp
  }
}
