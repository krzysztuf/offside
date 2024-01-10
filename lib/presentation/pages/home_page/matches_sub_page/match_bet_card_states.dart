import 'package:offside/domain/entities/bet.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:offside/presentation/view_state.dart';

class MatchBetCardState extends ViewState {
  final Bet bet;
  final Match match;

  MatchBetCardState(this.bet, this.match);
}

class MatchNotStarted extends MatchBetCardState {
  MatchNotStarted(super.bet, super.match);
}

class MatchIsBeingPlayed extends MatchBetCardState {
  MatchIsBeingPlayed(super.bet, super.match);
}

class MatchEnded extends MatchBetCardState {
  MatchEnded(super.bet, super.match);
}

class PlacedBetLoaded extends MatchBetCardState {
  PlacedBetLoaded(super.bet, super.match);
}
