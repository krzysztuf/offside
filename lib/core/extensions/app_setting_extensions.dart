// import 'package:flutter/material.dart';
// import 'package:offside/domain/entities/app_setting.dart';
// import 'package:offside/domain/usecases/settings/settings_use_cases.dart';
//
// extension AppSettingExtensions on AppSetting {
//   T get<T>(dynamic ref) {
//     if (T == bool) {
//       return ref.read(getBoolSettingUseCaseProvider(this)).run() as T? ?? defaultValue<T>();
//     } else if (T == int) {
//       return ref.read(getIntSettingUseCaseProvider(this)).run() as T? ?? defaultValue<T>();
//     } else if (T == double) {
//       return ref.read(getDoubleSettingUseCaseProvider(this)).run() as T? ?? defaultValue<T>();
//     } else if (T == String) {
//       return ref.read(getStringSettingUseCaseProvider(this)).run() as T? ?? defaultValue<T>();
//     } else if (T == List<String>) {
//       return ref.read(getStringListSettingUseCaseProvider(this)).run() as T? ?? defaultValue<T>();
//     }
//
//     throw Exception('getting an unsupported type ${T.toString()} for $this in AppSettings');
//   }
//
//   void set<T>(dynamic ref, T value) {
//     switch (value) {
//       case (bool boolValue):
//         ref.read(setBoolSettingUseCaseProvider(this, boolValue)).run();
//       case (int intValue):
//         ref.read(setIntSettingUseCaseProvider(this, intValue)).run();
//       case (double doubleValue):
//         ref.read(setDoubleSettingUseCaseProvider(this, doubleValue)).run();
//       case (String stringValue):
//         ref.read(setStringSettingUseCaseProvider(this, stringValue)).run();
//       case (List<String> stringListValue):
//         ref.read(setStringListSettingUseCaseProvider(this, stringListValue)).run();
//       default:
//         throw Exception('setting an unsupported type ${T.toString()} for $this in AppSettings');
//     }
//   }
//
//   T defaultValue<T>() {
//     return switch (this) {
//       AppSetting.currentUserId => 1,
//       AppSetting.themeMode => ThemeMode.system.index,
//       // ignore: unreachable_switch_case
//       _ => throw Exception('unimplemented default value: $this'),
//     } as T;
//   }
// }
