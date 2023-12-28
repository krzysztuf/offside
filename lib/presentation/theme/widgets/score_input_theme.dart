import 'package:flutter/material.dart';
import 'package:offside/presentation/theme/theme_extensions.dart';

class ScoreInputTheme {
  final ThemeData theme;

  ScoreInputTheme(this.theme);

  TextStyle get textTheme {
    return theme.textTheme.displayMedium!.copyWith(
      fontSize: 36,
      fontWeight: FontWeight.normal,
      color: theme.brightnessVariant(const Color(0xff0161a4), const Color(0xff9ecaff)),
    );
  }
}
