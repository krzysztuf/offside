import 'package:offside/data/sources/offside_api.dart';
import 'package:offside/domain/entities/user.dart';
import 'package:offside/domain/repositories/repository.dart';

class UserRepository implements Repository<User> {
  final OffsideApi _api;

  UserRepository(this._api);

  @override
  Future<List<User>> all() async {
    final dtos = await _api.getUsers();
    return dtos.map((dto) => dto.toEntity()).toList();
  }

  @override
  Future<List<User>> first(int count) async {
    final allItems = await all();
    return allItems.take(count).toList();
  }

  @override
  Future<String> add(User item) async {
    return 'stub-id';
  }

  @override
  Future<User?> byId(String id) async {
    final users = await all();
    try {
      return users.firstWhere((user) => user.firebaseId == id);
    } catch (e) {
      return null;
    }
  }

  @override
  Future<List<User>> where(
    Object field, {
    Object? isEqualTo,
    Object? isNotEqualTo,
  }) async {
    return all();
  }

  @override
  Future<void> remove(User item) async {}

  @override
  Future<void> update(User item) async {}

  @override
  Future<void> clear() async {}
}
