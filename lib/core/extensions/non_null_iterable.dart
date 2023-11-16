extension NonNullIterable<T> on Iterable<T?> {
  Iterable<T> get withoutNulls => where((item) => item != null).cast<T>();
}
