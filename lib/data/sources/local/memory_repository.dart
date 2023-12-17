import 'package:offside/domain/entities/identifiable.dart';
import 'package:offside/domain/repositories/repository.dart';

class MemoryRepository<T extends Identifiable> extends Repository<T> {
  List<T> items;

  MemoryRepository({
    this.items = const [],
  });

  @override
  Future<void> add(T item) {
    items.add(item);
    return Future.value();
  }

  @override
  Future<List<T>> all() {
    return Future.value(items);
  }

  @override
  Future<T?> byId(int id) {
    return Future.value(items.firstWhere((i) => i.identifier == id));
  }

  @override
  Future<void> clear() {
    items.clear();
    return Future.value();
  }

  @override
  Future<void> remove(T item) {
    items.remove(item);
    return Future.value();
  }
}
