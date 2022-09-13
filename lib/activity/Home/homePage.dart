import 'package:flutter/material.dart';
import 'package:sandbox/activity/Home/jobList.dart';
import 'package:sandbox/activity/Home/searchBar.dart';
import 'package:sandbox/activity/Home/searchOption.dart';
import 'package:sandbox/activity/Home/jobList.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // const SizedBox(
              //   height: 10,
              // ),
              const Text(
                "Welcome home",
                style: TextStyle(color: Colors.grey, fontSize: 15
                    //fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "Airaneey Mazlan",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              // SizedBox(
              //   height: 18,
              // ),
              SearchBar(),
              SearchOption(),
              JobList(),
            ],
          ),
        ),
      ),
    );
  }
}
