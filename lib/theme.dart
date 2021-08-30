import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Custom Light and Dark Theme
class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.black,
        textTheme: TextTheme(
          headline3: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
        shadowColor: Colors.black12,
        fontFamily: GoogleFonts.poppins().fontFamily,
        cardColor: Colors.white,
        accentColor: Colors.white,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),
      );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.white,
        textTheme: TextTheme(
          headline3: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
        shadowColor: Colors.white12,
        fontFamily: GoogleFonts.poppins().fontFamily,
        cardColor: Colors.black38,
        accentColor: Colors.white,
        appBarTheme: AppBarTheme(
          color: Colors.grey.shade900,
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),
      );

  //Colors
  static Color creamColor = Color(0xfff5f5f5);
  static Color blueColor = Color(0xff403b58);
  static Color lightBlack = Colors.black54;
}
