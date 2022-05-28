import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

// COLOR

Color primaryColor = Color(0xff4E72FD);
Color secondaryColor = Color(0xff38ABBE);
Color unselectBarColor = Color(0xff808191);
Color alertColor = Color(0xffED6363);
Color priceColor = Color(0xff2C96F1);
Color transparantColor = Colors.transparent;
Color lineColor = Color(0xff302F37);

Color bg1Color = Color(0xff1F1D2B);
Color bg2Color = Color(0xff2B2937);
Color bg3Color = Color(0xff242231);
Color bg4Color = Color(0xff252836);
Color bg6Color = Color(0xffECEDEF);

Color whiteColor = Color(0xffFFFFFF);

Color textPrimaryColor = Color(0xffF1F0F2);
Color textSecondaryColor = Color(0xff999999);
Color textPriceColor = Color(0xff2C96F1);
Color textSubHeaderColor = Color(0xff504F5E);
Color textBlackColor = Color(0xff2E2E2E);

// DIMENS
double defaultMargin = 20.0;
double defaultBorderRadius = 12.0;

// TEXT

TextStyle textPrimaryStyle = GoogleFonts.poppins(color: textPrimaryColor);

TextStyle textSecondaryStyle = GoogleFonts.poppins(color: textSecondaryColor);

TextStyle textPriceStyle = GoogleFonts.poppins(color: textPriceColor);

TextStyle textAppBarStyle = GoogleFonts.poppins(
    color: textPrimaryColor, fontWeight: medium, fontSize: 18);

TextStyle textHeaderStyle = GoogleFonts.poppins(
    color: textPrimaryColor, fontWeight: semi_bold, fontSize: 24);

TextStyle textHeaderSecondaryStyle = GoogleFonts.poppins(
    color: textPrimaryColor, fontWeight: medium, fontSize: 16);

TextStyle textSubHeaderStyle = GoogleFonts.poppins(color: textSubHeaderColor);

TextStyle textButtonStyle = GoogleFonts.poppins(
    color: textPrimaryColor, fontWeight: medium, fontSize: 16);

// FONT WEIGHT

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semi_bold = FontWeight.w600;
FontWeight bold = FontWeight.w700;

// BUTTON

ButtonStyle buttonPrimaryStyle = TextButton.styleFrom(
  backgroundColor: primaryColor,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(12),
  ),
);
