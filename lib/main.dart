import 'package:flutter/material.dart';
import 'package:sandbox/login.dart';
import 'package:sandbox/signUp.dart';
import 'package:sandbox/splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: LoginScreen(),
      // home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
