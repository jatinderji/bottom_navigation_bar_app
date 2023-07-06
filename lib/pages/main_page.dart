import 'package:bottom_navigation_bar_app/pages/favourite_page.dart';
import 'package:bottom_navigation_bar_app/pages/home_page.dart';
import 'package:bottom_navigation_bar_app/pages/profile_page.dart';
import 'package:bottom_navigation_bar_app/pages/settings_page.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int bottomIndex = 1;
  List<Widget> pages = const [
    FavouritePage(),
    HomePage(),
    ProfilePage(),
    SettingsPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[bottomIndex],
      bottomNavigationBar: CurvedNavigationBar(
          // currentIndex: bottomIndex,
          // showUnselectedLabels: false,
          // showSelectedLabels: true,
          // unselectedItemColor: Colors.grey,
          // selectedItemColor: Colors.purple,
          backgroundColor: Colors.purple,
          buttonBackgroundColor: Colors.yellow,
          index: bottomIndex,
          onTap: (value) {
            setState(() {
              bottomIndex = value;
            });
          },
          items: const [
            Icon(Icons.favorite_border_rounded),
            Icon(Icons.home),
            Icon(Icons.person),
            Icon(Icons.settings)
            // BottomNavigationBarItem(
            //     icon: Icon(Icons.favorite_border_rounded), label: 'Favourite'),
            // BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            // BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profle'),
            // BottomNavigationBarItem(
            //     icon: Icon(Icons.settings), label: 'Settings'),
          ]),
    );
  }
}
