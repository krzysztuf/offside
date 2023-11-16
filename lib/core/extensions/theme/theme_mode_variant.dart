import 'package:flutter/material.dart';

extension ThemeModeVariant on ColorScheme {
  Color themeVariant(Color light, Color dark) {
    return brightness == Brightness.light ? light : dark;
  }
}
