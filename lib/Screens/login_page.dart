import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:recipe_app/Providers/auth_provider.dart';
import 'package:recipe_app/Providers/login_provider.dart';
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
      child: Expanded(

        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(45.sp),
              child: Image(
                width: 80.w,
                height: 27.4.h,
                image: AssetImage(
                  'assets/pasta.jpg',
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            FittedBox(
              fit: BoxFit.fitWidth,
              child: Text('Bits and Bytes ',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 32.sp,
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



  Widget _buildLogin(BuildContext context, ScopedReader watch, String email, String password){
    var _auth = watch(authServiesProvider);

    return Row(
      mainAxisAlignment:  MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Container(

              height: 8.63.h,
              width: 46.6.w,
              decoration: BoxDecoration(

                 color: Color(0xffBADEFF),
                  borderRadius: BorderRadius.all(Radius.circular(18.0),),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 5,
                      blurRadius: 10,
                      offset: Offset(1, 5),
                    )
                  ]
              ),

              child: ElevatedButton(
                onPressed: ()=> _auth.SignIn(email, password),
                style: ElevatedButton.styleFrom(primary: Color(0xffBADEFF)),
                child: Text(
                  'Login', style: TextStyle(
                  fontSize: 32,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Rowdies',
                    color: Colors.black
                ),
                ),
              )
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
            height: 44.h,
            width: 90.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                _buildEmailRow(context  , watch ),
                _buildPassword(context  , watch),
                _buildLogin(context  , watch, email, password),
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
                      text: "Not a User yet? ",
                      style: TextStyle(
                        color: Colors.black,
                      )
                  ),
                  TextSpan(
                      text: "Signup!",
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




  @override
  Widget build(BuildContext context, ScopedReader watch) {
    var email =watch(emailProvider).state;
    var password =watch(passwordProvider).state;
    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color(0xffFAF3F3),
          resizeToAvoidBottomInset: false,
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                _buildLogo(),
                _buildContainer(context  , watch, email , password),
                _buildSignup(context),
              ],
            ),
          )

      ),
    );
  }
}

