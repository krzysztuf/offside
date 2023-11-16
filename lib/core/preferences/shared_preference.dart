import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreference<T> {
  final String _key;
  final SharedPreferences _preferences;
  final T defaultValue;

  SharedPreference(this._key, this.defaultValue, this._preferences);

  T get value {
    dynamic candidate;

    if (T == bool) {
      candidate = _preferences.getBool(_key);
    } else if (T == int) {
      candidate = _preferences.getInt(_key);
    } else if (T == double) {
      candidate = _preferences.getDouble(_key);
    } else if (T == String) {
      candidate = _preferences.getString(_key);
    } else if (T == List<String>) {
      candidate = _preferences.getStringList(_key);
    } else if (T == ThemeMode) {
      candidate = ThemeMode.values[_preferences.getInt(_key) ?? 0];
    } else {
      throw Exception('SharedPreference: getting an unsupported type ${T.toString()}');
    }

    if (candidate != null) {
      return candidate as T;
    }

    return defaultValue;
  }

  set value(T value) {
    switch (T) {
      case bool:
        _preferences.setBool(_key, value as bool);
        break;
      case int:
        _preferences.setInt(_key, value as int);
        break;
      case double:
        _preferences.setDouble(_key, value as double);
        break;
      case String:
        _preferences.setString(_key, value as String);
        break;
      case const (List<String>):
        _preferences.setStringList(_key, value as List<String>);
        break;
      case const (ThemeMode):
        _preferences.setInt(_key, (value as ThemeMode).index);
        break;
      default:
        throw Exception('SharedPreference: saving an unsupported type ${T.toString()}');
    }
  }

  bool get isNotSet {
    return !_preferences.containsKey(_key);
  }

  void remove() {
    _preferences.remove(_key);
  }
}
