import 'package:offside/domain/entities/app_setting.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'reactive_setting.dart';

part 'reactive_settings_providers.g.dart';

@riverpod
class CurrentUserIdSetting extends _$CurrentUserIdSetting with ReactiveSetting<String> {
  @override
  String build() => value;

  @override
  AppSetting get setting => AppSetting.currentUserId;
}

@riverpod
class ThemeModeSetting extends _$ThemeModeSetting with ReactiveSetting<int> {
  @override
  int build() => value;

  @override
  AppSetting get setting => AppSetting.themeMode;
}
