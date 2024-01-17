import 'package:flutter/material.dart';
import 'package:offside/presentation/theme/widget_theme.dart';

class TeamBadgeTheme extends WidgetTheme {
  TeamBadgeTheme(super.theme);

  TextStyle get textTheme {
    return theme.textTheme.titleSmall!.copyWith(
      fontSize: 18,
    );
  }
}
