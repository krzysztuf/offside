// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:offside/data/models/team_dto.dart';
import 'package:offside/domain/entities/bet.dart';
import 'package:offside/domain/entities/goals.dart';
import 'package:offside/domain/entities/match_outcome.dart';

part 'bet_dto.freezed.dart';
part 'bet_dto.g.dart';

@freezed
sealed class BetDto with _$BetDto {
  const factory BetDto({
    required int id,
    @JsonKey(name: 'match_id') required int matchId,
    @JsonKey(name: 'user_id') required int userId,
    @JsonKey(name: 'home_goals_prediction') required int homeGoalsPrediction,
    @JsonKey(name: 'away_goals_prediction') required int awayGoalsPrediction,
    @JsonKey(name: 'penalties_winner_id') int? penaltiesWinnerId,
  }) = _BetDto;

  const BetDto._();

  factory BetDto.fromJson(Map<String, dynamic> json) => _$BetDtoFromJson(json);

  Bet toEntity(Map<int, TeamDto> teamsCache) => Bet(
    id: id,
    matchId: matchId,
    userId: userId,
    prediction: MatchOutcome(
      goals: Goals(home: homeGoalsPrediction, away: awayGoalsPrediction),
      penaltiesWinnerId: penaltiesWinnerId != null
          ? teamsCache[penaltiesWinnerId]?.abbreviation.toLowerCase()
          : null,
    ),
  );
}
