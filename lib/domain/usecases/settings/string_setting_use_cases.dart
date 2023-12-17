part of 'settings_use_cases.dart';

class GetStringSettingUseCaseImpl extends SettingsGetUseCase<String> {
  GetStringSettingUseCaseImpl(super.repository, super.setting);

  @override
  String? run() {
    return repository.getString(setting);
  }
}

class SetStringSettingUseCaseImpl extends SettingsSetUseCase<String> {
  SetStringSettingUseCaseImpl(super.repository, super.setting, super.value);

  @override
  void run() {
    repository.setString(setting, value);
  }
}
