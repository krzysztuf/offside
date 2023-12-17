part of 'settings_use_cases.dart';

class GetBoolSettingUseCaseImpl extends SettingsGetUseCase<bool> {
  GetBoolSettingUseCaseImpl(super.repository, super.setting);

  @override
  bool? run() {
    return repository.getBool(setting);
  }
}

class SetBoolSettingUseCaseImpl extends SettingsSetUseCase<bool> {
  SetBoolSettingUseCaseImpl(super.repository, super.setting, super.value);

  @override
  void run() {
    repository.setBool(setting, value);
  }
}
