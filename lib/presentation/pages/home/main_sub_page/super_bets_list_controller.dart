import 'package:offside/data/repositories/providers.dart';
import 'package:offside/domain/entities/bet.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:offside/domain/entities/user.dart';
import 'package:offside/domain/usecases/matches/match_use_case_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supercharged/supercharged.dart';

part 'super_bets_list_controller.g.dart';

@riverpod
class SuperBetsListController extends _$SuperBetsListController {
  @override
  Future<Map<Match, List<User>>> build() async {
    final results = await Future.wait([
      ref.read(usersRepositoryProvider).all(),
      ref.read(recentMatchesUseCaseProvider).run(),
      ref.read(betsRepositoryProvider).all(),
    ]);

    final usersList = results[0] as List<User>;
    final recentMatches = results[1] as List<Match>;
    final allBets = results[2] as List<Bet>;

    final users = usersList.associateBy((user) => user.id);
    final betsByMatchId = allBets.groupByMatchId();

    final result = recentMatches.associate((match) {
      final matchWithBets = match.copyWith(bets: betsByMatchId[match.id] ?? []);
      return MapEntry(match, matchWithBets.superBets.map((b) => users[b.userId]!).toList());
    });

    return result;
  }
}
