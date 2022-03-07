import 'package:flutter/material.dart';

class MainTheme {
  static Color mainGray = const Color.fromRGBO(69, 69, 69, 1);
  static Color shadowBlue = const Color.fromRGBO(36, 154, 218, 0.25);
  static Color darkBlue = const Color.fromRGBO(34, 102, 164, 1);
  static Color lightBlue = const Color.fromRGBO(36, 154, 218, 1);
  static Color grayBlue = const Color.fromRGBO(121, 171, 199, 1);
  static Color graySoft = const Color.fromRGBO(247, 248, 252, 1);
  static EdgeInsets mainPadding = const EdgeInsets.symmetric(horizontal: 100);
  static BoxDecoration buttonDecoration = BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      gradient: LinearGradient(
          colors: [darkBlue, lightBlue],
          stops: const [0.1, 0.9],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight));

  static final ThemeData lightTheme = ThemeData.light().copyWith();
}
