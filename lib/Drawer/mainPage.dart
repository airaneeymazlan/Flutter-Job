import 'package:flutter/material.dart';
import 'package:sandbox/activity/Home/homePage.dart';
import 'package:sandbox/activity/Notification/notificationPage.dart';
import 'package:sandbox/activity/Status/statusPage.dart';
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
    StatusPage(),
    NotificationPage(),
    ProfilePage(),
  ];

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
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
                size: 25, // Changing Drawer Icon Size
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        //title: const Text("Title For All Page"),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      drawer: const NavigationDrawer(),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          onTap: onTap,
          currentIndex: currentIndex,
          iconSize: 18,
          selectedItemColor: Colors.orange,
          unselectedItemColor: Colors.grey,
          elevation: 5,
          items: const [
            BottomNavigationBarItem(
                label: "Home", icon: Icon(Icons.home_outlined)),
            BottomNavigationBarItem(
                label: "Status", icon: Icon(Icons.autorenew_rounded)),
            BottomNavigationBarItem(
                label: "Notification", icon: Icon(Icons.message_outlined)),
            BottomNavigationBarItem(
                label: "Profile", icon: Icon(Icons.account_circle_outlined)),
          ]),
    );
  }
}

//autorenew_outlined 
//all_inclusive_outlined