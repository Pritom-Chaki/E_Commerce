import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle myStyle(double size, [Color color, FontWeight fw = FontWeight.w700]) {
  return GoogleFonts.montserrat(fontSize: size, color: color, fontWeight: fw);
}

TextStyle hintTextStyle(
    [double size, Color color, FontWeight fw = FontWeight.w700]) {
  return GoogleFonts.montserrat(
      fontSize: 16.0, color: Colors.black, fontWeight: fw);
}

TextStyle homeHeadTextStyle(
    [double size, Color color, FontWeight fw = FontWeight.w500]) {
  return GoogleFonts.montserrat(
      fontSize: 17.0, color: Colors.black, fontWeight: fw);
}

TextStyle priceTextStyle(
    [double size, Color color, FontWeight fw = FontWeight.w500]) {
  return GoogleFonts.montserrat(
      fontSize: 16.0, color: Color(0xff9b96d6), fontWeight: fw);
}

TextStyle productTitleTextStyle(
    [double size, Color color, FontWeight fw = FontWeight.w500]) {
  return GoogleFonts.montserrat(
      fontSize: 16.0, color: Colors.black, fontWeight: fw);
}

TextStyle productHeadTextStyle(
    [double size, Color color, FontWeight fw = FontWeight.w500]) {
  return GoogleFonts.montserrat(
      fontSize: 18.0, color: Colors.black, fontWeight: fw);
}
