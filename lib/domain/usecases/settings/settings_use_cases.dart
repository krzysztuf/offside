// library settings_use_cases;
//
// import 'package:offside/data/repositories/providers.dart';
// import 'package:offside/domain/entities/app_setting.dart';
// import 'package:offside/domain/repositories/settings_repository.dart';
// import 'package:offside/domain/usecases/repository_use_case.dart';
// import 'package:riverpod_annotation/riverpod_annotation.dart';
//
// part 'bool_setting_use_cases.dart';
// part 'double_setting_use_cases.dart';
// part 'int_setting_use_cases.dart';
// part 'settings_use_case.dart';
// part 'settings_use_cases.g.dart';
// part 'string_list_setting_use_cases.dart';
// part 'string_setting_use_cases.dart';
//
// // bool
// @riverpod
// SettingsGetUseCase<bool> getBoolSettingUseCase(GetBoolSettingUseCaseRef ref, AppSetting setting) {
//   return GetBoolSettingUseCaseImpl(ref.read(settingsRepositoryProvider), setting);
// }
//
// @riverpod
// SettingsSetUseCase<bool> setBoolSettingUseCase(SetBoolSettingUseCaseRef ref, AppSetting setting, bool value) {
//   return SetBoolSettingUseCaseImpl(ref.read(settingsRepositoryProvider), setting, value);
// }
//
// // int
// @riverpod
// SettingsGetUseCase<int> getIntSettingUseCase(GetIntSettingUseCaseRef ref, AppSetting setting) {
//   return GetIntSettingUseCaseImpl(ref.read(settingsRepositoryProvider), setting);
// }
//
// @riverpod
// SettingsSetUseCase<int> setIntSettingUseCase(SetIntSettingUseCaseRef ref, AppSetting setting, int value) {
//   return SetIntSettingUseCaseImpl(ref.read(settingsRepositoryProvider), setting, value);
// }
//
// // double
// @riverpod
// SettingsGetUseCase<double> getDoubleSettingUseCase(GetDoubleSettingUseCaseRef ref, AppSetting setting) {
//   return GetDoubleSettingUseCaseImpl(ref.read(settingsRepositoryProvider), setting);
// }
//
// @riverpod
// SettingsSetUseCase<double> setDoubleSettingUseCase(SetDoubleSettingUseCaseRef ref, AppSetting setting, double value) {
//   return SetDoubleSettingUseCaseImpl(ref.read(settingsRepositoryProvider), setting, value);
// }
//
// // String
// @riverpod
// SettingsGetUseCase<String> getStringSettingUseCase(GetStringSettingUseCaseRef ref, AppSetting setting) {
//   return GetStringSettingUseCaseImpl(ref.read(settingsRepositoryProvider), setting);
// }
//
// @riverpod
// SettingsSetUseCase<String> setStringSettingUseCase(SetStringSettingUseCaseRef ref, AppSetting setting, String value) {
//   return SetStringSettingUseCaseImpl(ref.read(settingsRepositoryProvider), setting, value);
// }
//
// // List<String>
// @riverpod
// SettingsGetUseCase<List<String>> getStringListSettingUseCase(GetStringListSettingUseCaseRef ref, AppSetting setting) {
//   return GetStringListSettingUseCaseImpl(ref.read(settingsRepositoryProvider), setting);
// }
//
// @riverpod
// SettingsSetUseCase<List<String>> setStringListSettingUseCase(
//     SetStringListSettingUseCaseRef ref, AppSetting setting, List<String> value) {
//   return SetStringListSettingUseCaseImpl(ref.read(settingsRepositoryProvider), setting, value);
// }
