part of 'settings_use_cases.dart';

class GetStringListSettingUseCaseImpl extends SettingsGetUseCase<List<String>> {
  GetStringListSettingUseCaseImpl(super.repository, super.setting);

  @override
  List<String>? run() {
    return repository.getStringList(setting);
  }
}

class SetStringListSettingUseCaseImpl extends SettingsSetUseCase<List<String>> {
  SetStringListSettingUseCaseImpl(super.repository, super.setting, super.value);

  @override
  void run() {
    repository.setStringList(setting, value);
  }
}
