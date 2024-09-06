import 'package:authentication_task/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static final ThemeData lightTheme = ThemeData(
    
    brightness: Brightness.light,
    appBarTheme: AppBarTheme(elevation: 0,color: Colors.white),
    scaffoldBackgroundColor: Color(0xffFFFFFF),
    textTheme: TextTheme(
      titleLarge:GoogleFonts.manrope(
            color: Color(0xff004182),
            fontSize: 20,
            fontWeight: FontWeight.w700) ,
      titleSmall: GoogleFonts.manrope(
            color: Color(0xff000000),
            fontSize: 20,
            fontWeight: FontWeight.w700),
        bodyLarge: GoogleFonts.manrope(
            color: Color(0xff000000),
            fontSize: 25,
            fontWeight: FontWeight.w600),
        bodySmall: GoogleFonts.manrope(
            color: Color(0xff8A959E),
            fontSize: 13,
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
        backgroundColor: MaterialStateProperty.all(Color(0xB3004182B2)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ),
        ),
        textStyle: MaterialStateProperty.all(
          GoogleFonts.manrope(
            color: Colors.white,
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
        foregroundColor: MaterialStateProperty.all(Colors.white),
      ),
    ),
  );
    static final ThemeData darkTheme = ThemeData(
    
    brightness: Brightness.light,
    appBarTheme: AppBarTheme(elevation: 0,color: Color(0xff060E1E)),
    scaffoldBackgroundColor: Color(0xff060E1E),
    textTheme: TextTheme(
      titleLarge:GoogleFonts.manrope(
            color: Color(0xffFFFFFF),
            fontSize: 20,
            fontWeight: FontWeight.w700) ,
      titleSmall: GoogleFonts.manrope(
            color: Color(0xff9E9E9E),
            fontSize: 20,
            fontWeight: FontWeight.w700),
        bodyLarge: GoogleFonts.manrope(
            color: Color(0xffFFFFFF),
            fontSize: 25,
            fontWeight: FontWeight.w600),
        bodySmall: GoogleFonts.manrope(
            color: Color(0xff999EA1),
            fontSize: 13,
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
        backgroundColor: MaterialStateProperty.all(Colors.white),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ),
        ),
        textStyle: MaterialStateProperty.all(
          GoogleFonts.manrope(
            color: Colors.black,
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
        foregroundColor: MaterialStateProperty.all(Colors.black),
      ),
    ),
  );
}
