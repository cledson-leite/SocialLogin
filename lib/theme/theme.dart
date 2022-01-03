import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData theme = ThemeData(
    fontFamily: 'Roboto',
  ).copyWith(
    scaffoldBackgroundColor: const Color(0xff0a0a10),
    colorScheme: ThemeData().colorScheme.copyWith(
          primary: const Color(0xff0a0a10),
          secondary: const Color(0xffd93856),
        ),
    textTheme: ThemeData().textTheme.copyWith(
          headline1: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 28,
            color: Color(0xffffffff),
          ),
          bodyText1: const TextStyle(
            fontSize: 14,
            color: Color.fromRGBO(255, 255, 255, .6),
          ),
        ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        textStyle: const TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 14,
          color: Color(0xffffffff),
        ),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: TextButton.styleFrom(
        textStyle: const TextStyle(
          fontSize: 17,
          color: Color(0xffffffff),
        ),
      ),
    ),
  );
}
