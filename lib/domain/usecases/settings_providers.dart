import 'package:offside/data/repositories/providers.dart';
import 'package:offside/domain/entities/app_setting.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'settings_providers.g.dart';

mixin ReactiveSetting<T> on $Notifier<T> {
  AppSetting get setting;

  T get value {
    final repo = ref.read(settingsRepositoryProvider);
    if (T == bool) {
      return repo.getBool(setting) as T? ?? setting.defaultValue<T>();
    } else if (T == int) {
      return repo.getInt(setting) as T? ?? setting.defaultValue<T>();
    } else if (T == double) {
      return repo.getDouble(setting) as T? ?? setting.defaultValue<T>();
    } else if (T == String) {
      return repo.getString(setting) as T? ?? setting.defaultValue<T>();
    } else if (T == List<String>) {
      return repo.getStringList(setting) as T? ?? setting.defaultValue<T>();
    }

    throw Exception('getting an unsupported type ${T.toString()} for $setting ');
  }

  set value(T newValue) {
    final repo = ref.read(settingsRepositoryProvider);
    switch (newValue) {
      case (bool boolValue):
        repo.setBool(setting, boolValue);
      case (int intValue):
        repo.setInt(setting, intValue);
      case (double doubleValue):
        repo.setDouble(setting, doubleValue);
      case (String stringValue):
        repo.setString(setting, stringValue);
      case (List<String> stringListValue):
        repo.setStringList(setting, stringListValue);
      default:
        throw Exception('setting an unsupported type ${T.toString()} for $this in AppSettings');
    }

    state = newValue;
  }
}

@riverpod
class CurrentUserIdSetting extends _$CurrentUserIdSetting with ReactiveSetting<int> {
  @override
  int build() => value;

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
