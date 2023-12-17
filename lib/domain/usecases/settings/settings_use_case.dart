part of 'settings_use_cases.dart';

abstract class SettingsGetUseCase<T> implements UseCase<T?> {
  final AppSetting setting;
  final SettingsRepository repository;

  SettingsGetUseCase(this.repository, this.setting);
}

abstract class SettingsSetUseCase<T> implements UseCase<void> {
  final T value;
  final AppSetting setting;
  final SettingsRepository repository;

  SettingsSetUseCase(this.repository, this.setting, this.value);
}
