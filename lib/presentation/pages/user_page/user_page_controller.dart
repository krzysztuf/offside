import 'dart:developer';

import 'package:offside/domain/entities/user.dart';
import 'package:offside/domain/usecases/users/user_use_cases.dart';
import 'package:offside/presentation/pages/user_page/user_page_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_page_controller.g.dart';

@riverpod
class UserPageController extends _$UserPageController {
  @override
  UserPageState build() {
    log('building user page state');

    final user = ref.read(userOfUserPageProvider);

    log('current user: $user');
    log('fetching user bets');

    ref.read(getUserBetsUseCaseProvider(user)).run().then((bets) {
      log('bets: $bets');
    });

    return UserPageState(user: user, matches: [], loading: true);
  }
}

@riverpod
User userOfUserPage(UserOfUserPageRef ref) {
  throw UnimplementedError('userOfUserPage');
}
