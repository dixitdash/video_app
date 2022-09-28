import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  //Light Theme
  static Color primaryColor = const Color(0xff3F51B5);

  static Color accentColor = const Color(0xffFF4081);

  static Color primaryLightColor = const Color(0xffffa76f);

  static Color primaryDarkColor = const Color(0xff303F9F);
  static Color backgroundColor = const Color(0xffd1caff);

  static Color transparentColor = const Color(0xffffdec7);
  static Color secondaryColor = const Color(0xff14ae30);
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
      // scaffoldBackgroundColor: backgroundColor,

      colorScheme: ColorScheme.light(
        secondary: secondaryColor,
      ).copyWith(
        secondary: accentColor,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(backgroundColor: const MaterialStatePropertyAll(Colors.amberAccent),
          fixedSize: const MaterialStatePropertyAll(
            Size(
              350,
              50,
            ),
          ),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
      ),


      textTheme: GoogleFonts.varelaRoundTextTheme().copyWith(
        bodyText2: TextStyle(
          color: darkPrimaryColor,
        ),
        button: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w700,
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
      textTheme: GoogleFonts.varelaRoundTextTheme().copyWith(
        bodyText2: TextStyle(
          color: whiteColor,
          fontWeight: FontWeight.w700,
        ),
        button: TextStyle(
          color: whiteColor,
          fontWeight: FontWeight.w700,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(backgroundColor: const MaterialStatePropertyAll(Colors.amberAccent),
          fixedSize: const MaterialStatePropertyAll(
            Size(
              350,
              50,
            ),
          ),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
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
