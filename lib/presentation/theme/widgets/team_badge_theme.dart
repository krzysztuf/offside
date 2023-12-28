import 'package:flutter/material.dart';

class TeamBadgeTheme {
  final ThemeData theme;

  TeamBadgeTheme(this.theme);

  TextStyle get textTheme {
    return theme.textTheme.titleSmall!.copyWith(
      fontSize: 18,
    );
  }
}
