import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: ExactAssetImage(
                  'assets/images/gold_silver.jpg'
                ),
                fit: BoxFit.cover
              )
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 80 , sigmaY: 80),
              child: Container(
                decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
              ),
            ),
          ),
          Center(
            child: SingleChildScrollView(
              child: Padding(padding: EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Log into',style: TextStyle(fontSize: 32 , color: Colors.white , fontWeight: FontWeight.bold),),
                  SizedBox(height: 4),
                  Text('your account',style: TextStyle(fontSize: 32 , color: Colors.white , fontWeight: FontWeight.bold),),
                  SizedBox(height: 46,),
                  TextField(
                    style: TextStyle(color: Colors.white , fontSize: 22),
                    decoration: InputDecoration(
                      fillColor: Colors.transparent,
                      filled: true,
                      hintStyle: TextStyle(color: Colors.white , fontSize: 18),
                      hintText: 'Username/Email'
                    ),
                  ),
                  SizedBox(height: 12),
                  TextField(
                    style: TextStyle(color: Colors.white , fontSize: 22),
                    decoration: InputDecoration(
                      fillColor: Colors.transparent,
                      filled: true,
                      hintStyle: TextStyle(color: Colors.white , fontSize: 18),
                      hintText: 'Password',
                      suffix: Text('Forget?',style: TextStyle(color: Colors.white ),)
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Checkbox(
                        fillColor: MaterialStateProperty.all(Colors.white),
                        checkColor: Colors.black,
                        activeColor: Colors.white,
                        value: isChecked, onChanged: (value) {
                        setState(() {
                          isChecked = value;
                        });
                      },),
                      Text('remember me',style: TextStyle(color: Colors.white , fontSize: 14),)
                    ],
                  ),
                  SizedBox(height: 18,),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 52,
                    child: MaterialButton(
                      elevation: 26,
                      color: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(28)
                      ),
                      onPressed: (){},
                    child: Text('Log in',style: TextStyle(fontSize: 16 , color: Colors.white),),
                    ),
                  ),
                  SizedBox(height: 18),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 52,
                    child: MaterialButton(
                      elevation: 26,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(28)
                      ),
                      onPressed: (){},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('f  ',style: TextStyle(fontSize: 22 , color: Colors.black , fontWeight: FontWeight.bold),),
                          Text('Log in with Facebook',style: TextStyle(fontSize: 16 , color: Colors.black),),
                        ],
                      ),
                    ),
                  ),
                ],
              ),),
            ),
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 60 , horizontal: 10),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text("don't have an account? Sign up",style: TextStyle(fontSize: 14 , color: Colors.white),),
          ),)
        ],
      ),
    );
  }
}
