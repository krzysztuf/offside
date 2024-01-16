abstract interface class Repository<T> {
  Future<List<T>> all();

  Future<T?> byId(String id);

  Future<String> add(T item);

  Future<void> remove(T item);

  Future<void> update(T item);

  Future<void> clear();
}
