import 'package:offside/domain/entities/app_setting.dart';

abstract class SettingsRepository {
  bool? getBool(AppSetting setting);

  void setBool(AppSetting setting, bool value);

  int? getInt(AppSetting setting);

  void setInt(AppSetting setting, int value);

  double? getDouble(AppSetting setting);

  void setDouble(AppSetting setting, double value);

  String? getString(AppSetting setting);

  void setString(AppSetting setting, String value);

  List<String>? getStringList(AppSetting setting);

  void setStringList(AppSetting setting, List<String> value);
}
