import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class MyThemeData{
  static const Color primaryColor=Color(0xFFB7935F);
  static const Color blackColor=Color(0xFF242424);
  static ThemeData lightTheme=ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme:AppBarTheme(
    centerTitle: true,
    iconTheme: IconThemeData(
      color:primaryColor
    ),
    backgroundColor: Colors.transparent,
    titleTextStyle:GoogleFonts.elMessiri(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      color: Color(0xFF242424),),
    elevation: 0.0,
   ),
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.quicksand(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Color(0xFF242424),),
        bodyMedium:GoogleFonts.elMessiri(
          fontSize: 25,
          color: Color(0xFF242424),
          fontWeight: FontWeight.w600
        ),
      bodySmall: GoogleFonts.elMessiri(
        fontSize: 20,
        color: Color(0xFF242424),
        fontWeight: FontWeight.normal
      )
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: GoogleFonts.aBeeZee(
        color: blackColor
      ),
     showSelectedLabels: false,
     showUnselectedLabels: false,
      backgroundColor:primaryColor,
      selectedItemColor: blackColor,
      unselectedItemColor: Colors.white
    )

  );
  static ThemeData darkTheme=ThemeData();
}