import 'dart:developer';

import 'package:offside/domain/entities/user.dart';
import 'package:offside/domain/usecases/match/match_use_cases.dart';
import 'package:offside/domain/usecases/settings/reactive_settings_providers.dart';
import 'package:offside/domain/usecases/users/user_use_case_providers.dart';
import 'package:offside/presentation/pages/user/user_page_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_page_controller.g.dart';

@riverpod
class UserPageController extends _$UserPageController {
  @override
  Future<UserPageState> build() async {
    final user = ref.read(userOfUserPageProvider);

    log('UserPageController.build: user: $user');
    final currentUserId = ref.read(currentUserIdSettingProvider);
    log('UserPageController.build: currentUserId: $currentUserId');

    final bets = await ref.read(getUserBetsUseCaseProvider(user)).run();
    final allMatches = await ref.read(getUpcomingMatchesUseCaseProvider).run();

    return UserPageState(
      user: user,
      bets: bets,
      matches: allMatches,
    );
  }
}

@riverpod
User userOfUserPage(UserOfUserPageRef ref) {
  throw UnimplementedError('userOfUserPage');
}
