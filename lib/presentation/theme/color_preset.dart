import 'package:flutter/material.dart';

class ColorPreset {
  final ThemeData theme;
  final Color background;
  final Color foreground;

  ColorPreset(
    this.theme, {
    required this.background,
    required this.foreground,
  });

  TextStyle get textStyle => theme.textTheme.labelSmall!.copyWith(color: foreground, fontSize: 9);

  Color get foregroundMuted => foreground.withOpacity(0.5);
}
