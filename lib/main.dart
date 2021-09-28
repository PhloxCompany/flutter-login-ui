import 'package:flutter/material.dart';

import 'login/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       primaryColor: Colors.white,
        primarySwatch: white,
      ),
      home: LoginPage(),
    );
  }
}
 MaterialColor white = MaterialColor(
  0xFFFFFFFF,
   <int, Color>{
    50:  Color(0xFFFFFFFF),
    100: Color(0xFFFFFFFF),
    200:  Color(0xFFFFFFFF),
    300:  Color(0xFFFFFFFF),
    400:  Color(0xFFFFFFFF),
    500:  Color(0xFFFFFFFF),
    600:  Color(0xFFFFFFFF),
    700:  Color(0xFFFFFFFF),
    800: Color(0xFFFFFFFF),
    900:  Color(0xFFFFFFFF),
  },
);
