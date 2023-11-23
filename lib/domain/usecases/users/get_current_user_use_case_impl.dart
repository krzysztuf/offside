import 'package:offside/core/preferences/app_preferences.dart';
import 'package:offside/data/repositories/providers.dart';
import 'package:offside/domain/models/user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'get_current_user_use_case.dart';

part 'get_current_user_use_case_impl.g.dart';

class GetCurrentUserUseCaseImpl extends GetCurrentUserUseCase {
  GetCurrentUserUseCaseImpl(super.repository);

  @override
  Future<User?> run() async {
    final userId = AppPreferences.currentUserId.value;
    if (userId == -1) {
      return null;
    }

    return await repository.byId(userId);
  }
}

@riverpod
GetCurrentUserUseCase getCurrentUserUseCase(GetCurrentUserUseCaseRef ref) {
  return GetCurrentUserUseCaseImpl(ref.read(usersRepositoryProvider));
}
