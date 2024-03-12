import 'package:offside/data/repositories/providers.dart';
import 'package:offside/domain/entities/user.dart';
import 'package:offside/domain/usecases/settings/reactive_settings_providers.dart';
import 'package:offside/domain/usecases/users/get_all_users_use_case.dart';
import 'package:offside/domain/usecases/users/get_user_bets_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'get_current_user_use_case.dart';

part 'user_use_cases.g.dart';

@riverpod
GetCurrentUserUseCase getCurrentUserUseCase(GetCurrentUserUseCaseRef ref) {
  return GetCurrentUserUseCase(
    ref.read(usersRepositoryProvider),
    ref.watch(currentUserIdSettingProvider),
  );
}

@riverpod
GetAllUsersUseCase getAllUsersUseCase(GetAllUsersUseCaseRef ref) {
  return GetAllUsersUseCase(ref.read(usersRepositoryProvider));
}

@riverpod
GetUserBetsUseCase getUserBetsUseCase(GetUserBetsUseCaseRef ref, User user) {
  return GetUserBetsUseCase(ref.read(betsRepositoryProvider), user);
}
