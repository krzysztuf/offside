// import 'package:offside/core/extensions/app_setting_extensions.dart';
// import 'package:offside/domain/entities/app_setting.dart';
// import 'package:riverpod_annotation/riverpod_annotation.dart';
//
// part 'reactive_settings_providers.g.dart';
//
// mixin ReactiveSetting<T> on AutoDisposeNotifier<T> {
//   AppSetting get setting;
//
//   T get value {
//     return setting.get<T>(ref);
//   }
//
//   set value(T newValue) {
//     setting.set(ref, newValue);
//     state = newValue;
//   }
// }
//
// @riverpod
// class ThemeModeSetting extends _$ThemeModeSetting with ReactiveSetting<int> {
//   @override
//   int build() => value;
//
//   @override
//   AppSetting get setting => AppSetting.themeMode;
// }
