import 'package:flutter/material.dart';
import 'package:offside/presentation/theme/theme_extensions.dart';
import 'package:offside/presentation/theme/widget_theme.dart';

class BetStatusPillTheme extends WidgetTheme {
  BetStatusPillTheme(super.theme);

  PillPreset get pending => PillPreset(
        background: theme.variant(
          light: const Color(0xfff9ffb2),
          dark: const Color(0xff51582c),
        ),
        textStyle: theme.textTheme.labelSmall!.copyWith(
          color: theme.variant(
            light: const Color(0xff3e402d),
            dark: const Color(0xffeaff80),
          ),
        ),
      );

  PillPreset get placed => PillPreset(
        background: theme.variant(
          light: const Color(0xffb2ffb2),
          dark: const Color(0xff2e5a2e),
        ),
        textStyle: theme.textTheme.labelSmall!.copyWith(
          color: theme.variant(
            light: const Color(0xff2d402d),
            dark: const Color(0xff80ff80),
          ),
        ),
      );
}

class PillPreset {
  final Color background;
  final TextStyle textStyle;

  PillPreset({
    required this.background,
    required this.textStyle,
  });
}
