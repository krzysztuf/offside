import 'package:offside/domain/entities/bet.dart';
import 'package:offside/presentation/view_state.dart';

class MatchBetCardState extends ViewState {
  final Bet bet;

  MatchBetCardState(this.bet);
}

class MatchNotStarted extends MatchBetCardState {
  MatchNotStarted(super.bet);
}

class MatchIsBeingPlayed extends MatchBetCardState {
  MatchIsBeingPlayed(super.bet);
}

class MatchEnded extends MatchBetCardState {
  MatchEnded(super.bet);
}

class PlacedBetLoaded extends MatchBetCardState {
  PlacedBetLoaded(super.bet);
}
