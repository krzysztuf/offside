import 'package:offside/core/preferences/app_preferences.dart';
import 'package:offside/domain/models/user.dart';

import 'get_current_user_use_case.dart';

class GetCurrentUserUseCaseImpl extends GetCurrentUserUseCase {
  GetCurrentUserUseCaseImpl(super.repository);

  @override
  Future<User?> run() async {
    final userId = AppPreferences.currentUserId.value;
    if (userId == null) {
      return null;
    }

    return await repository.byId(userId);
  }
}
