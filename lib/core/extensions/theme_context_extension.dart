import 'package:flutter/material.dart';

extension ThemeContextExtension on BuildContext {
  ThemeData get theme => Theme.of(this);

  TextTheme get textTheme => theme.textTheme;

  ColorScheme get colorScheme => theme.colorScheme;

  IconThemeData get iconTheme => theme.iconTheme;

  AppBarTheme get appBarTheme => theme.appBarTheme;

  FloatingActionButtonThemeData get floatingActionButtonTheme => theme.floatingActionButtonTheme;

  BottomNavigationBarThemeData get bottomNavigationBarTheme => theme.bottomNavigationBarTheme;

  TabBarTheme get tabBarTheme => theme.tabBarTheme;

  ButtonThemeData get buttonTheme => theme.buttonTheme;
}
