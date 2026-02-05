// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:offside/data/models/team_dto.dart';
import 'package:offside/domain/entities/goals.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:offside/domain/entities/match_outcome.dart';

part 'match_dto.freezed.dart';
part 'match_dto.g.dart';

@freezed
sealed class MatchDto with _$MatchDto {
  const factory MatchDto({
    required int id,
    @JsonKey(name: 'home_team_id') required int homeTeamId,
    @JsonKey(name: 'away_team_id') required int awayTeamId,
    @JsonKey(name: 'kick_off_date') required int kickOffDate,
    required String stage,
    @JsonKey(name: 'knockout_stage') required int knockoutStage,
    @JsonKey(name: 'home_result') int? homeResult,
    @JsonKey(name: 'away_result') int? awayResult,
    @JsonKey(name: 'penalties_winner_id') int? penaltiesWinnerId,
  }) = _MatchDto;

  const MatchDto._();

  factory MatchDto.fromJson(Map<String, dynamic> json) => _$MatchDtoFromJson(json);

  Match toEntity(List<TeamDto> teams) {
    final homeTeamDto = teams.where((t) => t.id == homeTeamId).firstOrNull;
    final awayTeamDto = teams.where((t) => t.id == awayTeamId).firstOrNull;

    MatchOutcome? outcome;
    if (homeResult != null && awayResult != null) {
      final penaltiesWinnerDto = penaltiesWinnerId != null
          ? teams.where((t) => t.id == penaltiesWinnerId).firstOrNull
          : null;
      outcome = MatchOutcome(
        goals: Goals(home: homeResult!, away: awayResult!),
        penaltiesWinnerId: penaltiesWinnerDto?.abbreviation.toLowerCase(),
      );
    }

    return Match(
      id: id,
      homeTeam: homeTeamDto?.toEntity(),
      awayTeam: awayTeamDto?.toEntity(),
      kickOffDate: DateTime.fromMillisecondsSinceEpoch(kickOffDate),
      stage: stage,
      knockoutStage: knockoutStage != 0,
      outcome: outcome,
    );
  }
}
