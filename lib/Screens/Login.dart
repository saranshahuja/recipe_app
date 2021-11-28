import 'package:flutter/material.dart';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:recipe_app/Providers/authProvider.dart';
import 'package:recipe_app/Providers/loginProvider.dart';
import 'package:recipe_app/Screens/signup.dart';
import 'package:sizer/sizer.dart';





class Login extends ConsumerWidget {


  void updateEmail(BuildContext context, String email){
    context.read(emailProvider).state=email;
  }
  void updatePassword(BuildContext context, String password){
    context.read(passwordProvider).state=password;
  }

  Widget _buildLogo(){
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.h),
      child: Container(
        width: 20.2.w,
        height: 14.7.h,
        child: Column(
          children: [
            Image(
              fit: BoxFit.fitHeight,
              image: AssetImage(
                'assets/Images/uBudget Logo.png',
              ),
            ),
            FittedBox(
              fit: BoxFit.fitWidth,
              child: Text('uBudget',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.sp,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  Widget _buildEmailRow(BuildContext context, ScopedReader watch){
    return Padding(
      padding: EdgeInsets.all(5),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        onChanged: (value)=> updateEmail(context, value),
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.email),
            labelText: 'Email'
        ),
      ),
    );
  }

  Widget _buildPassword(BuildContext context, ScopedReader watch){
    return Padding(
      padding: EdgeInsets.all(5),
      child: TextFormField(
        keyboardType: TextInputType.text,
        obscureText: true,
        onChanged: (value)=> updatePassword(context, value),
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.vpn_key),
            labelText: 'Password'
        ),
      ),
    );
  }


  Widget _buildForgotPass(){
    return Row(
      mainAxisAlignment:  MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        TextButton(onPressed:(){}, child: Text("Forgot Password?",
          style: TextStyle(color: Colors.white),)
        )
      ],
    );

  }
  Widget _buildLogin(BuildContext context, ScopedReader watch, String email, String password){
    var _auth = watch(authServiesProvider);
    email: email;
    password:password;

    return Row(
      mainAxisAlignment:  MainAxisAlignment.center,
      children: <Widget>[
        Container(
            height: 6.63.h,
            width: 34.6.w,
            child: DecoratedBox(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white,width: 1),
                  borderRadius: BorderRadius.circular(28),
                  gradient: LinearGradient(
                      end: Alignment(0,-1),
                      begin: Alignment(0,1),
                      colors: [Color(0xff014283), Color(0xff0080ff) ]
                  )
              ),
              child: ElevatedButton(
                onPressed: ()=> _auth.SignIn(email, password),
                style: ElevatedButton.styleFrom(primary: Colors.transparent),
                child: Text(
                  'Login', style: TextStyle(
                    color: Colors.white
                ),
                ),
              ),
            )
        )

      ],
    );
  }
  Widget _buildOrRow(){
    return FittedBox(
        fit: BoxFit.scaleDown,
        child: Padding(
          padding: EdgeInsets.only(top: 1.2.h),
          child: Text("- OR -",
            style: TextStyle(fontSize: 13.sp),
          ),
        )
    );
  }

  Widget  _buildSocial(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        GestureDetector(
          onTap: (){},
          child: Container(
            height: 7.1.h,
            width: 7.1.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,

            ),
            child: Icon(Icons.home),
          ),
        )
      ],
    );
  }
  Widget _buildContainer(BuildContext context, ScopedReader watch, String email, String password){

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          child: Container(
            height: 54.h,
            width: 90.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                _buildEmailRow(context  , watch ),
                _buildPassword(context  , watch),
                _buildForgotPass(),
                _buildLogin(context  , watch, email, password),
                _buildOrRow(),
                _buildSocial()
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget _buildSignup(context){

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        TextButton(
          onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => signup())
            );
          },
          child: RichText(
            text: TextSpan(
                children:[
                  TextSpan(
                      text: "Don't have an account yet? ",
                      style: TextStyle(
                        color: Colors.white,
                      )
                  ),
                  TextSpan(
                      text: "Click Here!",
                      style: TextStyle(
                        color: Colors.blue,
                      )

                  )
                ]
            ),
          ),

        ),
      ],
    );
  }

  Widget _buildCLogo(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          height: 14.2.h,
          width: 51.2.w,
          decoration: BoxDecoration(
              image: DecorationImage(fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/Images/Copy of Unnamed Company (1).png',
                  )
              )
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    var email =watch(emailProvider).state;
    var password =watch(passwordProvider).state;
    var _auth = watch(authServiesProvider);
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xff191919),
          resizeToAvoidBottomInset: false,
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildLogo(),
                _buildContainer(context  , watch, email , password),
                _buildSignup(context),
                _buildCLogo(),
              ],
            ),
          )

      ),
    );
  }
}

