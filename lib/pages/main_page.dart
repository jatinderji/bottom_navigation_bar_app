import 'package:bottom_navigation_bar_app/pages/favourite_page.dart';
import 'package:bottom_navigation_bar_app/pages/home_page.dart';
import 'package:bottom_navigation_bar_app/pages/profile_page.dart';
import 'package:bottom_navigation_bar_app/pages/settings_page.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
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
            CurvedNavigationBarItem(
                child: Icon(Icons.favorite_border_rounded), label: 'Favourite'),
            CurvedNavigationBarItem(child: Icon(Icons.home), label: 'Home'),
            CurvedNavigationBarItem(child: Icon(Icons.person), label: 'Profle'),
            CurvedNavigationBarItem(
                child: Icon(Icons.settings), label: 'Settings'),
          ]),
    );
  }
}
