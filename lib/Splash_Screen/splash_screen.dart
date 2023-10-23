import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gold/Home_Page/main_page.dart';
import 'package:gold/Login_Page/login_page.dart';
//import 'package:jar_app_demo/screens/LoginScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                    LoginScreen()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/images/goldappbg.jpg',
      fit: BoxFit.fill,
      //height: 250,
      //width: 250,
    );
  }
}
class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(title:Text("GeeksForGeeks")),
      body: Center(
          child:Text("Home page",textScaleFactor: 2,)
      ),
    );
  }
}