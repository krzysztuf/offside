import 'package:offside/core/extensions/iterable_extensions.dart';
import 'package:offside/domain/entities/bet.dart';
import 'package:offside/domain/entities/goals.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:offside/domain/usecases/matches/match_use_case_providers.dart';
import 'package:offside/domain/usecases/settings/reactive_settings_providers.dart';
import 'package:offside/presentation/pages/home/matches_sub_page/matches_sub_page_controller.dart';
import 'package:offside/presentation/providers/date_time_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'match_bet_card_state.dart';

part 'match_bet_card_controller.g.dart';

@riverpod
class MatchBetCardController extends _$MatchBetCardController {
  @override
  MatchBetCardState build() {
    final match = ref.read(currentCardMatchProvider);
    final userId = ref.watch(currentUserIdSettingProvider);

    _fetchBets(match, userId);

    return MatchBetCardState(match: match, loading: true);
  }

  Future<void> setResult(Goals result) async {
    state = state.copyWith(loading: true);

    final updatedMatch = state.match.copyWith(result: result);
    ref.read(updateMatchUseCaseProvider).run(updatedMatch);

    state = state.copyWith(match: updatedMatch, loading: false);
  }

  void _fetchBets(Match match, String userId) {
    match.bets.fetch().then((_) {
      final bet = match.bets.value.find((bet) => bet.userId == userId);

      var updatedState = state.copyWith(
        bet: bet,
        betState: bet != null ? BetState.placed : BetState.notPlaced,
        loading: false,
      );

      if (match.afterKickOff(ref.read(dateTimeProvider)) && bet == null) {
        updatedState = updatedState.copyWith(betState: BetState.expired);
      }

      state = updatedState;
    });
  }

  Future<void> updatePrediction(Goals prediction) async {
    if (prediction == state.bet?.prediction) {
      return;
    }

    setLoading(true);

    state = state.copyWith(
      bet: await _createOrUpdateBet(prediction),
      betState: BetState.placed,
    );

    setLoading(false);
  }

  Future<void> removeMatch() async {
    ref.invalidate(matchesSubPageControllerProvider);
    return ref.read(removeMatchUseCaseProvider).run(state.match);
  }

  Future<Bet> _createOrUpdateBet(Goals prediction) async {
    if (state.bet != null) {
      return await _updateExistingBet(prediction);
    }

    return await _createNewBet(prediction);
  }

  Future<Bet> _updateExistingBet(Goals prediction) async {
    final bet = state.bet!.copyWith(prediction: prediction);
    await ref.read(placeBetUseCaseProvider(state.match)).run(bet);
    return bet;
  }

  Future<Bet> _createNewBet(Goals prediction) async {
    final bet = Bet(
      matchId: state.match.id,
      userId: ref.read(currentUserIdSettingProvider),
      prediction: prediction,
    );

    final id = await ref.read(placeBetUseCaseProvider(state.match)).run(bet);
    return bet.copyWith(id: id);
  }

  void setLoading(bool loading) {
    state = state.copyWith(loading: loading);
  }
}

@riverpod
Match currentCardMatch(CurrentCardMatchRef ref) {
  return throw UnimplementedError('currentCardMatch unimplemented');
}
