import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:offside/data/sources/local/memory_repository.dart';
import 'package:offside/domain/entities/team.dart';

class TeamsInMemoryRepository extends MemoryRepository<Team> {
  TeamsInMemoryRepository() {
    _maybeLoadFromAssets();
  }

  Future<void> _maybeLoadFromAssets() async {
    final teamsJson = await rootBundle.loadString('assets/dummy/teams.json');
    final teamsDecoded = jsonDecode(teamsJson) as List<dynamic>;
    items = teamsDecoded.map((t) => Team.fromJson(t)).toList();
  }
}
