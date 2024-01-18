import 'package:offside/core/extensions/iterable_extensions.dart';
import 'package:offside/domain/entities/bet.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:offside/domain/entities/user_prediction.dart';
import 'package:offside/domain/usecases/users/user_use_cases.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'match_bets_state.dart';

part 'match_bets_view_model.g.dart';

@riverpod
class MatchBetsViewModel extends _$MatchBetsViewModel {
  @override
  MatchBetsState build() {
    final match = ref.read(matchOfBetsToShowProvider);
    match.bets.fetch(force: true).then((_) => buildUserPredictions(match.bets.value));

    return const MatchBetsState(loading: true);
  }

  Future<void> buildUserPredictions(List<Bet> bets) async {
    final users = await ref.read(allUsersUseCaseProvider).run();
    final userPredictions = users.map((user) {
      final bet = bets.find((bet) => bet.userId == user.id);
      return UserPrediction(user: user, prediction: bet?.prediction);
    });

    state = MatchBetsState(loading: false, bets: userPredictions.toList());
  }
}

@riverpod
Match matchOfBetsToShow(MatchOfBetsToShowRef ref) {
  throw UnimplementedError('matchOfBetsToShow');
}
