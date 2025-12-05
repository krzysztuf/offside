import 'package:collection/collection.dart';
import 'package:offside/data/sources/json_data_source.dart';
import 'package:offside/domain/entities/user.dart';
import 'package:offside/domain/repositories/auth_repository.dart';

class StubAuthRepository implements AuthRepository {
  final JsonDataSource _dataSource = JsonDataSource.instance;
  User? _currentUser;

  @override
  Future<User> logIn(String email, String password) async {
    final users = await _dataSource.getUsers();
    if (users.isNotEmpty) {
      _currentUser = users.firstWhereOrNull((u) => u.isAdmin);
      return _currentUser!;
    }
    throw Exception('No users available');
  }

  @override
  Future<User> register(String email, String password) async {
    final users = await _dataSource.getUsers();
    if (users.isNotEmpty) {
      _currentUser = users.first;
      return _currentUser!;
    }
    throw Exception('No users available');
  }

  @override
  Future<void> logOut() async {
    _currentUser = null;
  }

  @override
  Future<User?> currentUser() async {
    return _currentUser;
  }

  @override
  Future<bool> isEmailWhitelisted(String email) async {
    return true;
  }
}

