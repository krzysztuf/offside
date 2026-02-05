// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:offside/domain/entities/match_outcome.dart';

import 'bet.dart';
import 'goals.dart';
import 'team.dart';

part 'match.freezed.dart';
part 'match.g.dart';

@freezed
sealed class Match with _$Match {
  const factory Match({
    @Default(0) int id,
    @JsonKey(includeFromJson: false) Team? homeTeam,
    @JsonKey(includeFromJson: false) Team? awayTeam,
    required DateTime kickOffDate,
    required String stage,
    required bool knockoutStage,
    MatchOutcome? outcome,
    @Default([]) @JsonKey(includeFromJson: false) List<Bet> bets,
  }) = _Match;

  const Match._();

  factory Match.fromJson(Map<String, dynamic> json) => _$MatchFromJson(json);
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

  Team? teamFor({required String id}) {
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
