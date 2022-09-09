import 'package:flutter/material.dart';
import 'package:sandbox/login.dart';

class SignUp extends StatefulWidget {
  // ignore: use_function_type_syntax_for_parameters
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  //TextEditingController _emailTextController = TextEditingController();
  //TextEditingController _passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            leading: GestureDetector(
              child: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            )),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(16.0),
              //alignment:
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text("Sign Up",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  /*Align(
                    alignment: Alignment.bottomCenter,
                    child: Image.asset(
                      "assets/logo.png",
                      height: 80,
                    ),
                  ),*/
                  const SizedBox(
                    height: 20,
                  ),

                  //Name
                  const TextField(
                      textAlign: TextAlign.left,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: "Name",
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.bold, letterSpacing: 1.8),
                        prefixIcon: Icon(
                          Icons.account_circle,
                          color: Colors.black,
                        ),
                      )),
                  const SizedBox(
                    height: 10,
                  ),

                  //Email
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
                  const SizedBox(
                    height: 10,
                  ),

                  //Password
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
                    height: 10,
                  ),

                  //Confirm Password
                  const TextField(
                    textAlign: TextAlign.left,
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Confirm Password",
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.bold, letterSpacing: 1.8),
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),

                  //Reset Button
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
                                  builder: (context) => LoginScreen()));
                        },
                        color: const Color(0xFF000000),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: const Text(
                          "Reset Password",
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
                    height: 25,
                  ),

                  InkWell(
                    child: RichText(
                        text: const TextSpan(children: [
                      TextSpan(
                        text: "Login?",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ])),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                    },
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
