import 'package:dart_mappable/dart_mappable.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:offside/domain/entities/user_prediction.dart';

part 'match_bets_state.mapper.dart';

@MappableClass()
class MatchBetsState with MatchBetsStateMappable {
  final bool loading;
  final Match match;
  final List<UserPrediction> bets;

  const MatchBetsState({
    required this.loading,
    required this.match,
    this.bets = const [],
  });
}
