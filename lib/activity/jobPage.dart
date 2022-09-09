import 'package:flutter/material.dart';

class JobPage extends StatefulWidget {
  const JobPage({ Key? key }) : super(key: key);

  @override
  State<JobPage> createState() => _JobPageState();
}

class _JobPageState extends State<JobPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text(
          "Job Screen",
          style: TextStyle(fontSize: 40),
        ),
      ),
      
    );
  }
}