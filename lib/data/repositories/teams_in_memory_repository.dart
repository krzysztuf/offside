import 'dart:convert';
import 'dart:developer';

import 'package:flutter/services.dart';
import 'package:offside/domain/models/team.dart';
import 'package:offside/domain/repositories/teams_repository.dart';

class TeamsInMemoryRepository extends TeamsRepository {
  var teams = <Team>[];

  @override
  Future<void> add(Team item) {
    // TODO: implement add
    throw UnimplementedError();
  }

  @override
  Future<List<Team>> all() async {
    try {
      await _maybeLoadFromAssets();
    } catch (e, s) {
      log(e.toString(), stackTrace: s);
    }
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
    final teamsJson = await rootBundle.loadString('assets/dummy/teams.json');
    final teamsDecoded = jsonDecode(teamsJson) as List<dynamic>;
    teams = teamsDecoded.map((t) => Team.fromJson(t)).toList();
  }
}
