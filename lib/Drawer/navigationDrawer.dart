import 'package:flutter/material.dart';
import 'package:sandbox/Drawer/mainPage.dart';

class NavigationDrawer extends StatefulWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  State<NavigationDrawer> createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  @override
  Widget build(BuildContext context) => Drawer(
        width: MediaQuery.of(context).size.width * 0.7,
        backgroundColor: Colors.white,
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                HeaderDrawer(),
                MyDrawerList(context)
              ],
            ),
          ),
        ),
      );
}

Widget HeaderDrawer() {
  return Container(
    color: Colors.white,
    width: double.infinity,
    height: 100,
    padding: EdgeInsets.only(top: 20.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            SizedBox(
              width: 15,
            ),
            Align(
              alignment: Alignment.topRight,
              child: Image.asset(
                "assets/tarsoft-talent.png",
                height: 50,
              ),
            ),
            const SizedBox(
              width: 13,
            ),
            // const Text(
            //   'Tarsoft Talent',
            //   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            // ),
          ],
        ),
        // Container(
        //   margin: EdgeInsets.only(bottom: 10),
        //   height: 50,
        //   decoration: const BoxDecoration(
        //     color: Colors.white,
        //     shape: BoxShape.circle,
        //     // image: DecorationImage(
        //     //   image: AssetImage('assets/logo.png'),
        //     // ),
        //   ),
        // ),
        // SizedBox(
        //   height: 10,
        // ),
        // const Text(
        //   "AIRANEEY",
        //   style: TextStyle(color: Colors.white, fontSize: 20),
        // ),
      ],
    ),
  );
}

Widget MyDrawerList(context) {
  return Container(
    padding: const EdgeInsets.only(
      top: 10,
    ),
    child: Column(
      //show the list of menu drawer
      children: [
        menuItem(context),
      ],
    ),
  );
}

//This is List Page in Drawer
Widget menuItem(BuildContext context) => Column(
      children: [
        ListTile(
          leading: const Icon(Icons.home_outlined),
          title: const Text('Home'),
          iconColor: Colors.black,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MainPage(),
              ),
            );
          },
        ),
        // ListTile(
        //   leading: const Icon(Icons.favorite_outline_outlined),
        //   iconColor: Colors.black,
        //   title: const Text('Favourites'),
        //   onTap: () {},
        // ),
        ListTile(
          leading: const Icon(Icons.error_outline),
          iconColor: Colors.black,
          title: const Text('About'),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.logout_outlined),
          iconColor: Colors.black,
          title: const Text('Logout'),
          onTap: () {},
        ),
      ],
    );
