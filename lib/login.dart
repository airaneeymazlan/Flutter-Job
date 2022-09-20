import 'package:flutter/material.dart';
import 'package:sandbox/Drawer/mainPage.dart';
import 'package:sandbox/activity/Home/homePage.dart';
import 'package:sandbox/forgotPassword.dart';
import 'package:sandbox/signUp.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
      backgroundColor: Colors.orange,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            //color: Colors.orange
            ),
        child: Column(
          children: [
            const SizedBox(
              height: 70,
            ),
            //Image of logo
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60),
                    )),
                padding: EdgeInsets.all(30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // const SizedBox(
                    //   height: 10,
                    // ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    const Text(
                      'Log in to your account',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    const Text(
                      'Please enter the details below to continue',
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      'Email',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)),
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.grey,
                        ),
                        hintText: "Email",
                        labelStyle: TextStyle(color: Colors.grey),
                        filled: true,
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Text(
                      'Password',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)),
                        // focusedBorder: const OutlineInputBorder(
                        //     borderSide: BorderSide(
                        //   color: Colors.orange,
                        // )),
                        // enabledBorder: const OutlineInputBorder(
                        //     borderSide: BorderSide(
                        //   color: Colors.grey,
                        // )),
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: Colors.grey,
                        ),
                        hintText: "Password",
                        labelStyle: TextStyle(color: Colors.grey),
                        filled: true,
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: InkWell(
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
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        const SizedBox(height: 20),
                        MaterialButton(
                          minWidth: double.infinity,
                          height: 60,
                          onPressed: () async {
                            //setEmailData(_emailTextController.text);
                            // or
                            // final SharedPreferences pref =
                            //     await SharedPreferences.getInstance();
                            // pref.setString('email', _emailTextController.text);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const MainPage()));
                          },
                          color: const Color(0xFF000000),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          child: const Text(
                            "Login",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        SizedBox(
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
                                  color: Colors.orange,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                          ])),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUp()));
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
