import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'shared_preference.dart';

part 'app_preferences.g.dart';

class AppPreferences {
  static late SharedPreferences _preferences;

  static late final SharedPreference<String> languageCode;
  static late final SharedPreference<ThemeMode> themeMode;

  AppPreferences._();

  static Future<void> initialize() async {
    _preferences = await SharedPreferences.getInstance();

    languageCode = SharedPreference('languageCode', 'de', _preferences);
    themeMode = SharedPreference('themeMode', ThemeMode.system, _preferences);
  }
}

mixin SettingProvider<T> {
  SharedPreference<T> get preference;

  void invalidateSelf();

  void setTo(T newValue) {
    preference.value = newValue;
    invalidateSelf();
  }
}

@riverpod
class AppThemeSetting extends _$AppThemeSetting with SettingProvider<ThemeMode> {
  @override
  ThemeMode build() => preference.value;

  @override
  void invalidateSelf() => ref.invalidateSelf();

  @override
  SharedPreference<ThemeMode> get preference => AppPreferences.themeMode;
}
