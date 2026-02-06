import 'package:offside/data/repositories/providers.dart';
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
UploadUserAvatarUseCase uploadUserAvatarUseCase(Ref ref) {
  return UploadUserAvatarUseCase(
    ref.read(usersRepositoryProvider),
    ref.read(imageRepositoryProvider),
  );
}
