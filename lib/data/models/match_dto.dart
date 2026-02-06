import 'package:dart_mappable/dart_mappable.dart';
import 'package:offside/data/models/team_dto.dart';
import 'package:offside/domain/entities/goals.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:offside/domain/entities/match_outcome.dart';

part 'match_dto.mapper.dart';

@MappableClass()
class MatchDto with MatchDtoMappable {
  final int id;
  @MappableField(key: 'home_team_id')
  final int homeTeamId;
  @MappableField(key: 'away_team_id')
  final int awayTeamId;
  @MappableField(key: 'kick_off_date')
  final int kickOffDate;
  final String stage;
  @MappableField(key: 'knockout_stage')
  final int knockoutStage;
  @MappableField(key: 'home_result')
  final int? homeResult;
  @MappableField(key: 'away_result')
  final int? awayResult;
  @MappableField(key: 'penalties_winner_id')
  final int? penaltiesWinnerId;

  const MatchDto({
    required this.id,
    required this.homeTeamId,
    required this.awayTeamId,
    required this.kickOffDate,
    required this.stage,
    required this.knockoutStage,
    this.homeResult,
    this.awayResult,
    this.penaltiesWinnerId,
  });

  Match toEntity(List<TeamDto> teams) {
    final homeTeamDto = teams.where((t) => t.id == homeTeamId).firstOrNull;
    final awayTeamDto = teams.where((t) => t.id == awayTeamId).firstOrNull;

    MatchOutcome? outcome;
    if (homeResult != null && awayResult != null) {
      outcome = MatchOutcome(
        goals: Goals(home: homeResult!, away: awayResult!),
        penaltiesWinnerId: penaltiesWinnerId,
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
