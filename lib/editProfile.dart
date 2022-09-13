import 'package:flutter/material.dart';
import 'package:sandbox/Drawer/mainPage.dart';
import 'package:sandbox/activity/profilePage.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      //   elevation: 0,
      //   leading: IconButton(
      //     icon: const Icon(
      //       Icons.arrow_back_ios,
      //       color: Colors.black,
      //     ),
      //     onPressed: () {
      //       Navigator.pop(
      //           context, MaterialPageRoute(builder: (context) => MainPage()));
      //     },
      //   ),
      // ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(20.0),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              const Text(
                "Edit Profile",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 15,
              ),
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                          border: Border.all(width: 4, color: Colors.orange),
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 2,
                                blurRadius: 10,
                                color: Colors.black.withOpacity(0.1),
                                offset: const Offset(0, 10))
                          ],
                          shape: BoxShape.circle,
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(""),
                          )),
                    ),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 4,
                              color: Colors.orange,
                            ),
                            color: Colors.white,
                          ),
                          child: const Icon(
                            Icons.edit,
                            color: Colors.grey,
                          ),
                        )),
                  ],
                ),
              ),
              const SizedBox(
                height: 35,
              ),

              buildTextField("Full Name", "NOR AIRANEEY", false),
              buildTextField("Gender", "FEMALE", false),
              // buildTextField("Password", "********", true),
              buildTextField("Date of Birth", "14 DEC 1999", false),
              buildTextField("Location", "MALAYSIA", false),
              buildTextField("Phone Number", "0143499070", false),
              buildTextField("E-mail", "airaneeymazlan@gmail.com", false),

              const SizedBox(
                height: 35,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Cancel Button
                  OutlinedButton(
                    // padding: const EdgeInsets.symmetric(horizontal: 50),
                    // shape: RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.circular(20)),
                    onPressed: () {},
                    child: const Text("CANCEL",
                        style: TextStyle(
                            fontSize: 14,
                            letterSpacing: 2.2,
                            color: Colors.black)),
                  ),
                  //Save Button
                  ElevatedButton(
                    // color: Colors.black,
                    // padding: EdgeInsets.symmetric(horizontal: 50),
                    // elevation: 2,
                    // shape: RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.circular(20)),
                    child: const Text(
                      "SAVE",
                      style: TextStyle(
                          fontSize: 14,
                          letterSpacing: 2.2,
                          color: Colors.white),
                    ),
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.black),
                    ),
                  ),
                ],
              ), //Row
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(
      String labelText, String placeholder, bool isPasswordTextField) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 35.0),
      child: TextField(
        obscureText: isPasswordTextField ? showPassword : false,
        decoration: InputDecoration(
            suffixIcon: isPasswordTextField
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        showPassword = !showPassword;
                      });
                    },
                    icon: const Icon(
                      Icons.remove_red_eye,
                      color: Colors.grey,
                    ),
                  )
                : null,
            contentPadding: const EdgeInsets.only(bottom: 3),
            labelText: labelText,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: placeholder,
            hintStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            )),
      ),
    );
  }
}
