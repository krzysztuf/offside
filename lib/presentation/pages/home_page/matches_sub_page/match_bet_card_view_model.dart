import 'package:offside/core/extensions/iterable_extensions.dart';
import 'package:offside/domain/entities/bet.dart';
import 'package:offside/domain/entities/goals.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:offside/domain/usecases/settings/reactive_settings_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supercharged/supercharged.dart';

import 'match_bet_card_state.dart';

part 'match_bet_card_view_model.g.dart';

@riverpod
class MatchBetCardViewModel extends _$MatchBetCardViewModel {
  @override
  MatchBetCardState build() {
    final match = ref.read(currentCardMatchProvider);
    final userId = ref.watch(currentUserIdSettingProvider);

    _fetchBets(match, userId);

    return MatchBetCardState(match: match, loading: true);
  }

  Future<void> updatePrediction(Goals prediction) async {
    if (prediction == state.bet?.prediction) {
      return;
    }

    setLoading(true);

    await Future.delayed(2.seconds);

    state = state.copyWith(
      bet: await _createOrUpdateBet(prediction),
      betState: BetState.placed,
    );

    setLoading(false);
  }

  void _fetchBets(Match match, String userId) {
    match.bets.fetch().then((_) {
      final bet = match.bets.value.find((bet) => bet.userId == userId);

      var updatedState = state.copyWith(
        bet: bet,
        betState: bet != null ? BetState.placed : BetState.notPlaced,
        loading: false,
      );

      if (match.afterKickOff && bet == null) {
        updatedState = updatedState.copyWith(betState: BetState.expired);
      }

      state = updatedState;
    });
  }

  Future<Bet> _createOrUpdateBet(Goals prediction) async {
    if (state.bet != null) {
      return await _updateExistingBet(prediction);
    }

    return await _createNewBet(prediction);
  }

  Future<Bet> _updateExistingBet(Goals prediction) async {
    final bet = state.bet!.copyWith(prediction: prediction);
    // await ref.read(placeBetUseCaseProvider(state.match)).run(bet);
    return bet;
  }

  Future<Bet> _createNewBet(Goals prediction) async {
    final bet = Bet(
      userId: ref.read(currentUserIdSettingProvider),
      prediction: prediction,
    );

    // final id = await ref.read(placeBetUseCaseProvider(state.match)).run(bet);
    // return bet.copyWith(id: id);

    // final id = await ref.read(placeBetUseCaseProvider(state.match)).run(bet);
    return bet.copyWith(id: 'id');
  }

  void setLoading(bool loading) {
    state = state.copyWith(loading: loading);
  }
}

@riverpod
Match currentCardMatch(CurrentCardMatchRef ref) {
  return throw UnimplementedError('currentCardMatch unimplemented');
}
