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

// class MatchBetCardState extends ViewState {
//   final Bet? bet;
//   final Match match;
//
//   bool get betPlaced => bet != null;
//
//   MatchBetCardState(this.bet, this.match);
// }
//
// class MatchNotStarted extends MatchBetCardState {
//   MatchNotStarted(super.bet, super.match);
// }
//
// class MatchIsBeingPlayed extends MatchBetCardState {
//   MatchIsBeingPlayed(super.bet, super.match);
// }
//
// class MatchEnded extends MatchBetCardState {
//   MatchEnded(super.bet, super.match);
// }
//
// class PlacedBetLoaded extends MatchBetCardState {
//   PlacedBetLoaded(super.bet, super.match);
// }
