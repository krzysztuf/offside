import 'package:collection/collection.dart';
import 'package:offside/data/sources/offside_api.dart';
import 'package:offside/domain/entities/user.dart';
import 'package:offside/domain/repositories/auth_repository.dart';

class StubAuthRepository implements AuthRepository {
  final OffsideApi _api;
  User? _currentUser = User(id: 10, name: 'Krzysztof', surname: 'Potrząsaj');

  StubAuthRepository(this._api);

  @override
  Future<User> logIn(String email, String password) async {
    final dtos = await _api.users();
    final users = dtos.map((dto) => dto.toEntity()).toList();
    if (users.isNotEmpty) {
      _currentUser = users.firstWhereOrNull((u) => u.isAdmin);
      return _currentUser!;
    }
    throw Exception('No users available');
  }

  @override
  Future<User> register(String email, String password) async {
    final dtos = await _api.users();
    final users = dtos.map((dto) => dto.toEntity()).toList();
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
