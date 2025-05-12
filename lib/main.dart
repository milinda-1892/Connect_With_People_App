//import 'package:app/screens/create_screen.dart';
import 'package:app/screens/home_screen.dart';
import 'package:app/screens/newest.dart';
import 'package:app/screens/profile_screen.dart';
import 'package:app/screens/test.dart';
import 'package:app/utils/colors.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

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
      home: CreateScreen(),
    );
  }
}
