import 'package:flutter/material.dart';

class CColors {
  CColors._();

  // App Basic Colors
  static const Color primary = Color(0xFF0091EA);
  static const Color secondary = Color(0xFF0D47A1);
  static const Color accent = Color(0xFFb0c7ff);

  // Gradient Colors
  static const Gradient linearGradient = LinearGradient(
    begin: Alignment(0.0, 0.0),
    end: Alignment(0.707, -0.707),
    colors: [Color(0xffff9a9e), Color(0xfffad0c4), Color(0xfffad0c4)],
  );

  // Text Colors
  static const Color textprimary = Color(0xFF0091EA);
  static const Color textsecondary = Color(0xFF6C7570);
  static const Color textWhite = Colors.white;

  //Background Colors
  static const Color light = Color(0xFFF6F6F6);
  static const Color dark = Color(0xFF272727);
  static const Color primaryBackground = Color(0xFFF3F5FF);

  // Background Container Colors
  static const Color lightContainer = Color(0xFFF6F6F6);
  static const Color darkContainer = Color.fromRGBO(255, 255, 255, 0.1);

  // Button Colors
  static const Color buttonprimary = Color(0xFF0091EA);
  static const Color buttonsecondary = Color(0xFF6C7570);
  static const Color buttondisabled = Color(0xFFC4C4C4);

  // Border Colors
  static const Color borderprimary = Color(0xFFD9D9D9);
  static const Color bordersecondary = Color(0xFFE6E6E6);

  // Error and Validation Colors
  static const Color error = Color(0xFFD32F2F);
  static const Color success = Color(0xFF388E3C);
  static const Color warning = Color(0xFFF57C00);
  static const Color info = Color(0xFF1976D2);

  // Neutral Shades
  static const Color black = Color(0xFF232323);
  static const Color darkergrey = Color(0xFF4F4F4F);
  static const Color darkgrey = Color(0xFF939393);
  static const Color grey = Color(0xFFE0E0E0);
  static const Color softgrey = Color(0xFFF4F4F4);
  static const Color lightgrey = Color(0xFFF9F9F9);
  static const Color white = Color(0xFFFFFFFF);
}
