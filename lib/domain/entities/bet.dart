import 'package:dart_mappable/dart_mappable.dart';
import 'package:offside/domain/entities/match_outcome.dart';

part 'bet.mapper.dart';

@MappableClass()
class Bet with BetMappable {
  final int matchId;
  final int userId;
  final MatchOutcome prediction;

  const Bet({required this.matchId, required this.userId, required this.prediction});
}

extension BetListExtensions on Iterable<Bet> {
  Map<int, List<Bet>> groupByMatchId() {
    return fold(<int, List<Bet>>{}, (map, bet) {
      map.putIfAbsent(bet.matchId, () => []).add(bet);
      return map;
    });
  }
}
