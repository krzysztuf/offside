import 'package:offside/data/sources/offside_api.dart';
import 'package:offside/domain/entities/team.dart';

class TeamRepository {
  final OffsideApi _api;

  TeamRepository(this._api);

  Future<List<Team>> all() async {
    final dtos = await _api.getTeams();
    return dtos.map((dto) => dto.toEntity()).toList();
  }

  Future<Team?> byId(String id) async {
    final teams = await all();
    try {
      return teams.firstWhere((team) => team.id == id);
    } catch (e) {
      return null;
    }
  }
}
