import 'package:offside/core/extensions/iterable_extensions.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:offside/domain/entities/user_prediction.dart';
import 'package:offside/domain/usecases/users/user_use_case_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'match_bets_state.dart';

part 'match_bets_controller.g.dart';

@riverpod
class MatchBetsController extends _$MatchBetsController {
  @override
  MatchBetsState build() {
    final match = ref.read(matchOfBetsToShowProvider);
    match.bets.fetch(force: true).then((_) => buildUserPredictions(match));

    return MatchBetsState(match: match, loading: true);
  }

  Future<void> buildUserPredictions(Match match) async {
    final users = await ref.read(getAllUsersUseCaseProvider).run();
    final userPredictions = users.map((user) {
      final bet = match.bets.value.find((bet) => bet.userId == user.id);
      return UserPrediction(user: user, prediction: bet?.prediction);
    });

    state = MatchBetsState(
      match: match,
      bets: userPredictions.toList(),
      loading: false,
    );
  }
}

@riverpod
Match matchOfBetsToShow(Ref ref) {
  throw UnimplementedError('matchOfBetsToShow');
}
