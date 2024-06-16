import 'dart:developer';

class TimedCache<T> {
  T? _value;

  DateTime? _lastUpdated;
  final Duration _cacheDuration;

  TimedCache(this._cacheDuration);

  T? get value {
    return _value;
  }

  set value(T? value) {
    _value = value;
    _lastUpdated = DateTime.now();
  }

  bool get isValid {
    return !expired && _value != null;
  }

  Future<T> valueOr({required Future<T> Function() updateWith}) async {
    if (isValid) {
      log('cached');
      return _value!;
    }

    log('fetching');
    return value = await updateWith();
  }

  bool get expired {
    if (_lastUpdated == null) {
      return true;
    }

    return DateTime.now().difference(_lastUpdated!) > _cacheDuration;
  }
}
