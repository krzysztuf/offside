import 'package:flutter/material.dart';
import 'package:offside/presentation/theme/theme_extensions.dart';
import 'package:offside/presentation/theme/widget_theme.dart';

import 'color_preset.dart';

class BetStatusPillTheme extends WidgetTheme {
  BetStatusPillTheme(super.theme);

  ColorPreset get pending => ColorPreset(
        theme,
        foreground: theme.variant(
          light: const Color(0xff8b9800),
          dark: const Color(0xffeaff80),
        ),
        background: theme.variant(
          light: const Color(0xfffdffe6),
          dark: const Color(0xff51582c),
        ),
      );

  ColorPreset get placed => ColorPreset(
        theme,
        foreground: theme.variant(
          light: const Color(0xff0f9a0f),
          dark: const Color(0xff80ff80),
        ),
        background: theme.variant(
          light: const Color(0xffe6ffe6),
          dark: const Color(0xff2e5a2e),
        ),
      );

  ColorPreset get expired => ColorPreset(
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
}
