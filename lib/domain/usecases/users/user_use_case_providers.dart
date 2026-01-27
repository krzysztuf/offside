import 'package:offside/data/repositories/providers.dart';
import 'package:offside/domain/entities/user.dart';
import 'package:offside/domain/usecases/settings/reactive_settings_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'user_use_cases.dart';

part 'user_use_case_providers.g.dart';

@riverpod
GetCurrentUserUseCase getCurrentUserUseCase(Ref ref) {
  return GetCurrentUserUseCase(
    ref.read(usersRepositoryProvider),
    ref.watch(currentUserIdSettingProvider),
  );
}

@riverpod
GetAllUsersUseCase getAllUsersUseCase(Ref ref) {
  return GetAllUsersUseCase(ref.read(usersRepositoryProvider));
}

@riverpod
GetUserBetsUseCase getUserBetsUseCase(Ref ref, User user) {
  return GetUserBetsUseCase(ref.read(offsideRepositoryProvider), user);
}

@riverpod
GetLoggedInUserUseCase getLoggedInUserUseCase(Ref ref) {
  return GetLoggedInUserUseCase(ref.read(authRepositoryProvider));
}

@riverpod
AddUserUseCase addUserUseCase(Ref ref) {
  return AddUserUseCase(ref.read(usersRepositoryProvider));
}

@riverpod
RemoveUserUseCase removeUserUseCase(Ref ref) {
  return RemoveUserUseCase(ref.read(usersRepositoryProvider));
}

@riverpod
UpdateUserUseCase updateUserUseCase(Ref ref) {
  return UpdateUserUseCase(ref.read(usersRepositoryProvider));
}

@riverpod
UploadUserAvatarUseCase uploadUserAvatarUseCase(Ref ref) {
  return UploadUserAvatarUseCase(
    ref.read(usersRepositoryProvider),
    ref.read(imageRepositoryProvider),
  );
}

@riverpod
EmailIsWhiteListedUseCase emailIsWhiteListedUseCase(Ref ref) {
  return EmailIsWhiteListedUseCase(ref.read(authRepositoryProvider));
}
