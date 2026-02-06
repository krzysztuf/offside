import 'package:dart_mappable/dart_mappable.dart';
import 'package:offside/domain/entities/bet.dart';
import 'package:offside/domain/entities/goals.dart';
import 'package:offside/domain/entities/match_outcome.dart';

part 'bet_dto.mapper.dart';

@MappableClass()
class BetDto with BetDtoMappable {
  final int id;
  @MappableField(key: 'match_id')
  final int matchId;
  @MappableField(key: 'user_id')
  final int userId;
  @MappableField(key: 'home_goals_prediction')
  final int homeGoalsPrediction;
  @MappableField(key: 'away_goals_prediction')
  final int awayGoalsPrediction;
  @MappableField(key: 'penalties_winner_id')
  final int? penaltiesWinnerId;

  const BetDto({
    required this.id,
    required this.matchId,
    required this.userId,
    required this.homeGoalsPrediction,
    required this.awayGoalsPrediction,
    this.penaltiesWinnerId,
  });

  Bet toEntity() => Bet(
    id: id,
    matchId: matchId,
    userId: userId,
    prediction: MatchOutcome(
      goals: Goals(home: homeGoalsPrediction, away: awayGoalsPrediction),
      penaltiesWinnerId: penaltiesWinnerId,
    ),
  );
}
