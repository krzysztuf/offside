library settings_use_cases;

import 'package:offside/data/repositories/providers.dart';
import 'package:offside/domain/entities/app_setting.dart';
import 'package:offside/domain/repositories/settings_repository.dart';
import 'package:offside/domain/usecases/use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'bool_setting_use_cases.dart';
part 'double_setting_use_cases.dart';
part 'int_setting_use_cases.dart';
part 'settings_use_case.dart';
part 'settings_use_cases.g.dart';
part 'string_list_setting_use_cases.dart';
part 'string_setting_use_cases.dart';

// bool
@riverpod
SettingsGetUseCase<bool> getBoolSettingUseCase(Ref ref, AppSetting setting) {
  return GetBoolSettingUseCaseImpl(ref.read(settingsRepositoryProvider), setting);
}

@riverpod
SettingsSetUseCase<bool> setBoolSettingUseCase(Ref ref, AppSetting setting, bool value) {
  return SetBoolSettingUseCaseImpl(ref.read(settingsRepositoryProvider), setting, value);
}

// int
@riverpod
SettingsGetUseCase<int> getIntSettingUseCase(Ref ref, AppSetting setting) {
  return GetIntSettingUseCaseImpl(ref.read(settingsRepositoryProvider), setting);
}

@riverpod
SettingsSetUseCase<int> setIntSettingUseCase(Ref ref, AppSetting setting, int value) {
  return SetIntSettingUseCaseImpl(ref.read(settingsRepositoryProvider), setting, value);
}

// double
@riverpod
SettingsGetUseCase<double> getDoubleSettingUseCase(Ref ref, AppSetting setting) {
  return GetDoubleSettingUseCaseImpl(ref.read(settingsRepositoryProvider), setting);
}

@riverpod
SettingsSetUseCase<double> setDoubleSettingUseCase(Ref ref, AppSetting setting, double value) {
  return SetDoubleSettingUseCaseImpl(ref.read(settingsRepositoryProvider), setting, value);
}

// String
@riverpod
SettingsGetUseCase<String> getStringSettingUseCase(Ref ref, AppSetting setting) {
  return GetStringSettingUseCaseImpl(ref.read(settingsRepositoryProvider), setting);
}

@riverpod
SettingsSetUseCase<String> setStringSettingUseCase(Ref ref, AppSetting setting, String value) {
  return SetStringSettingUseCaseImpl(ref.read(settingsRepositoryProvider), setting, value);
}

// List<String>
@riverpod
SettingsGetUseCase<List<String>> getStringListSettingUseCase(Ref ref, AppSetting setting) {
  return GetStringListSettingUseCaseImpl(ref.read(settingsRepositoryProvider), setting);
}

@riverpod
SettingsSetUseCase<List<String>> setStringListSettingUseCase(
    Ref ref, AppSetting setting, List<String> value) {
  return SetStringListSettingUseCaseImpl(ref.read(settingsRepositoryProvider), setting, value);
}
