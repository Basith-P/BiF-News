import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var themeData = ThemeData.dark().copyWith(
  scaffoldBackgroundColor: const Color(0xff111214),
  textTheme: ThemeData.dark().textTheme.copyWith(
        headline3: GoogleFonts.nunito(
          color: const Color(0xffFEFFFF),
          fontWeight: FontWeight.bold,
          height: 1.4,
        ),
        headline5: GoogleFonts.nunito(
          color: const Color(0xffFEFFFF),
        ),
        headline6: GoogleFonts.nunito(
          color: const Color(0xffFEFFFF),
        ),
      ),
);
