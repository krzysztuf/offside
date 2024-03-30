import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:offside/domain/entities/user_prediction.dart';

part 'match_bets_state.freezed.dart';

@freezed
class MatchBetsState with _$MatchBetsState {
  const factory MatchBetsState({
    required bool loading,
    required Match match,
    @Default([]) List<UserPrediction> bets,
  }) = _MatchBetsState;

  const MatchBetsState._();
}
