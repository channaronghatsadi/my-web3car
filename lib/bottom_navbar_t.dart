

import 'package:flutter/material.dart';
import 'package:my_api/bottom_navi/about_page.dart';
import 'package:my_api/bottom_navi/contact.dart';
import 'package:my_api/bottom_navi/edit.dart';
import 'package:my_api/bottom_navi/favorite.dart';
import 'package:my_api/bottom_navi/home.dart';
import 'package:my_api/bottom_navi/profile.dart';
import 'package:my_api/bottom_navi/service.dart';
import 'package:my_api/bottom_navi/setting.dart';
import 'package:my_api/screens/welcome_screen.dart';

class MyButtomNavBar extends StatefulWidget {
  const MyButtomNavBar({super.key});

  @override
  State<MyButtomNavBar> createState() => _MyButtomNavBarState();
}

class _MyButtomNavBarState extends State<MyButtomNavBar> {
  int myCurrentIndex = 0;
  List page = const [
    HomePage(),
    FavoritePage(),
    SettingPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('threecar'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('User'),
              accountEmail: Text('User@gmail.com'),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                //  child: Image.asset('lib/imges/999.jpg'),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.search),
              title: Text('ค้นหารถยนต์'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const AboutPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.sell),
              title: Text('ขายรถ'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ContactPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('ติดต่อเรา'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ServicePage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('แก้ไขข้อมูล'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const editPage()));
              },
            ),
            ListTile(
              leading: Icon(Icons.outbox),
              title: Text('ออกจากระบบ'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => welcome_screen()));
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        // color: Colors.teal,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              blurRadius: 25,
              offset: const Offset(8, 20),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            selectedItemColor: Colors.redAccent,
            unselectedItemColor: Colors.black,
            currentIndex: myCurrentIndex,
            onTap: (index) {
              setState(() {
                myCurrentIndex = index;
              });
            },
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite), label: "Favorit"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: "Setting"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline), label: "Home"),
            ],
          ),
        ),
      ),
      body: page[myCurrentIndex],
    );
  }
}
