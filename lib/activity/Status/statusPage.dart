import 'package:flutter/material.dart';

class StatusPage extends StatefulWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  State<StatusPage> createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView(
            children: [
              //Total Application
              InkWell(
                onTap: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.orange,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "1",
                        style: TextStyle(color: Colors.white, fontSize: 50),
                      ),
                      // Icon(
                      //   Icons.home,
                      //   size: 50,
                      //   color: Colors.white,
                      // ),
                      Text(
                        "Total Application",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      )
                    ],
                  ),
                ),
              ),

              //IN PROGRESS
              InkWell(
                onTap: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "1",
                        style: TextStyle(color: Colors.white, fontSize: 50),
                      ),
                      // Icon(
                      //   Icons.search,
                      //   size: 50,
                      //   color: Colors.white,
                      // ),
                      Text(
                        "In Process",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      )
                    ],
                  ),
                ),
              ),

              //CONFIRM
              InkWell(
                onTap: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "0",
                        style: TextStyle(color: Colors.white, fontSize: 50),
                      ),
                      // Icon(
                      //   Icons.settings,
                      //   size: 50,
                      //   color: Colors.white,
                      // ),
                      Text(
                        "Confirm",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      )
                    ],
                  ),
                ),
              ),

              //REJECT
              InkWell(
                onTap: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.red,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "0",
                        style: TextStyle(color: Colors.white, fontSize: 50),
                      ),
                      // Icon(
                      //   Icons.book,
                      //   size: 50,
                      //   color: Colors.white,
                      // ),
                      Text(
                        "Reject",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ),
            ],
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
          ),
        ),
      ),
    );
  }
}
