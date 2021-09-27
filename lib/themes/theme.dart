import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var themeData = ThemeData.dark().copyWith(
  scaffoldBackgroundColor: Colors.grey[900],
  textTheme: ThemeData.light().textTheme.copyWith(
        headline1: GoogleFonts.openSans(
          color: Colors.grey[800],
          fontSize: 36,
          fontWeight: FontWeight.bold,
          height: 1.4,
        ),
        headline6: GoogleFonts.lato(
          height: 1.3,
          fontSize: 18,
          color: Colors.grey[700],
        ),
        headline3: GoogleFonts.raleway(
          height: 1.3,
          fontSize: 22,
          color: Colors.grey[700],
          fontWeight: FontWeight.bold,
        ),
      ),
);
