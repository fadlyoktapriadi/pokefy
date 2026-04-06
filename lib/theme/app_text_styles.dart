import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokefy/theme/app_theme.dart';

class AppTextStyles {

  static final AppTextStyles _instance = AppTextStyles._internal();

  factory AppTextStyles() => _instance;

  AppTextStyles._internal();


  TextStyle iconAppText = GoogleFonts.calSans(
    fontSize: 20,
    color: AppTheme.appColors.primary,
    fontWeight: FontWeight.bold,
  );

  TextStyle header1 = GoogleFonts.poppins(
    fontSize: 24,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );

  TextStyle header2 = GoogleFonts.poppins(
    fontSize: 20,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );

  TextStyle header3 = GoogleFonts.poppins(
    fontSize: 16,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );

  TextStyle bodyLarge = GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  TextStyle bodyMedium = GoogleFonts.poppins(
    fontSize: 14,
    color: Colors.white,
    fontWeight: FontWeight.w500,
  );

  TextStyle bodySmall = GoogleFonts.poppins(
    fontSize: 12,
    color: Colors.white,
    fontWeight: FontWeight.w500,
  );

  TextStyle bodyXSmall = GoogleFonts.poppins(
    fontSize: 10,
    color: Colors.white,
    fontWeight: FontWeight.w500,
  );

}