import 'package:offside/data/repositories/providers.dart';
import 'package:offside/domain/entities/user.dart';
import 'package:offside/domain/usecases/settings/reactive_settings_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'user_use_cases.dart';

part 'user_use_case_providers.g.dart';

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

@riverpod
GetLoggedInUserUseCase getLoggedInUserUseCase(GetLoggedInUserUseCaseRef ref) {
  return GetLoggedInUserUseCase(ref.read(authRepositoryProvider));
}

@riverpod
AddUserUseCase addUserUseCase(AddUserUseCaseRef ref) {
  return AddUserUseCase(ref.read(usersRepositoryProvider));
}
