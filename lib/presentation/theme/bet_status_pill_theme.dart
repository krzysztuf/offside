import 'package:flutter/material.dart';
import 'package:offside/presentation/theme/theme_extensions.dart';
import 'package:offside/presentation/theme/widget_theme.dart';

class BetStatusPillTheme extends WidgetTheme {
  BetStatusPillTheme(super.theme);

  PillPreset get pending => PillPreset(
        theme,
        foreground: theme.variant(
          light: const Color(0xff8b9800),
          dark: const Color(0xffeaff80),
        ),
        background: theme.variant(
          light: const Color(0xfffefff2),
          dark: const Color(0xff51582c),
        ),
      );

  PillPreset get placed => PillPreset(
        theme,
        foreground: theme.variant(
          light: const Color(0xff0f9a0f),
          dark: const Color(0xff80ff80),
        ),
        background: theme.variant(
          light: const Color(0xfff2fff2),
          dark: const Color(0xff2e5a2e),
        ),
      );

  PillPreset get expired => PillPreset(
        theme,
        foreground: theme.variant(
          light: const Color(0xff980000),
          dark: const Color(0xffff8080),
        ),
        background: theme.variant(
          light: const Color(0xfffff2f2),
          dark: const Color(0xff5a2e2e),
        ),
      );
}

class PillPreset {
  final ThemeData theme;
  final Color background;
  final Color foreground;

  PillPreset(
    this.theme, {
    required this.background,
    required this.foreground,
  });

  TextStyle get textStyle => theme.textTheme.labelSmall!.copyWith(color: foreground);

  Color get foregroundMuted => foreground.withOpacity(0.5);
}
