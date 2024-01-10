import 'dart:developer';

import 'package:offside/domain/entities/bet.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'match_bet_card_states.dart';

part 'match_bet_card_view_model.g.dart';

@riverpod
class MatchBetCardViewModel extends _$MatchBetCardViewModel {
  @override
  MatchBetCardState build() {
    return MatchBetCardState(
      ref.read(currentCardBetProvider),
      ref.read(currentCardMatchProvider),
    );
  }

  Future<void> updateBet(Bet bet) async {
    log('bet updated');
  }
}

@riverpod
Bet currentCardBet(CurrentCardBetRef ref) {
  return throw UnimplementedError('currentCardBet unimplemented');
}

@riverpod
Match currentCardMatch(CurrentCardMatchRef ref) {
  return throw UnimplementedError('currentCardMatch unimplemented');
}
