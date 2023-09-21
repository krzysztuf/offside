extension IterableExtensions<T> on Iterable<T> {
  T? find(bool Function(T) predicate, {T? or}) {
    final result = where(predicate);
    return result.isNotEmpty ? result.first : null;
  }
}
