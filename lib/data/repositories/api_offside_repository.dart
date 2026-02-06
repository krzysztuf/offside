import 'dart:developer';

import 'package:offside/data/sources/offside_api.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:offside/domain/repositories/offside_repository.dart';

class ApiOffsideRepository implements OffsideRepository {
  final DateTime now;
  final OffsideApi _api;

  ApiOffsideRepository(this.now, this._api);

  @override
  Future<List<Match>> lastSixMatches() async {
    final teams = await _api.teams();
    final dtos = await _api.matches();
    final allMatches = dtos.map((dto) => dto.toEntity(teams)).toList();

    final pastMatches = allMatches.where((match) => match.kickOffDate.isBefore(now)).toList();

    pastMatches.sort((a, b) => b.kickOffDate.compareTo(a.kickOffDate));

    return pastMatches.take(6).toList();
  }

  @override
  Future<List<Match>> upcomingMatches() async {
    final teams = await _api.teams();
    final dtos = await _api.matches();
    final allMatches = dtos.map((dto) => dto.toEntity(teams)).toList();
    final midnight = now.copyWith(hour: 0, minute: 0, second: 0, millisecond: 0);

    final upcoming = allMatches.where((match) => match.kickOffDate.isAfter(midnight)).toList();
    log('--- matches count: ${upcoming.length}');
    for (var match in upcoming) {
      log('home: ${match.homeTeam?.name} ${match.awayTeam?.name}');
    }

    return upcoming;
  }

  @override
  Future<List<Match>> matchesHistory() async {
    final teams = await _api.teams();
    final dtos = await _api.matches();
    final allMatches = dtos.map((dto) => dto.toEntity(teams)).toList();
    final midnight = now.copyWith(hour: 0, minute: 0, second: 0, millisecond: 0);

    return allMatches.where((match) => match.kickOffDate.isBefore(midnight)).toList();
  }
}
