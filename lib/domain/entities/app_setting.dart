import 'package:flutter/material.dart';

enum AppSetting {
  currentUserId,
  themeMode,
}

extension AppSettingDefaultValue on AppSetting {
  T defaultValue<T>() {
    return switch (this) {
      AppSetting.currentUserId => 'dupsko',
      AppSetting.themeMode => ThemeMode.system.index,
      // ignore: unreachable_switch_case
      _ => throw Exception('unimplemented default value: $this'),
    } as T;
  }
}
