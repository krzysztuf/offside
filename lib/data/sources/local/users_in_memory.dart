import 'package:offside/domain/models/user.dart';
import 'package:offside/domain/repositories/repository.dart';

class UsersInMemory extends Repository<User> {
  @override
  Future<void> add(User item) {
    // TODO: implement add
    throw UnimplementedError();
  }

  @override
  Future<List<User>> all() {
    // TODO: implement all
    throw UnimplementedError();
  }

  @override
  Future<User> byId(int id) {
    // TODO: implement byId
    throw UnimplementedError();
  }

  @override
  Future<void> clear() {
    // TODO: implement clear
    throw UnimplementedError();
  }

  @override
  Future<void> remove(User item) {
    // TODO: implement remove
    throw UnimplementedError();
  }
}
