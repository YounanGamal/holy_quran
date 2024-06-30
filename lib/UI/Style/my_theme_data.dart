import 'package:flutter/material.dart';

class MyThemeData {
  static Color lightPrimaryColor = Color(0xFFB7935F);
  static ThemeData lightTheme = ThemeData(

    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: Colors.black),
      color: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),
    cardColor: Colors.white,
    dividerColor: lightPrimaryColor,
    primaryColor: lightPrimaryColor,
    colorScheme: ColorScheme.fromSeed(
      seedColor: lightPrimaryColor,
      primary: lightPrimaryColor,
      onPrimary: Colors.white,
      secondary: Color(0x74B7935F),
      onSecondary: Colors.black,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: Colors.black,
      selectedIconTheme: IconThemeData(
        size: 30,
      ),
      unselectedItemColor: Colors.white,
      backgroundColor: Color(0xFFB7935F),
    ),
    textTheme: TextTheme(
      titleMedium: TextStyle(
        color: Colors.black,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: TextStyle(
        color: Colors.black,
        fontSize: 25,
      ),
      displaySmall: TextStyle(
        color: Colors.black,
        fontSize: 20,
      ),
      labelMedium: TextStyle(
        color: lightPrimaryColor,
        fontSize: 20,
      ),
    ),
  );

  static Color darkPrimaryColor = Color(0xFF141A2E);
  static ThemeData darkTheme = ThemeData(
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: Colors.white),
      color: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
    dividerColor: Color(0xffFACC1D),
    primaryColor: darkPrimaryColor,
    colorScheme: ColorScheme.fromSeed(
      seedColor: darkPrimaryColor,
      primary: Color(0xffFACC1D),
      onPrimary: Color(0xff0F1424),
      secondary: darkPrimaryColor,
      onSecondary: Colors.black,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: Color(0xffFACC1D),
      selectedIconTheme: IconThemeData(
        size: 30,
      ),
      unselectedItemColor: Colors.white,
      backgroundColor: Color(0xFF141A2E),
    ),
    cardColor: Color(0xFF141A2E),
    textTheme: TextTheme(
      titleMedium: TextStyle(
        color: Colors.white,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: TextStyle(
        color: Colors.white,
        fontSize: 25,
      ),
      displaySmall: TextStyle(
        color: Color(0xffFACC1D),
        fontSize: 20,
      ),
      labelMedium: TextStyle(
        color: Color(0xffFACC1D),
        fontSize: 20,
      ),
    ),
  );
}
