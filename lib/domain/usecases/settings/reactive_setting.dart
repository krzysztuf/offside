import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:offside/domain/entities/app_setting.dart';

import 'settings_use_cases.dart';

mixin ReactiveSetting<T> on $Notifier<T> {
  AppSetting get setting;

  T get value {
    if (T == bool) {
      return ref.read(getBoolSettingUseCaseProvider(setting)).run() as T? ?? setting.defaultValue<T>();
    } else if (T == int) {
      return ref.read(getIntSettingUseCaseProvider(setting)).run() as T? ?? setting.defaultValue<T>();
    } else if (T == double) {
      return ref.read(getDoubleSettingUseCaseProvider(setting)).run() as T? ?? setting.defaultValue<T>();
    } else if (T == String) {
      return ref.read(getStringSettingUseCaseProvider(setting)).run() as T? ?? setting.defaultValue<T>();
    } else if (T == List<String>) {
      return ref.read(getStringListSettingUseCaseProvider(setting)).run() as T? ?? setting.defaultValue<T>();
    }

    throw Exception('getting an unsupported type ${T.toString()} for $setting ');
  }

  set value(T newValue) {
    switch (newValue) {
      case (bool boolValue):
        ref.read(setBoolSettingUseCaseProvider(setting, boolValue)).run();
      case (int intValue):
        ref.read(setIntSettingUseCaseProvider(setting, intValue)).run();
      case (double doubleValue):
        ref.read(setDoubleSettingUseCaseProvider(setting, doubleValue)).run();
      case (String stringValue):
        ref.read(setStringSettingUseCaseProvider(setting, stringValue)).run();
      case (List<String> stringListValue):
        ref.read(setStringListSettingUseCaseProvider(setting, stringListValue)).run();
      default:
        throw Exception('setting an unsupported type ${T.toString()} for $this in AppSettings');
    }

    state = newValue;
  }
}
