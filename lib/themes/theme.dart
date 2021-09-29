import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';

var themeData = ThemeData.dark().copyWith(
  scaffoldBackgroundColor: const Color(0xff111214),
  appBarTheme: AppBarTheme(
    centerTitle: true,
    backgroundColor: Colors.red[900],
  ),
  textTheme: ThemeData.dark().textTheme.copyWith(
        headline3: GoogleFonts.lato(
          color: const Color(0xffFEFFFF),
          fontWeight: FontWeight.bold,
          height: 1.4,
        ),
        headline5: GoogleFonts.lato(
          color: const Color(0xffFEFFFF),
          fontWeight: FontWeight.bold,
        ),
        headline6: GoogleFonts.lato(
          color: Colors.grey[300],
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
        bodyText1: GoogleFonts.lato(
          color: Colors.grey,
        ),
        bodyText2: GoogleFonts.lato(
          color: const Color(0xffFEFFFF),
          fontSize: 18,
        ),
      ),
);
