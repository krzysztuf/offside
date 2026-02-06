import 'package:dart_mappable/dart_mappable.dart';
import 'package:offside/domain/entities/match_outcome.dart';

part 'bet.mapper.dart';

@MappableClass()
class Bet with BetMappable {
  final int id;
  final int matchId;
  final int userId;
  final MatchOutcome prediction;

  const Bet({
    this.id = 0,
    required this.matchId,
    required this.userId,
    required this.prediction,
  });
}
