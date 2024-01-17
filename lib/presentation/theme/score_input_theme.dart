import 'package:flutter/material.dart';
import 'package:offside/presentation/theme/theme_extensions.dart';
import 'package:offside/presentation/theme/widget_theme.dart';

class ScoreInputTheme extends WidgetTheme {
  ScoreInputTheme(super.theme);

  TextStyle get textTheme {
    return theme.textTheme.displayMedium!.copyWith(
      fontSize: 36,
      fontWeight: FontWeight.normal,
      color: theme.variant(
        light: const Color(0xff0161a4),
        dark: const Color(0xff9ecaff),
      ),
    );
  }
}
