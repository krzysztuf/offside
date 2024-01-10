import 'package:offside/data/repositories/providers.dart';
import 'package:offside/domain/usecases/settings/reactive_settings_providers.dart';
import 'package:offside/domain/usecases/users/get_all_users_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'get_current_user_use_case.dart';

part 'user_use_cases.g.dart';

@riverpod
GetCurrentUserUseCase currentUserUseCase(CurrentUserUseCaseRef ref) {
  return GetCurrentUserUseCase(
    ref.read(usersRepositoryProvider),
    ref.watch(currentUserIdSettingProvider),
  );
}

@riverpod
GetAllUsersUseCase allUsersUseCase(AllUsersUseCaseRef ref) {
  return GetAllUsersUseCase(ref.read(usersRepositoryProvider));
}
