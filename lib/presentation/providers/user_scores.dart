import 'package:collection/collection.dart';
import 'package:offside/data/repositories/providers.dart';
import 'package:offside/domain/entities/bet.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:offside/domain/entities/user.dart';
import 'package:offside/domain/entities/user_score_summary.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_scores.g.dart';

@riverpod
class UserScores extends _$UserScores {
  @override
  FutureOr<List<UserScoreSummary>> build() {
    _loadUserBetsAndCalculatePoints();
    return [];
  }

  Future<void> refresh({Duration? delay}) async {
    if (delay != null) {
      await Future.delayed(delay);
    }

    _loadUserBetsAndCalculatePoints();
  }

  Future<void> _loadUserBetsAndCalculatePoints() async {
    state = const AsyncLoading();
    final winnerId = 0;

    try {
      final results = await Future.wait([
        ref.read(matchesRepositoryProvider).all(),
        ref.read(usersRepositoryProvider).all(),
        ref.read(betsRepositoryProvider).all(),
      ]);

      final matches = results[0] as List<Match>;
      final users = results[1] as List<User>;
      final bets = results[2] as List<Bet>;

      final sortedMatches = matches.sortedBy((m) => m.kickOffDate).toList();
      final userBets = _groupBetsByUser(users, bets);

      final sortedUserBets = _sortBets(sortedMatches, userBets);
      final userPoints = _calculateUserPoints(sortedMatches, sortedUserBets, winnerId);

      state = AsyncData(_sortByPoints(userPoints));
    } catch (e, stackTrace) {
      state = AsyncError(e, stackTrace);
    }
  }

  Map<User, List<Bet>> _groupBetsByUser(List<User> users, List<Bet> bets) {
    final betsByUserId = <int, List<Bet>>{};
    for (final bet in bets) {
      betsByUserId.putIfAbsent(bet.userId, () => []).add(bet);
    }

    return {for (final user in users) user: betsByUserId[user.id] ?? []};
  }

  List<UserScoreSummary> _calculateUserPoints(List<Match> matches, Map<User, List<Bet>> userBets, int winnerId) {
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

  List<UserScoreSummary> _sortByPoints(List<UserScoreSummary> userScore) {
    return [...userScore]..sort((a, b) => b.totalScore.compareTo(a.totalScore));
  }

  Map<User, List<Bet>> _sortBets(List<Match> sortedMatches, Map<User, List<Bet>> userBets) {
    final sortedUserBets = <User, List<Bet>>{};
    for (var userAndBets in userBets.entries) {
      final user = userAndBets.key;
      final bets = userAndBets.value;

      final sortedBets = bets.sortedBy((bet) {
        final match = sortedMatches.firstWhere((m) => m.id == bet.matchId);
        return match.kickOffDate;
      }).toList();

      sortedUserBets[user] = sortedBets;
    }

    return sortedUserBets;
  }
}
