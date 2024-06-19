import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextTheme textTheme(double contextWidth) => TextTheme(
      displayLarge: GoogleFonts.rancho(
        fontSize: contextWidth / 16,
        color: Colors.blue,
      ),
      displayMedium: GoogleFonts.rancho(
        fontSize: contextWidth / 25.6,
        color: Colors.blue,
      ),
      displaySmall: GoogleFonts.rancho(
        fontSize: contextWidth / 32,
        // color: Colors.blue,
      ),
      headlineLarge: GoogleFonts.rancho(
          // fontSize: contextWidth / 45.2,
          ),
      headlineMedium: GoogleFonts.rancho(
          // fontSize: contextWidth / 64,
          ),
      headlineSmall: GoogleFonts.rancho(
          // fontSize: contextWidth / 76.8,
          ),
    );
