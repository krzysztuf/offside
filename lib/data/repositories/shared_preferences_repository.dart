import 'package:offside/domain/entities/app_setting.dart';
import 'package:offside/domain/repositories/settings_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesRepository implements SettingsRepository {
  final SharedPreferences preferences;

  SharedPreferencesRepository(this.preferences);

  @override
  bool? getBool(AppSetting setting) {
    return preferences.getBool(setting.name);
  }

  @override
  void setBool(AppSetting setting, bool value) {
    preferences.setBool(setting.name, value);
  }

  @override
  double? getDouble(AppSetting setting) {
    return preferences.getDouble(setting.name);
  }

  @override
  void setDouble(AppSetting setting, double value) {
    preferences.setDouble(setting.name, value);
  }

  @override
  int? getInt(AppSetting setting) {
    return preferences.getInt(setting.name);
  }

  @override
  void setInt(AppSetting setting, int value) {
    preferences.setInt(setting.name, value);
  }

  @override
  String? getString(AppSetting setting) {
    return preferences.getString(setting.name);
  }

  @override
  void setString(AppSetting setting, String value) {
    preferences.setString(setting.name, value);
  }

  @override
  List<String>? getStringList(AppSetting setting) {
    return preferences.getStringList(setting.name);
  }

  @override
  void setStringList(AppSetting setting, List<String> value) {
    preferences.setStringList(setting.name, value);
  }
}
