import 'package:collection/collection.dart';
import 'package:offside/data/sources/offside_api.dart';
import 'package:offside/domain/entities/user.dart';
import 'package:offside/domain/repositories/auth_repository.dart';

class StubAuthRepository implements AuthRepository {
  final OffsideApi _api;
  User? _currentUser = User(id: 10, name: 'Krzysztof', surname: 'Potrząsaj');

  StubAuthRepository(this._api);

  Future<Map<int, String>> _getTeamIdToAbbreviation() async {
    final teams = await _api.getTeams();
    return {for (final team in teams) team.id: team.abbreviation};
  }

  @override
  Future<User> logIn(String email, String password) async {
    final teamMap = await _getTeamIdToAbbreviation();
    final dtos = await _api.getUsers();
    final users = dtos.map((dto) => dto.toEntity(teamMap)).toList();
    if (users.isNotEmpty) {
      _currentUser = users.firstWhereOrNull((u) => u.isAdmin);
      return _currentUser!;
    }
    throw Exception('No users available');
  }

  @override
  Future<User> register(String email, String password) async {
    final teamMap = await _getTeamIdToAbbreviation();
    final dtos = await _api.getUsers();
    final users = dtos.map((dto) => dto.toEntity(teamMap)).toList();
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
