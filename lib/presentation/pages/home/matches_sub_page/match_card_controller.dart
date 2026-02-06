import 'package:offside/core/extensions/iterable_extensions.dart';
import 'package:offside/domain/entities/bet.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:offside/domain/entities/match_outcome.dart';
import 'package:offside/data/repositories/providers.dart';
import 'package:offside/domain/usecases/matches/match_use_case_providers.dart';
import 'package:offside/domain/usecases/settings/reactive_settings_providers.dart';
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
    setLoading(true);

    final updatedMatch = state.match.copyWith(outcome: outcome);
    ref.read(updateMatchUseCaseProvider).run(updatedMatch);

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

    setLoading(true);

    state = state.copyWith(
      bet: await _createOrUpdateBet(prediction),
      betState: BetState.placed,
    );

    setLoading(false);
  }

  Future<void> removeMatch() async {
    ref.invalidate(matchesSubPageControllerProvider);
    return ref.read(matchesRepositoryProvider).remove(state.match);
  }

  Future<Bet> _createOrUpdateBet(MatchOutcome prediction) async {
    if (state.bet != null) {
      return await _updateExistingBet(prediction);
    }

    return await _createNewBet(prediction);
  }

  Future<Bet> _updateExistingBet(MatchOutcome prediction) async {
    final bet = state.bet!.copyWith(prediction: prediction);
    await ref.read(placeBetUseCaseProvider(state.match)).run(bet);
    return bet;
  }

  Future<Bet> _createNewBet(MatchOutcome prediction) async {
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
Match currentCardMatch(Ref ref) {
  throw UnimplementedError('currentCardMatch unimplemented');
}

@riverpod
List<Bet> currentCardBets(Ref ref) {
  throw UnimplementedError('currentCardBets unimplemented');
}
