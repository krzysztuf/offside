import 'package:dart_mappable/dart_mappable.dart';
import 'package:offside/domain/entities/match_outcome.dart';

import 'bet.dart';
import 'goals.dart';
import 'team.dart';

part 'match.mapper.dart';

@MappableClass()
class Match with MatchMappable {
  final int id;
  final Team? homeTeam;
  final Team? awayTeam;
  final DateTime kickOffDate;
  final String stage;
  final bool knockoutStage;
  final MatchOutcome? outcome;
  final List<Bet> bets;

  const Match({
    this.id = 0,
    this.homeTeam,
    this.awayTeam,
    required this.kickOffDate,
    required this.stage,
    required this.knockoutStage,
    this.outcome,
    this.bets = const [],
  });
}

extension ConvenienceMethods on Match {
  bool afterKickOff(DateTime now) {
    return now.isAfter(kickOffDate);
  }

  bool get finished => outcome?.goals != null;

  bool beingPlayed(DateTime now) {
    return afterKickOff(now) && !finished;
  }

  int pointsFor({required MatchOutcome prediction}) {
    final result = outcome?.goals;
    if (result == null) {
      return 0;
    }

    final matchEndedInOvertime = outcome!.penaltiesWinnerId != null;
    if (result == prediction.goals) {
      if (knockoutStage && matchEndedInOvertime && prediction.penaltiesWinnerId == outcome!.penaltiesWinnerId) {
        return 4;
      }

      return 3;
    }

    if (matchEndedInOvertime && knockoutStage && prediction.penaltiesWinnerId == outcome!.penaltiesWinnerId) {
      return 3;
    }

    final predictedGoals = prediction.goals;
    if (result.homeTeamWins && predictedGoals.homeTeamWins ||
        result.awayTeamWins && predictedGoals.awayTeamWins ||
        result.draw && predictedGoals.draw) {
      if (result.goalDifference == predictedGoals.goalDifference) {
        return 2;
      }

      return 1;
    }

    return 0;
  }

  Team? teamFor({required int id}) {
    if (homeTeam?.id == id) {
      return homeTeam;
    }

    if (awayTeam?.id == id) {
      return awayTeam;
    }

    return null;
  }

  List<Bet> get superBets {
    return bets.where((bet) {
      return bet.prediction.goals == outcome!.goals;
    }).toList();
  }
}
