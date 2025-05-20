import 'package:app/firebase_options.dart';
import 'package:app/screens/create_screen.dart';
import 'package:app/screens/editProfile_screen.dart';
import 'package:app/screens/home_screen.dart';
//import 'package:app/screens/newest.dart';
import 'package:app/screens/profile_screen.dart';
import 'package:app/screens/test.dart';
import 'package:app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:app/screens/myPolls.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: mobileBackgroundColor,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: mobileBackgroundColor,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    Placeholder(), // Search screen
    CreateScreen(),
    PollApp(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: mobileBackgroundColor,
        elevation: 0,
        currentIndex: _selectedIndex,
        selectedItemColor: secondaryColor,
        unselectedItemColor: mobileBlueColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline),
            label: 'Create',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: 'My Polls',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
