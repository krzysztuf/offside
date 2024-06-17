import 'dart:math';

extension ListExtensions<T> on List<T> {
  List<T> takeLast(int count) {
    return sublist(length - min(count, length));
  }
}
