import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:recipe_app/Screens/home_Screen.dart';
import 'package:sizer/sizer.dart';
import 'package:recipe_app/Providers/auth_provider.dart';
import 'package:recipe_app/Providers/signup_providers.dart';


class Signup extends ConsumerWidget {
  const Signup({Key? key}) : super(key: key);


  void updateEmail(BuildContext context, String email){
    context.read(signupEmailProvider).state=email;
  }
  void updatePassword(BuildContext context, String password) {
    context
        .read(signupPasswordProvider)
        .state = password;
  }

  void updateConfirmPassword(BuildContext context, String password) {
    context
        .read(signupPasswordProvider)
        .state = password;
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

  Widget _buildEmailrow(BuildContext context, ScopedReader watch,){
    return Padding(
      padding: EdgeInsets.all(5),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        onChanged: (value)=>updateEmail(context, value),
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.email),
            labelText: 'Email'

        ),

      ),

    );

  }
  Widget _buildPass(BuildContext context, ScopedReader watch){

    return Padding(

      padding: EdgeInsets.all(5),
      child: TextFormField(
        keyboardType: TextInputType.text,
        obscureText: true,
        onChanged:(value)=>updatePassword(context, value)
        ,
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.vpn_key),
            labelText: 'Password'
        ),
      ),
    );
  }
  Widget _buildConfPass(BuildContext context, ScopedReader watch){
    bool eye = true;

    return Padding(
      padding: EdgeInsets.all(5),
      child: TextFormField(
        keyboardType: TextInputType.text,
        obscureText: eye,

        onChanged:(value)=>updateConfirmPassword(context, value),
        decoration: InputDecoration(

            prefixIcon: Icon(Icons.vpn_key),

            labelText: 'Confirm password'
        ),
      ),
    );
  }
  Widget _buildSignup(BuildContext context, ScopedReader watch, String email, String password, String confPassword){
    var _auth = watch(authServiesProvider);
    email: email;
    password:password;
    confPassword: confPassword;

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(

        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height:6.63.h ,
            width: 34.6.w,
            child: DecoratedBox(
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
                onPressed:() {
                  Route route= MaterialPageRoute(builder: (context)=> HomeScreen());
                  _auth.signUp(email, password).then((value) => Navigator.pushReplacement(context, route));

                },
                style: ElevatedButton.styleFrom(primary: Color(0xffbadeff)),
                child: Text(
                    'Sign Up', style:TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Rowdies',
                    color: Colors.black
                )
                ),

              ),

            ),
          )
        ],
      ),
    );
  }



  Widget _buildbox(BuildContext context, ScopedReader watch, String email, String password, String confPassword) {

    return Row(

      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          child: Container(
            width: 90.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _buildEmailrow(context  , watch ),
                _buildPass(context, watch ),
                _buildConfPass(context, watch),
                _buildSignup(context  , watch, email, password, confPassword),


              ],
            ),
          ),
        )
      ],
    );



  }


  @override
  Widget build(BuildContext context, ScopedReader watch) {
    var email =watch(signupEmailProvider).state;
    var password =watch(signupPasswordProvider).state;
    var confPassword =watch(signupConfirmPasswordProvider).state;

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xffFAF3F3),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _buildLogo(),
            _buildbox(context  , watch, email , password, confPassword),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: "Already a user? ",
                          style: TextStyle(
                            color: Colors.black,
                          )),
                      TextSpan(
                          text: "Click Here!",
                          style: TextStyle(
                            color: Colors.blue,
                          ))
                    ]),
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}









