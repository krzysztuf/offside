import 'package:flutter/material.dart';

import 'widget_themes.dart';

extension ThemeExtensions on ThemeData {
  WidgetThemes get widgets => WidgetThemes(this);

  Color brightnessVariant(Color light, Color dark) {
    return brightness == Brightness.light ? light : dark;
  }
}
