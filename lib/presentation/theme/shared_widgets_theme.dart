import 'package:flutter/material.dart';
import 'package:offside/presentation/theme/color_preset.dart';
import 'package:offside/presentation/theme/theme_extensions.dart';
import 'package:offside/presentation/theme/widget_theme.dart';

class SharedWidgetsTheme extends WidgetTheme {
  SharedWidgetsTheme(super.theme);

  ColorPreset get beingPlayed => ColorPreset(
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

  ColorPreset get destructive => ColorPreset(
        theme,
        foreground: theme.variant(
          light: const Color(0xff980000),
          dark: const Color(0xffff8080),
        ),
        background: theme.variant(
          light: const Color(0xffffe7e7),
          dark: const Color(0xff5a2e2e),
        ),
      );

  Color get mainPageBackgroundColor => theme.variant(
        light: const Color(0xfffdfdfd),
        dark: const Color(0xff090909),
      );

  Color get noPointsColor => theme.variant(
        light: Colors.red.shade400,
        dark: Colors.red.shade400,
      );

  Color get onePointsColor => theme.variant(
        light: Colors.green.shade500,
        dark: Colors.green.shade300,
      );

  Color get threePointsColor => theme.variant(
        light: Colors.green.shade700,
        dark: Colors.green.shade600,
      );
}
