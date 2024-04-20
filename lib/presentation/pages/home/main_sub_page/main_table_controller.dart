import 'package:collection/collection.dart';
import 'package:offside/domain/entities/bet.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:offside/domain/entities/user.dart';
import 'package:offside/domain/entities/user_score_summary.dart';
import 'package:offside/domain/usecases/matches/match_use_case_providers.dart';
import 'package:offside/domain/usecases/teams/teams_use_case_providers.dart';
import 'package:offside/domain/usecases/users/user_use_case_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'main_table_state.dart';

part 'main_table_controller.g.dart';

@riverpod
class MainTableController extends _$MainTableController {
  @override
  MainTableState build() {
    _loadUserBetsAndCalculatePoints();
    return const MainTableState(userScores: []);
  }

  Future<void> refresh() async {
    await _loadUserBetsAndCalculatePoints();
  }

  Future<void> _loadUserBetsAndCalculatePoints() async {
    final winnerId = await ref.read(getWinnerTeamIdUseCaseProvider).run();

    final matchesFuture = ref.read(getAllMatchesUseCaseProvider).run();
    final usersFuture = ref.read(getAllUsersUseCaseProvider).run();

    await Future.wait([matchesFuture, usersFuture]).then((values) async {
      final matches = values[0] as List<Match>;
      final users = values[1] as List<User>;

      final userBets = await _fetchBetsAndGroupByUser(users);
      final userPoints = _calculateUserPoints(matches, userBets, winnerId);

      state = state.copyWith(userScores: userPoints, winnerId: winnerId);
    });
  }

  Future<Map<User, List<Bet>>> _fetchBetsAndGroupByUser(List<User> users) async {
    final userBetsFutures = users.map((user) {
      return Future.wait([Future.value(user), ref.read(getUserBetsUseCaseProvider(user)).run()]);
    }).toList();

    final userBetsResults = await Future.wait(userBetsFutures);

    final Map<User, List<Bet>> userBets = {
      for (var result in userBetsResults) result[0] as User: result[1] as List<Bet>,
    };
    return userBets;
  }

  List<UserScoreSummary> _calculateUserPoints(List<Match> matches, Map<User, List<Bet>> userBets, String winnerId) {
    final matchesWithResult = matches.where((match) => match.finished).toList();

    return userBets.entries.map((userAndBets) {
      final user = userAndBets.key;
      final bets = userAndBets.value;

      final userScores = UserScoreSummary(user);
      userScores.totalScore = bets.fold(0, (points, bet) {
        final match = matchesWithResult.firstWhereOrNull((match) => match.id == bet.matchId);
        if (match == null) {
          return points;
        }

        var pointsAwardedForThisMatch = match.pointsFor(prediction: bet.prediction);
        userScores.recentPredictionsScores.add(pointsAwardedForThisMatch);

        return points + pointsAwardedForThisMatch;
      });

      if (winnerId == user.winnerPredictionId) {
        userScores.totalScore += 10;
      }

      return userScores;
    }).toList();
  }
}
