import 'package:flutter/material.dart';
import 'package:sandbox/Drawer/mainPage.dart';
import 'package:sandbox/forgotPassword.dart';
import 'package:sandbox/signUp.dart';

class LoginScreen extends StatefulWidget {
  // ignore: use_function_type_syntax_for_parameters
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _passwordTextController = TextEditingController();

  bool isRememberMe = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(16.0),
              //alignment:
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  const SizedBox(
                    height: 30,
                  ),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text("Welcome Back, Login for Continue !",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 22.0,
                          )),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Image.asset(
                      "assets/logo.png",
                      height: 80,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  //Email TextField
                  const TextField(
                      textAlign: TextAlign.left,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: "Email",
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.bold, letterSpacing: 1.8),
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.black,
                        ),
                      )),

                  //Password TextField
                  const TextField(
                    textAlign: TextAlign.left,
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.bold, letterSpacing: 1.8),
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  //Single Row for Remember Me and Forgot Password
                  Row(
                    //MainAxisAlignment.spaceBetween : One at the left, One at the right
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(children: <Widget>[
                        Theme(
                          data: ThemeData(unselectedWidgetColor: Colors.black),
                          child: Checkbox(
                            value: isRememberMe,
                            onChanged: (value) {
                              setState(() {
                                isRememberMe = value!;
                              });
                            },
                          ),
                        ),
                        const Text(
                          "Remember me",
                          style: TextStyle(color: Color(0xFF424242)),
                        ),
                      ]),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ForgotPassword()));
                        },
                        child: const Text(
                          "Forgot Password?",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF424242),
                          ),
                        ),
                      ),
                    ],
                  ),

                  //Login Button
                  Column(
                    children: [
                      const SizedBox(height: 20),
                      MaterialButton(
                        minWidth: double.infinity,
                        height: 60,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MainPage()));
                        },
                        color: const Color(0xFF000000),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: const Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                      )
                    ],
                  ),

                  const SizedBox(
                    height: 28,
                  ),

                  InkWell(
                    child: RichText(
                        text: const TextSpan(children: [
                      TextSpan(
                        text: "Don't Have an Account?",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextSpan(
                        text: " Sign Up",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                      ),
                    ])),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignUp()));
                    },
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
