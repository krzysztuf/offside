import 'package:offside/data/repositories/providers.dart';
import 'package:offside/domain/entities/bet.dart';
import 'package:offside/domain/entities/match.dart';
import 'package:offside/domain/entities/user.dart';
import 'package:offside/presentation/pages/user/user_page_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_page_controller.g.dart';

@riverpod
class UserPageController extends _$UserPageController {
  @override
  Future<UserPageState> build() async {
    final user = ref.read(userOfUserPageProvider);

    final results = await Future.wait([
      ref.read(betsRepositoryProvider).all(),
      ref.read(matchesRepositoryProvider).all(),
    ]);

    final allBets = results[0] as List<Bet>;
    final matches = results[1] as List<Match>;
    final userBets = allBets.where((bet) => bet.userId == user.id).toList();

    return UserPageState(
      user: user,
      bets: userBets,
      matches: matches,
      winnerId: 0,
    );
  }
}

@riverpod
User userOfUserPage(Ref ref) {
  throw UnimplementedError('userOfUserPage');
}
