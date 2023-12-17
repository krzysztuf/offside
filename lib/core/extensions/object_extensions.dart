import 'dart:developer';

extension ObjectExtensions on Object {
  void logMessage({StackTrace? stack}) {
    log(toString(), stackTrace: stack);
  }
}
