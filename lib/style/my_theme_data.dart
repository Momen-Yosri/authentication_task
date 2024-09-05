import 'package:authentication_task/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Color(0xffFAFAFB),
    appBarTheme: AppBarTheme(elevation: 0),
    textTheme: TextTheme(
        bodyLarge: GoogleFonts.manrope(
            color: Color(0xff23374D),
            fontSize: 15,
            fontWeight: FontWeight.w700),
        bodyMedium: GoogleFonts.manrope(
            color: Color(0xff8A959E),
            fontSize: 13,
            fontWeight: FontWeight.w400),
        bodySmall: GoogleFonts.manrope(
            color: MyColors.lightPrimaryColor,
            fontSize: 14,
            fontWeight: FontWeight.w600),
        headlineLarge: GoogleFonts.manrope(
            color: MyColors.blackColor,
            fontSize: 25,
            fontWeight: FontWeight.w600),
        headlineMedium: GoogleFonts.manrope(
            color: MyColors.lightPrimaryColor,
            fontSize: 20,
            fontWeight: FontWeight.w700),
        headlineSmall: GoogleFonts.manrope(
            color: MyColors.greyColor,
            fontSize: 14,
            fontWeight: FontWeight.w600)),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Color(0xB3004182)),
          foregroundColor: MaterialStateProperty.all(Colors.white)),
    ),
  );
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Color(0xff060E1E),
    appBarTheme: AppBarTheme(elevation: 0,backgroundColor: Colors.red),
    textTheme: TextTheme(
        bodyLarge: GoogleFonts.manrope(
            color: Color(0xff23374D),
            fontSize: 15,
            fontWeight: FontWeight.w700),
        bodyMedium: GoogleFonts.manrope(
            color: Color(0xff8A959E),
            fontSize: 13,
            fontWeight: FontWeight.w400),
        bodySmall: GoogleFonts.manrope(
            color: MyColors.lightPrimaryColor,
            fontSize: 14,
            fontWeight: FontWeight.w600),
        headlineLarge: GoogleFonts.manrope(
            color: MyColors.blackColor,
            fontSize: 25,
            fontWeight: FontWeight.w600),
        headlineMedium: GoogleFonts.manrope(
            color: MyColors.lightPrimaryColor,
            fontSize: 20,
            fontWeight: FontWeight.w700),
        headlineSmall: GoogleFonts.manrope(
            color: MyColors.greyColor,
            fontSize: 14,
            fontWeight: FontWeight.w600)),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Color(0xB3004182)),
          foregroundColor: MaterialStateProperty.all(Colors.white)),
    ),
  );
}
