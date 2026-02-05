import 'package:offside/data/repositories/providers.dart';
import 'package:offside/domain/entities/user.dart';
import 'package:offside/presentation/pages/user/user_page_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_page_controller.g.dart';

@riverpod
class UserPageController extends _$UserPageController {
  @override
  Future<UserPageState> build() async {
    final user = ref.read(userOfUserPageProvider);
    final bets = await ref.read(offsideRepositoryProvider).userBets(user);
    final matches = await ref.read(matchesRepositoryProvider).all();

    return UserPageState(
      user: user,
      bets: bets,
      matches: matches,
      winnerId: '',
    );
  }
}

@riverpod
User userOfUserPage(Ref ref) {
  throw UnimplementedError('userOfUserPage');
}
