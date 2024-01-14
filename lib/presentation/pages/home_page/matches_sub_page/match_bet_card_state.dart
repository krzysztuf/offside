import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:offside/domain/entities/bet.dart';
import 'package:offside/domain/entities/match.dart';

part 'match_bet_card_state.freezed.dart';

@freezed
class MatchBetCardState with _$MatchBetCardState {
  const factory MatchBetCardState({
    required Match match,
    Bet? bet,
    @Default(BetState.loading) BetState betState,
  }) = _MatchBetCardState;

  const MatchBetCardState._();
}

enum BetState {
  loading,
  notPlaced,
  placed,
}
