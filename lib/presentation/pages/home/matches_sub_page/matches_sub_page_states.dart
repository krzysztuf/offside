import 'package:offside/domain/entities/bet.dart';
import 'package:offside/domain/entities/match.dart';

class MatchesSubPageState {
  final Map<DateTime, List<Match>> matches;
  final Map<int, List<Bet>> betsByMatchId;

  MatchesSubPageState(this.matches, {this.betsByMatchId = const {}});
}
