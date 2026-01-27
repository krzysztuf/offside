import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:offside/domain/entities/bet.dart';
import 'package:offside/domain/entities/match.dart';

part 'match_card_state.freezed.dart';

@freezed
sealed class MatchCardState with _$MatchCardState {
  const factory MatchCardState({
    required Match match,
    Bet? bet,
    @Default(BetState.notPlaced) BetState betState,
    @Default(false) bool loading,
  }) = _MatchCardState;

  const MatchCardState._();
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
