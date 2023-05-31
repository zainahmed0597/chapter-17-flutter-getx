import 'package:flutter/material.dart';

class Themes {
  final lightTheme = ThemeData.light().copyWith(

    primaryColor: Colors.purple,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.purple
    )
  );
  final darkTheme =
      ThemeData.dark().copyWith();
}
