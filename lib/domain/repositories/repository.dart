abstract class Repository<T> {
  Future<List<T>> all();

  Future<T> byId({required String id});

  Future<void> add(T item);

  Future<void> remove(T item);

  Future<void> clear();
}
