import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesHolder {
  static late SharedPreferences preferences;

  static Future<void> initialize() async {
    preferences = await SharedPreferences.getInstance();
  }
}
