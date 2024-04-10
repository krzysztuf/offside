import 'package:collection/collection.dart';
import 'package:offside/domain/entities/bet.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:offside/domain/entities/user.dart';
import 'package:offside/domain/usecases/matches/match_use_case_providers.dart';
import 'package:offside/domain/usecases/users/user_use_case_providers.dart';
import 'package:offside/presentation/pages/home/table_sub_page/main_table_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'main_table_controller.g.dart';

@riverpod
class MainTableController extends _$MainTableController {
  @override
  MainTableState build() {
    _loadUserBetsAndCalculatePoints();
    return const MainTableState(userScores: []);
  }

  void _loadUserBetsAndCalculatePoints() {
    final matchesFuture = ref.read(getAllMatchesUseCaseProvider).run();
    final usersFuture = ref.read(getAllUsersUseCaseProvider).run();

    Future.wait([matchesFuture, usersFuture]).then((values) async {
      final matches = values[0] as List<Match>;
      final users = values[1] as List<User>;

      final userBets = await _fetchBetsAndGroupByUser(users);
      final userPoints = _calculateUserPoints(matches, userBets);

      state = state.copyWith(userScores: userPoints);
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

  List<UserScores> _calculateUserPoints(List<Match> matches, Map<User, List<Bet>> userBets) {
    final matchesWithResult = matches.where((match) => match.result != null).toList();

    return userBets.entries.map((userAndBets) {
      final user = userAndBets.key;
      final bets = userAndBets.value;

      final userScores = UserScores(user);
      final totalPoints = bets.fold(0, (points, bet) {
        final match = matchesWithResult.firstWhereOrNull((match) => match.id == bet.matchId);
        if (match == null) {
          userScores.recentPredictionsScores.add(0);
          return points;
        }

        var pointsAwardedForThisMatch = match.pointsFor(prediction: bet.prediction);
        userScores.recentPredictionsScores.add(pointsAwardedForThisMatch);

        return points + pointsAwardedForThisMatch;
      });

      return userScores..totalScore = totalPoints;
    }).toList();
  }
}
