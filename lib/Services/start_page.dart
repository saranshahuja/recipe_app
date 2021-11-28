import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:recipe_app/Providers/auth_provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:recipe_app/Screens/home_Screen.dart';
import 'package:recipe_app/Screens/login_page.dart';



class StartPage extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _initialization,
        builder: (context, snapshot){
          if(snapshot.hasError){
            return Center(
              child: Text("Oops Something went wrong"),
            );
          }
          if(snapshot.connectionState== ConnectionState.done){

            return AuthChecker();
          }
          return Scaffold(
            body: Container(
              height: MediaQuery.of(context).size.height/3,
              width: MediaQuery.of(context).size.width/3,
              child: Center(

                child: CircularProgressIndicator(),
              ),
            ),
          );
        }
    );
  }
}


class AuthChecker extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final _authState = watch(authStateProvider);

    return _authState.when(
        data: (value){
          if(value!=null){
            return HomeScreen();
          }
          return Login();
        },
        loading: (){
          return Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
        , error: (_,__){
      return Scaffold(
        body: Center(
          child: Text("OOps"),
        ),
      );
    }
    );
  }
}