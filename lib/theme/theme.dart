import 'package:flutter/material.dart';

final darkTheme = ThemeData(
  primarySwatch: Colors.orange,
  scaffoldBackgroundColor: const Color.fromARGB(255, 37, 37, 37),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color.fromARGB(255, 37, 37, 37),
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 20,
    ),
    iconTheme: IconThemeData(
      color: Colors.white60,
    ),
  ),
  dividerColor: Colors.white24,
  listTileTheme: const ListTileThemeData(iconColor: Colors.white),
  textTheme: TextTheme(
    bodyMedium: const TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w500,
      fontSize: 20,
    ),
    labelSmall: TextStyle(
      color: Colors.white.withOpacity(0.6),
      fontWeight: FontWeight.w700,
      fontSize: 14,
    ),
  ),
);
