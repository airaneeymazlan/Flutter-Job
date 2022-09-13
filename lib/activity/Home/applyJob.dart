import 'package:flutter/material.dart';
import 'package:sandbox/activity/Home/fileUpload.dart';

class ApplyJob extends StatefulWidget {
  const ApplyJob({Key? key}) : super(key: key);

  @override
  State<ApplyJob> createState() => _ApplyJobState();
}

class _ApplyJobState extends State<ApplyJob> {
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
      body: Container(
        padding: const EdgeInsets.all(16.0),
        //child: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const Text('Register Details',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30.0,
                      fontWeight: FontWeight.w500,
                    )),
                const SizedBox(
                  height: 47,
                ),
                const Text(
                  'Full Name',
                ),
                const SizedBox(
                  height: 12,
                ),
                const TextField(
                  textAlign: TextAlign.left,
                  keyboardType: TextInputType.text,
                  // decoration: InputDecoration(
                  //   hintText: "Name",
                  //   hintStyle: TextStyle(fontSize: 12),
                  // ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    //labelText: 'Name,
                    //labelStyle: TextStyle(color: Colors.grey),
                    filled: true,
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                  ),
                ),
                const SizedBox(
                  height: 28,
                ),
                const Text(
                  'Email',
                ),
                const SizedBox(
                  height: 12,
                ),
                const TextField(
                  textAlign: TextAlign.left,
                  keyboardType: TextInputType.text,
                  // decoration: InputDecoration(
                  //   hintText: "Email",
                  //   hintStyle: TextStyle(fontSize: 12),
                  // ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    //labelText: 'Email',
                    //labelStyle: TextStyle(color: Colors.grey),
                    filled: true,
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                  ),
                ),
                const SizedBox(
                  height: 28,
                ),
                const Text(
                  'Contact Number',
                ),
                const SizedBox(
                  height: 12,
                ),
                const TextField(
                  textAlign: TextAlign.left,
                  keyboardType: TextInputType.text,
                  // decoration: InputDecoration(
                  //   hintText: "Contact Number",
                  //   hintStyle: TextStyle(fontSize: 12),
                  // ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    //labelText: 'Contact Number,
                    //labelStyle: TextStyle(color: Colors.grey),
                    filled: true,
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
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
                        "NEXT",
                        style: TextStyle(
                            fontSize: 14,
                            letterSpacing: 2.2,
                            color: Colors.white),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const FileUpload()));
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.black),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        //),
      ),
    );
  }
}
