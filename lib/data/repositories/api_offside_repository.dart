import 'package:offside/data/models/team_dto.dart';
import 'package:offside/data/sources/offside_api.dart';
import 'package:offside/domain/entities/bet.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:offside/domain/entities/user.dart';
import 'package:offside/domain/repositories/offside_repository.dart';

class ApiOffsideRepository implements OffsideRepository {
  final DateTime now;
  final OffsideApi _api;
  Map<int, TeamDto>? _teamsCache;

  ApiOffsideRepository(this.now, this._api);

  Future<Map<int, TeamDto>> _getTeamsCache() async {
    if (_teamsCache != null) return _teamsCache!;
    final teams = await _api.getTeams();
    _teamsCache = {for (final team in teams) team.id: team};
    return _teamsCache!;
  }

  @override
  Future<List<Bet>> userBets(User user) async {
    final users = await _api.getUsers();
    final userDto = users.where((u) => u.firebaseId == user.firebaseId).firstOrNull;
    if (userDto == null) return [];

    final teamsCache = await _getTeamsCache();
    final dtos = await _api.getBetsByUserId(userDto.id);
    return dtos.map((dto) => dto.toEntity(teamsCache)).toList();
  }

  @override
  Future<List<Match>> lastSixMatches() async {
    final teamsCache = await _getTeamsCache();
    final dtos = await _api.getMatches();
    final allMatches = dtos.map((dto) => dto.toEntity(teamsCache)).toList();

    final pastMatches = allMatches
        .where((match) => match.kickOffDate.isBefore(now))
        .toList();

    pastMatches.sort((a, b) => b.kickOffDate.compareTo(a.kickOffDate));

    return pastMatches.take(6).toList();
  }

  @override
  Future<List<Match>> upcomingMatches() async {
    final teamsCache = await _getTeamsCache();
    final dtos = await _api.getMatches();
    final allMatches = dtos.map((dto) => dto.toEntity(teamsCache)).toList();
    final midnight = now.copyWith(hour: 0, minute: 0, second: 0, millisecond: 0);

    return allMatches
        .where((match) => match.kickOffDate.isAfter(midnight))
        .toList();
  }

  @override
  Future<List<Match>> matchesHistory() async {
    final teamsCache = await _getTeamsCache();
    final dtos = await _api.getMatches();
    final allMatches = dtos.map((dto) => dto.toEntity(teamsCache)).toList();
    final midnight = now.copyWith(hour: 0, minute: 0, second: 0, millisecond: 0);

    return allMatches
        .where((match) => match.kickOffDate.isBefore(midnight))
        .toList();
  }
}
