import 'package:offside/data/models/user_dto.dart';
import 'package:offside/data/models/team_dto.dart';
import 'package:offside/data/models/match_dto.dart';
import 'package:offside/data/models/bet_dto.dart';
import 'package:offside/data/models/private_table_dto.dart';
import 'package:offside/data/sources/offside_api_service.dart';
import 'package:offside/domain/entities/user.dart';
import 'package:offside/domain/entities/team.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:offside/domain/entities/bet.dart';
import 'package:offside/domain/entities/private_table.dart';
import 'package:offside/domain/entities/goals.dart';
import 'package:offside/domain/entities/match_outcome.dart';
import 'package:offside/domain/entities/fetchable.dart';

class OffsideApiDataSource {
  final OffsideApiService _apiService;

  Map<int, TeamDto>? _teamsCache;

  OffsideApiDataSource(this._apiService);

  Future<List<User>> getUsers() async {
    final dtos = await _apiService.getUsers();
    return dtos.map(_mapUserDtoToEntity).toList();
  }

  Future<User?> getUserById(int id) async {
    try {
      final dto = await _apiService.getUserById(id);
      return _mapUserDtoToEntity(dto);
    } catch (e) {
      return null;
    }
  }

  Future<User?> getUserByFirebaseId(String firebaseId) async {
    final users = await getUsers();
    try {
      return users.firstWhere((user) => user.firebaseId == firebaseId);
    } catch (e) {
      return null;
    }
  }

  Future<List<Team>> getTeams() async {
    final dtos = await _apiService.getTeams();
    return dtos.map(_mapTeamDtoToEntity).toList();
  }

  Future<Team?> getTeamById(int id) async {
    try {
      final dto = await _apiService.getTeamById(id);
      return _mapTeamDtoToEntity(dto);
    } catch (e) {
      return null;
    }
  }

  Future<Team?> getTeamByStringId(String id) async {
    final teams = await getTeams();
    try {
      return teams.firstWhere((team) => team.id == id);
    } catch (e) {
      return null;
    }
  }

  Future<List<Match>> getMatches() async {
    await _ensureTeamsCache();
    final dtos = await _apiService.getMatches();
    return dtos.map((dto) => _mapMatchDtoToEntity(dto, _teamsCache!)).toList();
  }

  Future<Match?> getMatchById(int id) async {
    try {
      await _ensureTeamsCache();
      final dto = await _apiService.getMatchById(id);
      return _mapMatchDtoToEntity(dto, _teamsCache!);
    } catch (e) {
      return null;
    }
  }

  Future<Match?> getMatchByStringId(String id) async {
    final intId = int.tryParse(id);
    if (intId == null) return null;
    return getMatchById(intId);
  }

  Future<List<Bet>> getBets() async {
    await _ensureTeamsCache();
    final dtos = await _apiService.getBets();
    return dtos.map((dto) => _mapBetDtoToEntity(dto, _teamsCache!)).toList();
  }

  Future<List<Bet>> getBetsByMatchId(int matchId) async {
    await _ensureTeamsCache();
    final dtos = await _apiService.getBetsByMatchId(matchId);
    return dtos.map((dto) => _mapBetDtoToEntity(dto, _teamsCache!)).toList();
  }

  Future<List<Bet>> getBetsByUserId(int userId) async {
    await _ensureTeamsCache();
    final dtos = await _apiService.getBetsByUserId(userId);
    return dtos.map((dto) => _mapBetDtoToEntity(dto, _teamsCache!)).toList();
  }

  Future<List<Bet>> getBetsForUserFirebaseId(String firebaseId) async {
    final user = await getUserByFirebaseId(firebaseId);
    if (user == null) return [];
    final userId = int.tryParse(user.id);
    if (userId == null) return [];
    return getBetsByUserId(userId);
  }

  Future<List<PrivateTable>> getPrivateTables() async {
    final dtos = await _apiService.getPrivateTables();
    return dtos.map(_mapPrivateTableDtoToEntity).toList();
  }

  Future<PrivateTable?> getPrivateTableById(int id) async {
    try {
      final dto = await _apiService.getPrivateTableById(id);
      return _mapPrivateTableDtoToEntity(dto);
    } catch (e) {
      return null;
    }
  }

  Future<void> _ensureTeamsCache() async {
    if (_teamsCache != null) return;
    final teams = await _apiService.getTeams();
    _teamsCache = {for (final team in teams) team.id: team};
  }

  User _mapUserDtoToEntity(UserDto dto) {
    return User(
      id: dto.id.toString(),
      firebaseId: dto.firebaseId,
      name: dto.name,
      surname: dto.surname,
      nickname: dto.nickname,
      image: dto.image,
      winnerPredictionId: dto.winnerPredictionId?.toString(),
    );
  }

  Team _mapTeamDtoToEntity(TeamDto dto) {
    return Team(
      id: dto.abbreviation.toLowerCase(),
      name: dto.name,
      abbreviation: dto.abbreviation,
    );
  }

  Match _mapMatchDtoToEntity(MatchDto dto, Map<int, TeamDto> teamsCache) {
    final homeTeamDto = teamsCache[dto.homeTeamId];
    final awayTeamDto = teamsCache[dto.awayTeamId];

    final homeTeam = homeTeamDto != null
        ? LocalFetchable(_mapTeamDtoToEntity(homeTeamDto))
        : const NoOpFetchable<Team>();
    final awayTeam = awayTeamDto != null
        ? LocalFetchable(_mapTeamDtoToEntity(awayTeamDto))
        : const NoOpFetchable<Team>();

    MatchOutcome? outcome;
    if (dto.homeResult != null && dto.awayResult != null) {
      outcome = MatchOutcome(
        goals: Goals(home: dto.homeResult!, away: dto.awayResult!),
        penaltiesWinnerId: dto.penaltiesWinnerId != null
            ? _getTeamStringIdFromIntId(dto.penaltiesWinnerId!, teamsCache)
            : null,
      );
    }

    return Match(
      id: dto.id.toString(),
      homeTeam: homeTeam,
      awayTeam: awayTeam,
      kickOffDate: DateTime.fromMillisecondsSinceEpoch(dto.kickOffDate),
      stage: dto.stage,
      knockoutStage: dto.knockoutStage != 0,
      outcome: outcome,
    );
  }

  String? _getTeamStringIdFromIntId(int teamId, Map<int, TeamDto> teamsCache) {
    final teamDto = teamsCache[teamId];
    if (teamDto == null) return null;
    return teamDto.abbreviation.toLowerCase();
  }

  Bet _mapBetDtoToEntity(BetDto dto, Map<int, TeamDto> teamsCache) {
    return Bet(
      id: dto.id.toString(),
      matchId: dto.matchId.toString(),
      userId: dto.userId.toString(),
      prediction: MatchOutcome(
        goals: Goals(home: dto.homeGoalsPrediction, away: dto.awayGoalsPrediction),
        penaltiesWinnerId: dto.penaltiesWinnerId != null
            ? _getTeamStringIdFromIntId(dto.penaltiesWinnerId!, teamsCache)
            : null,
      ),
    );
  }

  PrivateTable _mapPrivateTableDtoToEntity(PrivateTableDto dto) {
    return PrivateTable(
      id: dto.id.toString(),
      name: dto.name,
      ownerId: dto.ownerId.toString(),
      memberIds: dto.memberIds.map((id) => id.toString()).toList(),
    );
  }
}
