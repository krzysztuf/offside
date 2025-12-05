import 'package:flutter/material.dart';
import 'package:offside/presentation/theme/theme_extensions.dart';
import 'package:offside/presentation/theme/widget_themes.dart';

extension ThemeContextExtension on BuildContext {
  ThemeData get theme => Theme.of(this);

  TextTheme get textTheme => theme.textTheme;

  ColorScheme get colorScheme => theme.colorScheme;

  IconThemeData get iconTheme => theme.iconTheme;

  AppBarThemeData get appBarTheme => theme.appBarTheme;

  FloatingActionButtonThemeData get floatingActionButtonTheme => theme.floatingActionButtonTheme;

  BottomNavigationBarThemeData get bottomNavigationBarTheme => theme.bottomNavigationBarTheme;

  TabBarThemeData get tabBarTheme => theme.tabBarTheme;

  ButtonThemeData get buttonTheme => theme.buttonTheme;

  WidgetThemes get widgetThemes => theme.widgets;
}
