import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sandbox/getStarted.dart';
import 'package:sandbox/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => LoginScreen(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/tarsoft-talent.png',
              fit: BoxFit.fill,
              height: 70,
            ),
            const SizedBox(
              height: 20,
            ),
            // const CircularProgressIndicator(
            //   valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            // )
          ],
        ),
      ),
    );
  }
}
