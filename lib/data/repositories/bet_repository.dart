import 'package:offside/data/models/team_dto.dart';
import 'package:offside/data/sources/offside_api.dart';
import 'package:offside/domain/entities/bet.dart';
import 'package:offside/domain/repositories/repository.dart';

class BetRepository implements Repository<Bet> {
  final OffsideApi _api;
  Map<int, TeamDto>? _teamsCache;

  BetRepository(this._api);

  Future<Map<int, TeamDto>> _getTeamsCache() async {
    if (_teamsCache != null) return _teamsCache!;
    final teams = await _api.getTeams();
    _teamsCache = {for (final team in teams) team.id: team};
    return _teamsCache!;
  }

  @override
  Future<List<Bet>> all() async {
    final teamsCache = await _getTeamsCache();
    final dtos = await _api.getBets();
    return dtos.map((dto) => dto.toEntity(teamsCache)).toList();
  }

  @override
  Future<List<Bet>> first(int count) async {
    final allItems = await all();
    return allItems.take(count).toList();
  }

  @override
  Future<int> add(Bet item) async {
    return 0;
  }

  @override
  Future<Bet?> byId(int id) async {
    if (id == 0) return null;
    final bets = await all();
    try {
      return bets.firstWhere((bet) => bet.id == id);
    } catch (e) {
      return null;
    }
  }

  @override
  Future<List<Bet>> where(
    Object field, {
    Object? isEqualTo,
    Object? isNotEqualTo,
  }) async {
    final teamsCache = await _getTeamsCache();

    if (field == 'userId' && isEqualTo != null) {
      final userId = isEqualTo is int ? isEqualTo : int.tryParse(isEqualTo.toString());
      if (userId != null) {
        final dtos = await _api.getBetsByUserId(userId);
        return dtos.map((dto) => dto.toEntity(teamsCache)).toList();
      }
    }

    if (field == 'matchId' && isEqualTo != null) {
      final matchId = isEqualTo is int ? isEqualTo : int.tryParse(isEqualTo.toString());
      if (matchId != null) {
        final dtos = await _api.getBetsByMatchId(matchId);
        return dtos.map((dto) => dto.toEntity(teamsCache)).toList();
      }
    }

    return all();
  }

  @override
  Future<void> remove(Bet item) async {}

  @override
  Future<void> update(Bet item) async {}

  @override
  Future<void> clear() async {}
}
