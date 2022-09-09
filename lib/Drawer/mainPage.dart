//This file fix the app bar and
//navigation bottom bar for each activity page

import 'package:flutter/material.dart';
import 'package:sandbox/activity/homePage.dart';
import 'package:sandbox/activity/inboxPage.dart';
import 'package:sandbox/activity/jobPage.dart';
import 'package:sandbox/activity/profilePage.dart';
import 'package:sandbox/Drawer/navigationDrawer.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentTab = 0;
  final List<Widget> screens = [
    HomePage(),
    JobPage(),
    InboxPage(),
    ProfilePage(),
  ];

  //final PageStorageBucket bucket = PageStorageBucket();
  //Widget currentScreen = HomePage();

  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //title: const Text("Title For All Page"),
        backgroundColor: Colors.black,
        //elevation: 0,
      ),
      endDrawer: const NavigationDrawer(),
      body: screens[currentIndex],

      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          onTap: onTap,
          currentIndex: currentIndex,
          iconSize: 20,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          //showSelectedLabels: false,
          //showUnselectedLabels: false,
          elevation: 5,
          items: const [
            BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
            BottomNavigationBarItem(
                label: "Jobs", icon: Icon(Icons.search_outlined)),
            BottomNavigationBarItem(
                label: "Inbox", icon: Icon(Icons.message_outlined)),
            BottomNavigationBarItem(
                label: "Profile", icon: Icon(Icons.account_circle_outlined)),
          ]),

      // BottomAppBar(
      //     shape: const CircularNotchedRectangle(),
      //     notchMargin: 10,
      //     child: Container(
      //       height: 60,
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment
      //             .spaceEvenly, //The position of Navigation Icon

      //         children: <Widget>[
      //           Row(
      //             crossAxisAlignment: CrossAxisAlignment.center,
      //             children: [
      //               //HOME
      //               MaterialButton(
      //                 minWidth: 25,
      //                 onPressed: () {
      //                   setState(() {
      //                     currentScreen = const HomePage();
      //                     currentTab = 0;
      //                   });
      //                 },
      //                 child: Column(
      //                     mainAxisAlignment: MainAxisAlignment.center,
      //                     children: [
      //                       Icon(
      //                         Icons.home_outlined,
      //                         color:
      //                             currentTab == 0 ? Colors.black : Colors.grey,
      //                       ),
      //                       Text(
      //                         "Home",
      //                         style: TextStyle(
      //                             fontSize: 12,
      //                             color: currentTab == 0
      //                                 ? Colors.black
      //                                 : Colors.grey),
      //                       )
      //                     ]),
      //               ),

      //               //JOBS
      //               MaterialButton(
      //                 minWidth: 25,
      //                 onPressed: () {
      //                   setState(() {
      //                     currentScreen = const JobPage();
      //                     currentTab = 1;
      //                   });
      //                 },
      //                 child: Column(
      //                     mainAxisAlignment: MainAxisAlignment.center,
      //                     children: [
      //                       Icon(
      //                         Icons.search_outlined,
      //                         color:
      //                             currentTab == 1 ? Colors.black : Colors.grey,
      //                       ),
      //                       Text(
      //                         "Jobs",
      //                         style: TextStyle(
      //                             fontSize: 12,
      //                             color: currentTab == 1
      //                                 ? Colors.black
      //                                 : Colors.grey),
      //                       )
      //                     ]),
      //               ),

      //               //INBOX
      //               MaterialButton(
      //                 minWidth: 25,
      //                 onPressed: () {
      //                   setState(() {
      //                     currentScreen = const InboxPage();
      //                     currentTab = 2;
      //                   });
      //                 },
      //                 child: Column(
      //                     mainAxisAlignment: MainAxisAlignment.center,
      //                     children: [
      //                       Icon(
      //                         Icons.message_outlined,
      //                         color:
      //                             currentTab == 2 ? Colors.black : Colors.grey,
      //                       ),
      //                       Text(
      //                         "Inbox",
      //                         style: TextStyle(
      //                             fontSize: 12,
      //                             color: currentTab == 2
      //                                 ? Colors.black
      //                                 : Colors.grey),
      //                       )
      //                     ]),
      //               ),

      //               //PROFILE
      //               MaterialButton(
      //                 minWidth: 25,
      //                 onPressed: () {
      //                   setState(() {
      //                     currentScreen = const ProfilePage();
      //                     currentTab = 3;
      //                   });
      //                 },
      //                 child: Column(
      //                     mainAxisAlignment: MainAxisAlignment.center,
      //                     children: [
      //                       Icon(
      //                         Icons.account_circle_outlined,
      //                         color:
      //                             currentTab == 3 ? Colors.black : Colors.grey,
      //                       ),
      //                       Text(
      //                         "Profile",
      //                         style: TextStyle(
      //                             fontSize: 12,
      //                             color: currentTab == 3
      //                                 ? Colors.black
      //                                 : Colors.grey),
      //                       )
      //                     ]),
      //               ),
      //             ],
      //           )
      //         ],
      //       ),
      //     )),
    );
  }
}
