import 'package:offside/domain/entities/identifiable.dart';
import 'package:offside/domain/repositories/repository.dart';

class MemoryRepository<T extends Identifiable> implements Repository<T> {
  List<T> items;

  MemoryRepository({
    this.items = const [],
  });

  @override
  Future<String> add(T item) {
    items.add(item);
    return Future.value('');
  }

  @override
  Future<List<T>> all() {
    return Future.value(items);
  }

  @override
  Future<T?> byId(String id) {
    return Future.value(items.firstWhere((i) => i.identifier == id));
  }

  @override
  Future<void> clear() {
    items.clear();
    return Future.value();
  }

  @override
  Future<void> update(T item) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Future<void> remove(T item) {
    items.remove(item);
    return Future.value();
  }
}
