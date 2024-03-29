import 'package:flutter/material.dart';
import 'package:offside/presentation/theme/theme_extensions.dart';
import 'package:offside/presentation/theme/widget_theme.dart';

class UserPageTheme extends WidgetTheme {
  UserPageTheme(super.theme);

  TextStyle get columnTitle => theme.textTheme.titleMedium!.copyWith(
        color: theme.variant(
          light: const Color(0xff0161a4),
          dark: const Color(0xff9ecaff),
        ),
        fontSize: 12,
      );

  TextStyle get cellValue => theme.textTheme.bodyLarge!;

  TextStyle get userStatTitle => theme.textTheme.titleMedium!.copyWith(
        color: theme.variant(
          light: const Color(0xff007fd5),
          dark: const Color(0xff7290b7),
        ),
        fontSize: 12,
      );

  TextStyle get userStatValue => columnTitle.copyWith(fontSize: 36);
}
