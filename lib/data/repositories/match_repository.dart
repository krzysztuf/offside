import 'package:offside/data/models/team_dto.dart';
import 'package:offside/data/sources/offside_api.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:offside/domain/repositories/repository.dart';

class MatchRepository implements Repository<Match> {
  final OffsideApi _api;
  Map<int, TeamDto>? _teamsCache;

  MatchRepository(this._api);

  Future<Map<int, TeamDto>> _getTeamsCache() async {
    if (_teamsCache != null) return _teamsCache!;
    final teams = await _api.getTeams();
    _teamsCache = {for (final team in teams) team.id: team};
    return _teamsCache!;
  }

  @override
  Future<List<Match>> all() async {
    final teamsCache = await _getTeamsCache();
    final dtos = await _api.getMatches();
    return dtos.map((dto) => dto.toEntity(teamsCache)).toList();
  }

  @override
  Future<List<Match>> first(int count) async {
    final allItems = await all();
    return allItems.take(count).toList();
  }

  @override
  Future<String> add(Match item) async {
    return 'stub-id';
  }

  @override
  Future<Match?> byId(String id) async {
    final intId = int.tryParse(id);
    if (intId == null) return null;
    try {
      final teamsCache = await _getTeamsCache();
      final dto = await _api.getMatchById(intId);
      return dto.toEntity(teamsCache);
    } catch (e) {
      return null;
    }
  }

  @override
  Future<List<Match>> where(
    Object field, {
    Object? isEqualTo,
    Object? isNotEqualTo,
  }) async {
    return all();
  }

  @override
  Future<void> remove(Match item) async {}

  @override
  Future<void> update(Match item) async {}

  @override
  Future<void> clear() async {}
}
