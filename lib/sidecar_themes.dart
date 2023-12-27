import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class SidecarThemes {
  static light(BuildContext context) {
    final roboto = GoogleFonts.robotoFlexTextTheme();
    return ThemeData.light(useMaterial3: true).copyWith(
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.blue,
      ),
      textTheme: roboto.copyWith(
        bodySmall: roboto.bodySmall!.copyWith(
          fontSize: 12,
          color: roboto.bodySmall!.moreOpaque(0.5),
        ),
        titleMedium: roboto.titleMedium!.copyWith(
          color: roboto.titleMedium!.moreOpaque(0.6),
        ),
      ),
    );
  }

  static dark(BuildContext context) {
    return ThemeData.dark(useMaterial3: true).copyWith(
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.blue,
        brightness: Brightness.dark,
      ),
      textTheme: GoogleFonts.robotoFlexTextTheme(
        ThemeData.dark().textTheme,
      ),
    );
  }
}

extension on TextStyle {
  Color moreOpaque(double opacity) {
    return color!.withOpacity(opacity);
  }
}
