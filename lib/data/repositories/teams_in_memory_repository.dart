import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:offside/domain/models/team.dart';
import 'package:offside/domain/repositories/teams_repository.dart';

class TeamsInMemoryRepository extends TeamsRepository {
  late final List<Team>? _teams;

  List<Team> get teams => _teams!;

  @override
  Future<void> add(Team item) {
    // TODO: implement add
    throw UnimplementedError();
  }

  @override
  Future<List<Team>> all() async {
    await _maybeLoadFromAssets();
    return teams;
  }

  @override
  Future<Team?> byId({required int id}) {
    // TODO: implement byId
    throw UnimplementedError();
  }

  @override
  Future<void> clear() {
    // TODO: implement clear
    throw UnimplementedError();
  }

  @override
  Future<void> remove(Team item) {
    // TODO: implement remove
    throw UnimplementedError();
  }

  Future<void> _maybeLoadFromAssets() async {
    if (_teams == null) {
      return;
    }

    final teamsJson = await rootBundle.load('assets/dummy/teams.json');
    final teamsDecoded = jsonDecode(teamsJson.toString()) as List<dynamic>;

    _teams = teamsDecoded.map((t) => Team.fromJson(t)).toList();
  }
}
