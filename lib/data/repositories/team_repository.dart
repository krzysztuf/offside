import 'package:offside/data/sources/offside_api.dart';
import 'package:offside/domain/entities/team.dart';
import 'package:offside/domain/repositories/repository.dart';

class TeamRepository implements Repository<Team> {
  final OffsideApi _api;

  TeamRepository(this._api);

  @override
  Future<List<Team>> all() async {
    final dtos = await _api.teams();
    return dtos.map((dto) => dto.toEntity()).toList();
  }

  @override
  Future<List<Team>> first(int count) async {
    final allItems = await all();
    return allItems.take(count).toList();
  }

  @override
  Future<int> add(Team item) async {
    return 0;
  }

  @override
  Future<Team?> byId(int id) async {
    final teams = await all();
    try {
      return teams.firstWhere((team) => team.id == id);
    } catch (e) {
      return null;
    }
  }

  @override
  Future<void> remove(Team item) async {}

  @override
  Future<void> update(Team item) async {}

  @override
  Future<void> clear() async {}
}
