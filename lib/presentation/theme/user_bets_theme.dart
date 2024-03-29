import 'package:flutter/material.dart';
import 'package:offside/presentation/theme/theme_extensions.dart';
import 'package:offside/presentation/theme/widget_theme.dart';

class UserBetsTheme extends WidgetTheme {
  UserBetsTheme(super.theme);

  TextStyle get columnTitle {
    return theme.textTheme.titleMedium!.copyWith(
      color: theme.variant(
        light: const Color(0xff0161a4),
        dark: const Color(0xff9ecaff),
      ),
      fontSize: 14,
    );
  }

  TextStyle get cellValue {
    return theme.textTheme.bodyLarge!;
  }
}
