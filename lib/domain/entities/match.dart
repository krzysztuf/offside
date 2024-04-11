// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:offside/domain/entities/identifiable.dart';
import 'package:offside/domain/entities/match_outcome.dart';

import 'bet.dart';
import 'fetchable.dart';
import 'goals.dart';
import 'team.dart';

part 'match.freezed.dart';
part 'match.g.dart';

@freezed
class Match with _$Match implements Identifiable {
  const factory Match({
    @Default('') String id,
    @Default(NoOpFetchable()) @JsonKey(includeFromJson: false) Fetchable<Team> homeTeam,
    @Default(NoOpFetchable()) @JsonKey(includeFromJson: false) Fetchable<Team> awayTeam,
    required DateTime kickOffDate,
    required String stage,
    required bool knockoutStage,
    MatchOutcome? outcome,
    @Default(NoOpFetchable()) @JsonKey(includeFromJson: false) Fetchable<List<Bet>> bets,
  }) = _Match;

  const Match._();

  factory Match.fromJson(Map<String, dynamic> json) => _$MatchFromJson(json);

  @override
  String get identifier => id;
}

extension ConvenienceMethods on Match {
  bool afterKickOff(DateTime now) {
    return now.isAfter(kickOffDate);
  }

  bool get finished => outcome?.goals != null;

  bool beingPlayed(DateTime now) {
    return afterKickOff(now) && !finished;
  }

  int pointsFor({required Goals prediction}) {
    final result = outcome!.goals;
    if (result == prediction) {
      return 3;
    }

    if (result.homeTeamWon && prediction.homeTeamWon ||
        result.awayTeamWon && prediction.awayTeamWon ||
        result.draw && prediction.draw) {
      return 1;
    }

    return 0;
  }
}
