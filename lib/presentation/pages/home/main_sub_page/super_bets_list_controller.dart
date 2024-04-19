import 'package:offside/domain/entities/match.dart';
import 'package:offside/domain/entities/user.dart';
import 'package:offside/domain/usecases/matches/match_use_case_providers.dart';
import 'package:offside/domain/usecases/users/user_use_case_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supercharged/supercharged.dart';

part 'super_bets_list_controller.g.dart';

@riverpod
class SuperBetsListController extends _$SuperBetsListController {
  @override
  Future<Map<Match, List<User>>> build() async {
    final usersList = await ref.read(getAllUsersUseCaseProvider).run();
    final users = usersList.associateBy((user) => user.id);

    final recentMatches = await ref.read(getRecentMatchesUseCaseProvider).run(true);
    final result = recentMatches.associate((match) {
      return MapEntry(match, match.superBets.map((b) => users[b.userId]!).toList());
    });

    return result;
  }
}
