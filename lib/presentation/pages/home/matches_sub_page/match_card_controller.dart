import 'package:offside/core/extensions/iterable_extensions.dart';
import 'package:offside/domain/entities/bet.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:offside/domain/entities/match_outcome.dart';
import 'package:offside/data/repositories/providers.dart';
import 'package:offside/domain/usecases/match_providers.dart';
import 'package:offside/domain/usecases/settings_providers.dart';
import 'package:offside/presentation/pages/home/matches_sub_page/matches_sub_page_controller.dart';
import 'package:offside/presentation/providers/date_time_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'match_card_state.dart';

part 'match_card_controller.g.dart';

@riverpod
class MatchCardController extends _$MatchCardController {
  @override
  MatchCardState build() {
    final match = ref.read(currentCardMatchProvider);
    final bets = ref.watch(currentCardBetsProvider);
    final userId = ref.watch(currentUserIdSettingProvider);

    return _buildState(match, bets, userId);
  }

  MatchCardState _buildState(Match match, List<Bet> bets, int userId) {
    final currentTime = ref.read(dateTimeProvider);
    final bet = bets.find((bet) => bet.userId == userId);

    var betState = bet != null ? BetState.placed : BetState.notPlaced;
    if (match.afterKickOff(currentTime) && bet == null) {
      betState = BetState.expired;
    }

    return MatchCardState(
      match: match.copyWith(bets: bets),
      bet: bet,
      betState: betState,
      loading: false,
    );
  }

  Future<void> setResult(MatchOutcome outcome) async {
    _setLoading(true);

    final updatedMatch = state.match.copyWith(outcome: outcome);
    await ref.read(updateMatchProvider(updatedMatch).future);

    state = state.copyWith(match: updatedMatch, loading: false);
  }

  Future<void> updatePrediction(MatchOutcome prediction) async {
    if (prediction == state.bet?.prediction) {
      return;
    }

    final now = ref.read(dateTimeProvider);
    if (state.match.afterKickOff(now)) {
      return;
    }

    _setLoading(true);
    state = state.copyWith(bet: await _placeBet(prediction), betState: BetState.placed);
    _setLoading(false);
  }

  Future<void> removeMatch() async {
    ref.invalidate(matchesSubPageControllerProvider);
    return ref.read(matchesRepositoryProvider).remove(state.match);
  }

  Future<Bet> _placeBet(MatchOutcome prediction) async {
    final bet = Bet(
      matchId: state.match.id,
      userId: ref.read(currentUserIdSettingProvider),
      prediction: prediction,
    );

    await ref.read(placeBetProvider(state.match, bet).future);
    return bet;
  }

  void _setLoading(bool loading) {
    state = state.copyWith(loading: loading);
  }
}

@riverpod
Match currentCardMatch(Ref ref) {
  throw UnimplementedError('currentCardMatch unimplemented');
}

@riverpod
List<Bet> currentCardBets(Ref ref) {
  throw UnimplementedError('currentCardBets unimplemented');
}
