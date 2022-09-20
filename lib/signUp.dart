import 'package:flutter/material.dart';
import 'package:sandbox/login.dart';

class SignUp extends StatefulWidget {
  //const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  //TextEditingController _emailTextController = TextEditingController();
  //TextEditingController _passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      // appBar: AppBar(
      //     elevation: 0,
      //     backgroundColor: Colors.orange,
      //     leading: GestureDetector(
      //       child: const Icon(
      //         Icons.arrow_back_ios,
      //         color: Colors.white,
      //       ),
      //       onTap: () {
      //         Navigator.pop(context);
      //       },
      //     )),
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
                    //   height: 2,
                    // ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    const Text(
                      'Create an Account',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    const Text(
                      'Create an account to apply the jobs',
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    //Full Name
                    const Text(
                      'Full Name',
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
                        contentPadding: EdgeInsets.symmetric(vertical: 18),
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.grey,
                        ),
                        hintText: "Full Name",
                        labelStyle: TextStyle(color: Colors.grey),
                        filled: true,
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    //Email
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
                        contentPadding: EdgeInsets.symmetric(vertical: 18),
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
                    //Password
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
                        contentPadding: EdgeInsets.symmetric(vertical: 18),
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
                    SizedBox(
                      height: 25,
                    ),
                    //Confirm Password
                    const Text(
                      'Confirm Password',
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
                        contentPadding: EdgeInsets.symmetric(vertical: 18),
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: Colors.grey,
                        ),
                        hintText: "Confirm Password",
                        labelStyle: TextStyle(color: Colors.grey),
                        filled: true,
                        floatingLabelBehavior: FloatingLabelBehavior.never,
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
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginScreen()));
                          },
                          color: const Color(0xFF000000),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          child: const Text(
                            "Sign up",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
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
