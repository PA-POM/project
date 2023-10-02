import 'package:classifly_cat/classification/image.dart';
import 'package:classifly_cat/constants.dart';
import 'package:classifly_cat/pages/home.dart';

import 'package:flutter/material.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({super.key});

  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  int currentIndex = 0;

  // Define the screens or pages you want to switch between
  final List<Widget> pages = [
    // Your first screen or page
    const HomeScreen(),
    // Your second screen or page
    const PickImageCamera(),
    // Your third screen or page
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: ClipRRect(
        child: BottomNavigationBar(
          backgroundColor: Yellowbrown,
          iconSize: 40,
          selectedIconTheme: const IconThemeData(color: White),
          unselectedIconTheme: const IconThemeData(color: White),
          selectedItemColor: White,
          unselectedItemColor: Colors.white54,
          selectedFontSize: 16.0,
          unselectedFontSize: 14.0,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.camera),
              label: 'Classification',
            ),
          ],
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
        ),
      ),
    );
  }
}
