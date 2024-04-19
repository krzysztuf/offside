abstract interface class Repository<T> {
  Future<List<T>> all();

  Future<List<T>> first(int count);

  Future<String> add(T item);

  Future<T?> byId(String id);

  Future<List<T>> where(
    Object field, {
    Object? isEqualTo,
    Object? isNotEqualTo,
  });

  Future<void> remove(T item);

  Future<void> update(T item);

  Future<void> clear();
}
