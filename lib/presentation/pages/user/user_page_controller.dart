import 'package:offside/domain/entities/user.dart';
import 'package:offside/domain/usecases/matches/match_use_case_providers.dart';
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
    final teamFetches =
        matches.map((m) => [m.homeTeam.fetch(), m.awayTeam.fetch()]).fold(<Future<void>>[], (all, future) {
      return all..addAll(future);
    });

    await Future.wait(teamFetches);

    return UserPageState(
      user: user,
      bets: bets,
      matches: matches,
    );
  }
}

@riverpod
User userOfUserPage(UserOfUserPageRef ref) {
  throw UnimplementedError('userOfUserPage');
}
