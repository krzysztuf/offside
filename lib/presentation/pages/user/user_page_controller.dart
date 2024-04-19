import 'package:offside/domain/entities/user.dart';
import 'package:offside/domain/usecases/matches/match_use_case_providers.dart';
import 'package:offside/domain/usecases/teams/teams_use_case_providers.dart';
import 'package:offside/domain/usecases/users/user_use_case_providers.dart';
import 'package:offside/presentation/pages/user/user_page_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_page_controller.g.dart';

@riverpod
class UserPageController extends _$UserPageController {
  @override
  Future<UserPageState> build() async {
    final user = ref.read(userOfUserPageProvider);
    final bets = await ref.read(getUserBetsUseCaseProvider(user)).run();
    final matches = await ref.read(getAllMatchesUseCaseProvider).run();

    final teamFetchers = matches
        .map((m) => [m.homeTeam.fetch(), m.awayTeam.fetch()])
        .fold(<Future<void>>[], (all, future) => all..addAll(future));

    await Future.wait(teamFetchers);

    final winnerId = await ref.read(getWinnerTeamIdUseCaseProvider).run();
    return UserPageState(
      user: user,
      bets: bets,
      matches: matches,
      winnerId: winnerId,
    );
  }
}

@riverpod
User userOfUserPage(UserOfUserPageRef ref) {
  throw UnimplementedError('userOfUserPage');
}
