import 'package:offside/domain/entities/bet.dart';
import 'package:offside/domain/entities/match.dart';

class MatchesData {
  final Map<DateTime, List<Match>> matches;
  final Map<int, List<Bet>> betsByMatchId;

  MatchesData(this.matches, {this.betsByMatchId = const {}});
}
