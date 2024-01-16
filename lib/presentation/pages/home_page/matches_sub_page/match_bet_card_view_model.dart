import 'package:offside/core/extensions/iterable_extensions.dart';
import 'package:offside/domain/entities/bet.dart';
import 'package:offside/domain/entities/goals.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:offside/domain/usecases/match/match_use_cases.dart';
import 'package:offside/domain/usecases/settings/reactive_settings_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'match_bet_card_state.dart';

part 'match_bet_card_view_model.g.dart';

@riverpod
class MatchBetCardViewModel extends _$MatchBetCardViewModel {
  @override
  MatchBetCardState build() {
    final match = ref.read(currentCardMatchProvider);
    if (!match.bets.hasValue) {
      match.bets.fetch().then((_) {
        final userId = ref.read(currentUserIdSettingProvider);
        final bet = match.bets.value.find((bet) => bet.userId == userId);

        state = state.copyWith(
          bet: bet,
          betState: bet != null ? BetState.placed : BetState.notPlaced,
        );
      });
    }

    return MatchBetCardState(match: match);
  }

  Future<void> updatePrediction(Goals prediction) async {
    if (prediction == state.bet!.prediction) {
      return;
    }

    state = state.copyWith(
      bet: await _createOrUpdateBet(prediction),
      betState: BetState.placed,
    );
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
      userId: ref.read(currentUserIdSettingProvider),
      prediction: prediction,
    );

    final id = await ref.read(placeBetUseCaseProvider(state.match)).run(bet);
    return bet.copyWith(id: id);
  }
}

@riverpod
Match currentCardMatch(CurrentCardMatchRef ref) {
  return throw UnimplementedError('currentCardMatch unimplemented');
}
