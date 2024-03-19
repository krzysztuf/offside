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
}
