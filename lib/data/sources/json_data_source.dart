import 'dart:convert';
import 'dart:io';
import 'package:offside/domain/entities/user.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:offside/domain/entities/bet.dart';
import 'package:offside/domain/entities/team.dart';
import 'package:offside/domain/entities/private_table.dart';

class JsonDataSource {
  static JsonDataSource? _instance;
  static JsonDataSource get instance => _instance ??= JsonDataSource._();

  JsonDataSource._();

  List<dynamic>? _usersData;
  List<dynamic>? _matchesData;
  Map<String, dynamic>? _matchBetsData;
  List<dynamic>? _teamsData;
  List<dynamic>? _tablesData;

  Future<void> _loadData() async {
    if (_usersData != null) return;

    try {
      final usersFile = File('old-db/users.json');
      final matchesFile = File('old-db/matches.json');
      final matchBetsFile = File('old-db/matchBets.json');
      final teamsFile = File('old-db/teams.json');
      final tablesFile = File('old-db/tables.json');

      _usersData = jsonDecode(await usersFile.readAsString());
      _matchesData = jsonDecode(await matchesFile.readAsString());
      _matchBetsData = jsonDecode(await matchBetsFile.readAsString());
      _teamsData = jsonDecode(await teamsFile.readAsString());
      _tablesData = jsonDecode(await tablesFile.readAsString());
    } catch (e) {
      _usersData = <dynamic>[];
      _matchesData = <dynamic>[];
      _matchBetsData = <String, dynamic>{};
      _teamsData = <dynamic>[];
      _tablesData = <dynamic>[];
    }
  }

  Future<List<User>> getUsers() async {
    await _loadData();
    final usersList = _usersData!;
    return usersList.map((json) => User.fromJson(json)).toList();
  }

  Future<List<Match>> getMatches() async {
    await _loadData();
    final matchesList = _matchesData!;
    return matchesList.map((json) => Match.fromJson(json)).toList();
  }

  Future<List<Bet>> getBets() async {
    await _loadData();
    final betsMap = _matchBetsData as Map<String, dynamic>;
    final allBets = <Bet>[];
    
    for (final matchId in betsMap.keys) {
      final matchBets = betsMap[matchId] as List<dynamic>;
      for (final betJson in matchBets) {
        allBets.add(Bet.fromJson(betJson));
      }
    }
    
    return allBets;
  }

  Future<List<Team>> getTeams() async {
    await _loadData();
    final teamsList = _teamsData!;
    return teamsList.map((json) {
      final teamMap = json as Map<String, dynamic>;
      return Team(
        id: teamMap['abbreviation']?.toLowerCase() ?? '',
        name: teamMap['name'] ?? '',
        abbreviation: teamMap['abbreviation'] ?? '',
      );
    }).toList();
  }

  Future<List<PrivateTable>> getTables() async {
    await _loadData();
    final tablesList = _tablesData!;
    return tablesList.map((json) => PrivateTable.fromJson(json)).toList();
  }

  Future<List<Bet>> getBetsForMatch(String matchId) async {
    await _loadData();
    final betsMap = _matchBetsData as Map<String, dynamic>;
    
    if (!betsMap.containsKey(matchId)) {
      return [];
    }
    
    final matchBets = betsMap[matchId] as List<dynamic>;
    return matchBets.map((json) => Bet.fromJson(json)).toList();
  }

  Future<List<Bet>> getBetsForUser(String userId) async {
    final allBets = await getBets();
    return allBets.where((bet) => bet.userId == userId).toList();
  }

  Future<User?> getUserById(String userId) async {
    final users = await getUsers();
    try {
      return users.firstWhere((user) => user.firebaseId == userId);
    } catch (e) {
      return null;
    }
  }

  Future<Team?> getTeamById(String teamId) async {
    final teams = await getTeams();
    try {
      return teams.firstWhere((team) => team.id == teamId);
    } catch (e) {
      return null;
    }
  }
}