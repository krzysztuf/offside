import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:offside/domain/entities/bet.dart';
import 'package:offside/domain/entities/match.dart';

part 'match_bet_card_state.freezed.dart';

@freezed
class MatchBetCardState with _$MatchBetCardState {
  const factory MatchBetCardState({
    required Match match,
    Bet? bet,
    @Default(BetState.notPlaced) BetState betState,
    @Default(false) bool loading,
  }) = _MatchBetCardState;

  const MatchBetCardState._();
}

enum BetState {
  loading,
  notPlaced,
  placed,
  expired,
}

extension MatchBetConvenienceExtensions on MatchBetCardState {
  bool canPlaceBet(DateTime now) => betState == BetState.notPlaced && !match.afterKickOff(now);

  bool canUpdateBet(DateTime now) => betState == BetState.placed && !match.afterKickOff(now);
}
