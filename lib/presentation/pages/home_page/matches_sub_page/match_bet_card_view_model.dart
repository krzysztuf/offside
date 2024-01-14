import 'dart:developer';

import 'package:offside/domain/entities/bet.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:offside/domain/usecases/settings/reactive_settings_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'match_bet_card_state.dart';

part 'match_bet_card_view_model.g.dart';

@riverpod
class MatchBetCardViewModel extends _$MatchBetCardViewModel {
  @override
  MatchBetCardState build() {
    var match = ref.read(currentCardMatchProvider);
    if (!match.bets.hasValue) {
      match.bets.fetch().then((_) {
        final userId = ref.read(currentUserIdSettingProvider);
        log('user id: $userId');

        final betPlaced = match.bets.value.any((bet) => bet.userId == userId);
        state = state.copyWith(betState: betPlaced ? BetState.placed : BetState.notPlaced);
      });
    }

    return MatchBetCardState(match: match);
  }

  Future<void> updateBet(Bet bet) async {
    log('bet updated');
  }
}

@riverpod
Match currentCardMatch(CurrentCardMatchRef ref) {
  return throw UnimplementedError('currentCardMatch unimplemented');
}
