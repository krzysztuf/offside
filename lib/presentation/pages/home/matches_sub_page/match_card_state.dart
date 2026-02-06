import 'package:dart_mappable/dart_mappable.dart';
import 'package:offside/domain/entities/bet.dart';
import 'package:offside/domain/entities/match.dart';

part 'match_card_state.mapper.dart';

@MappableClass()
class MatchCardState with MatchCardStateMappable {
  final Match match;
  final Bet? bet;
  final BetState betState;
  final bool loading;

  const MatchCardState({
    required this.match,
    this.bet,
    this.betState = BetState.notPlaced,
    this.loading = false,
  });
}

enum BetState {
  loading,
  notPlaced,
  placed,
  expired,
}

extension MatchBetConvenienceExtensions on MatchCardState {
  bool canPlaceBet(DateTime now) => betState == BetState.notPlaced && !match.afterKickOff(now);

  bool canUpdateBet(DateTime now) => betState == BetState.placed && !match.afterKickOff(now);
}
