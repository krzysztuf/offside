import 'dart:async';

import 'package:supercharged/supercharged.dart';

extension FutureExtensions<T> on Future<T> {
  Future<T> defaultTimeout({FutureOr<T> Function()? onTimeout}) {
    return timeout(4.seconds, onTimeout: onTimeout);
  }
}
