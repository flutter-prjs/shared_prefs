import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'ProfileScreen.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  resetNewLaunch() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
      print('SplashScreen:');
      print(prefs.getBool('newLaunch'));
    if (prefs.containsKey("newLaunch")) {
      prefs.setBool('newLaunch', false);
    } else {
      prefs.setBool('newLaunch', false);      
    }
  }

  @override
  void initState() {
    super.initState();
    // resetNewLaunch();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
              resetNewLaunch();
              return ProfileScreen();
            })));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: Colors.blue,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Splash Screen',
                      style: new TextStyle(color: Colors.white, fontSize: 40)),
                ],
              ),
            )));
  }
}
