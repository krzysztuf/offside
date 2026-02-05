// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:offside/data/models/team_dto.dart';
import 'package:offside/domain/entities/fetchable.dart';
import 'package:offside/domain/entities/goals.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:offside/domain/entities/match_outcome.dart';
import 'package:offside/domain/entities/team.dart';

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

  Match toEntity(Map<int, TeamDto> teamsCache) {
    final homeTeamDto = teamsCache[homeTeamId];
    final awayTeamDto = teamsCache[awayTeamId];

    final homeTeam = homeTeamDto != null
        ? LocalFetchable(homeTeamDto.toEntity())
        : const NoOpFetchable<Team>();
    final awayTeam = awayTeamDto != null
        ? LocalFetchable(awayTeamDto.toEntity())
        : const NoOpFetchable<Team>();

    MatchOutcome? outcome;
    if (homeResult != null && awayResult != null) {
      outcome = MatchOutcome(
        goals: Goals(home: homeResult!, away: awayResult!),
        penaltiesWinnerId: penaltiesWinnerId != null
            ? teamsCache[penaltiesWinnerId]?.abbreviation.toLowerCase()
            : null,
      );
    }

    return Match(
      id: id.toString(),
      homeTeam: homeTeam,
      awayTeam: awayTeam,
      kickOffDate: DateTime.fromMillisecondsSinceEpoch(kickOffDate),
      stage: stage,
      knockoutStage: knockoutStage != 0,
      outcome: outcome,
    );
  }
}
