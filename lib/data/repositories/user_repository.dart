import 'package:offside/data/sources/offside_api.dart';
import 'package:offside/domain/entities/user.dart';
import 'package:offside/domain/repositories/repository.dart';

class UserRepository implements Repository<User> {
  final OffsideApi _api;

  UserRepository(this._api);

  Future<Map<int, String>> _getTeamIdToAbbreviation() async {
    final teams = await _api.getTeams();
    return {for (final team in teams) team.id: team.abbreviation};
  }

  @override
  Future<List<User>> all() async {
    final teamMap = await _getTeamIdToAbbreviation();
    final dtos = await _api.getUsers();
    return dtos.map((dto) => dto.toEntity(teamMap)).toList();
  }

  @override
  Future<List<User>> first(int count) async {
    final allItems = await all();
    return allItems.take(count).toList();
  }

  @override
  Future<int> add(User item) async {
    return 0;
  }

  @override
  Future<User?> byId(int id) async {
    if (id == 0) return null;
    try {
      final teamMap = await _getTeamIdToAbbreviation();
      final dto = await _api.getUserById(id);
      return dto.toEntity(teamMap);
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
