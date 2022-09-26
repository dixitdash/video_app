import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  //Light Theme
  static Color primaryColor = const Color(0xffF97642);
  static Color primaryLightColor = const Color(0xffffa76f);
  static Color primaryDarkColor = const Color(0xffc04615);

  static Color transparentColor = const Color(0xffFB946A);
  static Color secondaryColor = const Color(0xff02D285);
  static Color whiteColor = const Color(0xffffffff);


  //Dark theme
  static Color darkPrimaryColor = const Color(0xff000000);
  static Color darkPrimaryLightColor = const Color(0xff2c2c2c);
  static Color darkPrimaryDarkColor = const Color(0xff000000);

  static ThemeData lightTheme() {
    return ThemeData(
      primaryColor: primaryColor,
      primaryColorLight: primaryLightColor,
      primaryColorDark: primaryDarkColor,
      scaffoldBackgroundColor: primaryColor,
      colorScheme: ColorScheme.light(secondary: secondaryColor),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      textTheme: GoogleFonts.varelaRoundTextTheme().copyWith(bodyText2: TextStyle(color: whiteColor, fontWeight: FontWeight.w700)),
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

  static ThemeData darkTheme() {
    return ThemeData(
      primaryColor: darkPrimaryColor,
      primaryColorLight: darkPrimaryLightColor,
      primaryColorDark: darkPrimaryDarkColor,
      scaffoldBackgroundColor: darkPrimaryColor,
      colorScheme: ColorScheme.light(secondary: secondaryColor),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      textTheme: GoogleFonts.varelaRoundTextTheme()
          .copyWith(bodyText2: TextStyle(color: whiteColor, fontWeight: FontWeight.w700), button: TextStyle(color: whiteColor, fontWeight: FontWeight.w700)),
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
