import 'package:offside/data/sources/offside_api.dart';
import 'package:offside/domain/entities/team.dart';
import 'package:offside/domain/repositories/repository.dart';

class TeamRepository implements Repository<Team> {
  final OffsideApi _api;

  TeamRepository(this._api);

  @override
  Future<List<Team>> all() async {
    final dtos = await _api.getTeams();
    return dtos.map((dto) => dto.toEntity()).toList();
  }

  @override
  Future<List<Team>> first(int count) async {
    final allItems = await all();
    return allItems.take(count).toList();
  }

  @override
  Future<String> add(Team item) async {
    return 'stub-id';
  }

  @override
  Future<Team?> byId(String id) async {
    final teams = await all();
    try {
      return teams.firstWhere((team) => team.id == id);
    } catch (e) {
      return null;
    }
  }

  @override
  Future<List<Team>> where(
    Object field, {
    Object? isEqualTo,
    Object? isNotEqualTo,
  }) async {
    return all();
  }

  @override
  Future<void> remove(Team item) async {}

  @override
  Future<void> update(Team item) async {}

  @override
  Future<void> clear() async {}
}
