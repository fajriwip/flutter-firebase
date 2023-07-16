import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData appTheme = ThemeData(
  fontFamily: GoogleFonts.nunito().fontFamily,
  bottomAppBarTheme: const BottomAppBarTheme(color: Colors.black87),
  brightness: Brightness.dark,
  textTheme: const TextTheme(
    bodyMedium: TextStyle(fontSize: 18),
    bodySmall: TextStyle(fontSize: 16),
    labelLarge: TextStyle(
      letterSpacing: 1.5,
      fontWeight: FontWeight.bold,
    ),
    displayMedium: TextStyle(fontWeight: FontWeight.bold),
    titleSmall: TextStyle(color: Colors.grey),
  ),
  buttonTheme: const ButtonThemeData(),
);
