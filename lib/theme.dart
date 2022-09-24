import 'package:flutter/material.dart';

class AppTheme {
  static Color backgroundColor = const Color(0xffF97642);
  static Color transparentColor = const Color(0xffFB946A);
  static Color greenColor = const Color(0xff02D285);
  static Color blackColor = const Color(0xff434343);
  static Color whiteColor = const Color(0xffFFFFFF);

  static ThemeData mainTheme() {
    return ThemeData(
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        contentPadding: EdgeInsets.symmetric(
          vertical: 12,
        ),
        isDense: true,
        border: OutlineInputBorder(
          borderSide: BorderSide(),
        ),
      ),
    );
  }
}
