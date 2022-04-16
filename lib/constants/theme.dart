import 'package:flutter/material.dart';

ThemeData getTheme() {
  return ThemeData(
      scaffoldBackgroundColor: const Color(0xff212328),
      primaryColor: const Color(0xff3A82F7),
      textTheme: const TextTheme(
          headline1: TextStyle(
              fontSize: 34,
              color: Color(0xffECEFF4),
              fontWeight: FontWeight.bold),
          headline4: TextStyle(color: Color(0xffECEFF4), fontSize: 16)),
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(color: const Color(0xffECEFF4).withOpacity(0.3)),
        filled: true,
        fillColor: const Color(0xff32353B),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(8.0),
        ),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 12, horizontal: 18),
        labelStyle: const TextStyle(
          fontSize: 18,
          decorationColor: Colors.white,
        ),
      ));
}
