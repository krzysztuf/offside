import 'package:offside/data/repositories/providers.dart';
import 'package:offside/domain/usecases/settings/reactive_settings_providers.dart';
import 'package:offside/domain/usecases/users/get_all_users.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'get_current_user.dart';

part 'user_use_cases.g.dart';

@riverpod
GetCurrentUser currentUserUseCase(CurrentUserUseCaseRef ref) {
  return GetCurrentUser(ref.read(usersRepositoryProvider), ref.watch(currentUserIdSettingProvider));
}

@riverpod
GetAllUsers allUsersUseCase(AllUsersUseCaseRef ref) {
  return GetAllUsers(ref.read(usersRepositoryProvider));
}
