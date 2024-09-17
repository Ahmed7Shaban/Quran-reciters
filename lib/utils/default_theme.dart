import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class DefaultTheme {
  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white, // Light theme background color
    brightness: Brightness.light,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      toolbarHeight: 130,
      backgroundColor: AppColors.cocoaBrown,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      titleTextStyle: GoogleFonts.cairo(
        textStyle: TextStyle(
          fontWeight: FontWeight.w900,
          fontSize: 30,
          color: Colors.white,
        ),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 4.0,
        backgroundColor: AppColors.ebony,
        padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 25.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(63),
        ),
      ),
    ),
    iconTheme: IconThemeData(
      size: 30,
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.grey[900], // Dark theme background color
    brightness: Brightness.dark,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      toolbarHeight: 130,
      backgroundColor: AppColors.cocoaBrown,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      titleTextStyle: GoogleFonts.cairo(
        textStyle: TextStyle(
          fontWeight: FontWeight.w900,
          fontSize: 30,
          color: Colors.white,
        ),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 4.0,
        backgroundColor: AppColors.revolver,
        padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 25.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(63),
        ),
      ),
    ),
    iconTheme: IconThemeData(
      size: 30,
    ),
  );
}
