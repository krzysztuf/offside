import 'dart:developer';

import 'package:offside/domain/entities/bet.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'match_bet_card_states.dart';

part 'match_bet_card_view_model.g.dart';

@riverpod
class MatchBetCardViewModel extends _$MatchBetCardViewModel {
  @override
  MatchBetCardState build() {
    return MatchBetCardState(ref.read(currentCardBetProviderProvider));
  }

  Future<void> updateBet(Bet bet) async {
    log('bet updated');
  }
}

@riverpod
Bet currentCardBetProvider(CurrentCardBetProviderRef ref) {
  return throw UnimplementedError('Bet unavailable');
}
