import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColor {
  static const Color background = Color(0xFFF0F0E4);
  static const Color secondaryBackground = Color(0xFFE7E4D3);
  static const Color green = Color(0xFF2AAF61);
}

class AppTheme {
  static ThemeData of(BuildContext context) {
    final theme = Theme.of(context);

    return theme.copyWith(
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColor.background,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      scaffoldBackgroundColor: AppColor.background,
      primaryColor: Colors.white,
      accentColor: AppColor.green,
      iconTheme: const IconThemeData(color: Colors.black),
      textTheme: GoogleFonts.montserratTextTheme(),
      primaryTextTheme: GoogleFonts.montserratTextTheme(),
      accentTextTheme: GoogleFonts.montserratTextTheme(),
    );
  }
}
