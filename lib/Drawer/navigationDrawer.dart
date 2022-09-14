import 'package:flutter/material.dart';
import 'package:sandbox/Drawer/mainPage.dart';
import 'package:sandbox/activity/Home/homePage.dart';

class NavigationDrawer extends StatefulWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  State<NavigationDrawer> createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  @override
  Widget build(BuildContext context) => Drawer(
        backgroundColor: Colors.white,
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [HeaderDrawer(), MyDrawerList()],
            ),
          ),
        ),
      );
}

Widget HeaderDrawer() {
  return Container(
    color: Colors.orange,
    width: double.infinity,
    height: 200,
    padding: EdgeInsets.only(top: 20.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 10),
          height: 50,
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            // image: DecorationImage(
            //   image: AssetImage('assets/logo.png'),
            // ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        const Text(
          "AIRANEEY",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ],
    ),
  );
}

Widget MyDrawerList() {
  return Container(
    padding: const EdgeInsets.only(
      top: 15,
    ),
    child: Column(
      //show the list of menu drawer
      children: [
        menuItem(),
      ],
    ),
  );
}

//This is List Page in Drawer
Widget menuItem() => Column(
      children: [
        ListTile(
          leading: const Icon(Icons.home_outlined),
          title: const Text('Home'),
          iconColor: Colors.black,
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.favorite_outline_outlined),
          iconColor: Colors.black,
          title: const Text('Favourites'),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.dashboard_outlined),
          iconColor: Colors.black,
          title: const Text('General'),
          onTap: () {},
        ),
        // ListTile(
        //   leading: const Icon(Icons.category_outlined),
        //   iconColor: Colors.black,
        //   title: const Text('Categories'),
        //   onTap: () {},
        // ),
        // ListTile(
        //   leading: const Icon(Icons.search_outlined),
        //   iconColor: Colors.black,
        //   title: const Text('Search'),
        //   onTap: () {},
        // ),
        // ListTile(
        //   leading: const Icon(Icons.people_outline),
        //   iconColor: Colors.black,
        //   title: const Text('Freelancer'),
        //   onTap: () {},
        // ),
        ListTile(
          leading: const Icon(Icons.logout_outlined),
          iconColor: Colors.black,
          title: const Text('Logout'),
          onTap: () {},
        ),
      ],
    );
